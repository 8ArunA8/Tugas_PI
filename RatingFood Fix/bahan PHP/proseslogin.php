<?php 
@session_start(); //mulai session, krena kita akan menggunakan session pd file php ini
   include 'config.php'; //hubungkan dengan config.php untuk berhubungan dengan database
$username = @$_POST['username'];
	$password = @$_POST['password'];
	$login = @$_POST['login'];
	if($login) {
		if($username == "" || $password == "") {
	?> 
			<script type="text/javascript">alert("username / pass tidak boleh kosong"); </script> 
			
			<?php
			
		}else {
			$sql=mysql_query("select * from user where username = '$username' and '$password' ");
			$data = mysql_fetch_array($sql);
			$cek = mysql_num_rows($sql);

			if($cek>= 1) {
				if($data['level'] == "admin") {
					
					@$_SESSION['admin']== $data['id'];
						header("location: index.php");
				}else if($data['level'] == "user") {
					@$_SESSION['user']== $data['id'];
					header("location: index.php");
				
			}
		}else{
			echo "login gagal";
		}
		
		
		
	}
	}
		
	?>


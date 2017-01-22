<?php require_once("config.php");
<?php 
session_start(); 

?>


$foto =  $_POST['foto'] ;




$simpan = mysql_query("INSERT INTO user (foto) VALUES('$foto')");
if($simpan) {
echo "Pendaftaran Sukses, Silahkan <a href='login.php'>Login</a>";
} else {
echo "Proses Gagal!";
}


?>
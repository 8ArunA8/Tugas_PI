<?php require_once("config.php");
$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];
$foto = isset($_POST['foto']) ? $_POST[foto] : 'null';



$cekuser = mysql_query("SELECT * FROM user WHERE username = '$username'");
if(mysql_num_rows($cekuser) <> 0) {
echo "Username Sudah Terdaftar!";
echo "<a href='daftar.php'> &amp;amp;laquo; Back</a>";
} else {
if(!$username || !$password || !$email) {
echo "Masih ada data yang kosong!";
echo "<a href='daftar.php'>&amp;amp;laquo; Back</a>";
} else {
$simpan = mysql_query("INSERT INTO user (username, password, email,foto) VALUES('$username','$password','$email','$foto')");
if($simpan) {
echo "Pendaftaran Sukses, Silahkan <a href='login.php'>Login</a>";
} else {
echo "Proses Gagal!";
}
}
}
?>
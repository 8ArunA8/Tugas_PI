<?php require_once("config.php");
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));

$foto = isset($_POST['foto']) ? $_POST['foto'] : null;
$judul = $_POST['judul'];
$nama = $_POST['nama'];
$harga = $_POST['harga'];
$alamat = $_POST['alamat'];
$review = $_POST['review'];
if(!$foto|| !$judul|| !$nama|| !$harga|| !$alamat|| !$review) {
echo "Masih ada data yang kosong!";
echo "<a href='daftar.php'>&amp;amp;laquo; Back</a>";
} else {
$simpan = mysql_query("INSERT INTO review(foto, judul, nama, harga, alamat, review) VALUES('$foto','$judul','$nama','$harga','$alamat','$review')");
if($simpan) {
echo "Sukses, Silahkan <a href='login.php'>Login</a>";
} else {
echo "Proses Gagal!";
}
}

?>
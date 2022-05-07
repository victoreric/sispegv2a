<?php
include '../link.php';
$id=$_GET['id'];

$query="DELETE FROM login WHERE id_login='$id'";
$sql=mysqli_query($conn,$query);

if($sql){
	echo "<script> alert ('Data berhasil dihapus'); window.location='um.php'</script> ";
}else {
	echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='um.php'>Kembali Ke Form</a>";
}
?>

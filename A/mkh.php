<?php 
include '../link.php';

$id_mst_kualifikasi=$_GET['id'];

$query="DELETE FROM mst_kualifikasi where id_mst_kualifikasi='$id_mst_kualifikasi'";
$sql=mysqli_query($conn,$query);

if($sql){
    echo "<script> alert('Data kualifikasi berhasil dihapus.'); window.location='mk.php';  </script>";

}else{
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='mk.php'>Kembali Ke Form</a>";
  }
?>


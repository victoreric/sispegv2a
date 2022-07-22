<?php
include 'menuA.php';
include '../link.php';

$id_mst_jabatanf=$_GET['id'];

$query="DELETE FROM mst_jabatanf where id_mst_jabatanf='$id_mst_jabatanf'";
$sql=mysqli_query($conn,$query);

if($sql){ 
    echo "<script> alert('Data Jabatan berhasil dihapus'); window.location='mjf';  </script>";
}else{
     
    // Jika Gagal, Lakukan :
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='mjf'>Kembali Ke Form</a>";
  }
include '../footer.php';?>


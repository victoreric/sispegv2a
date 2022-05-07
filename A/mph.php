<?php
include 'menuA.php';
include '../link.php';

$id_mst_pendidikan=$_GET['id'];

$query="DELETE FROM mst_pendidikan where id_mst_pendidikan='$id_mst_pendidikan'";
$sql=mysqli_query($conn,$query);

if($sql){ // Cek jika proses simpan ke database sukses atau tidak
    // Jika Sukses, Lakukan : 
    echo "<script> alert('Data Pendidikan berhasil dihapus.'); window.location='mp.php';  </script>";
}else{
    // Jika Gagal, Lakukan :
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='mp.php'>Kembali Ke Form</a>";
  }
?>


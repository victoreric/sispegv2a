
<?php 
include '../link.php';

$id_mst_unit=$_GET['id'];

$query="DELETE FROM mst_unitkerja where id_mst_unit='$id_mst_unit'";
$sql=mysqli_query($conn,$query);

if($sql){ // Cek jika proses simpan ke database sukses atau tidak
    // Jika Sukses, Lakukan : 
    echo "<script> alert('Data unit kerja berhasil dihapus'); window.location='mu';  </script>";
}else{  
    // Jika Gagal, Lakukan :
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='mu'>Kembali Ke Form</a>";
  }
?>


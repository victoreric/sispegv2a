
<?php 
include '../link.php';

$id_mst_gol=$_GET['id'];

$query="DELETE FROM mst_golongan where id_mst_gol='$id_mst_gol'";
$sql=mysqli_query($conn,$query);


if($sql){ // Cek jika proses simpan ke database sukses atau tidak
    // Jika Sukses, Lakukan : 
    echo "<script> alert('Data Golongan berhasil dihapus.'); window.location='mg.php';  </script>";

}else{
     
    // Jika Gagal, Lakukan :
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='mg.php'>Kembali Ke Form</a>";
  }
?>


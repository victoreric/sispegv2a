<?php
session_start();
if(!isset($_SESSION['nama'])){
   echo "<script> alert('Anda Belum Login'); window.location='../index.php'; </script>";
} 

$level=$_SESSION['level'];
if($level!='1'){
   echo "<script> alert('Anda Tidak punya akses ke Halaman admin.'); window.location='../index.php'; </script>";
   exit;
}

include '../link.php';

$nip=$_GET['n'];

// delete user login
$queryU="DELETE FROM login WHERE user='$nip'";
$sqlU = mysqli_query($conn, $queryU); 


// delete file foto pegawai
$query = "SELECT * FROM dtawal WHERE nip='$nip'";
$sql = mysqli_query($conn, $query); 
$hasil = mysqli_fetch_array($sql); 

if(is_file("../assets/images/".$hasil['foto'])) 
  unlink("../assets/images/".$hasil['foto']);
  
// delete file sk pangkat
$query1 = "SELECT * FROM drpangkat WHERE nip=$nip";
$sql1 = mysqli_query($conn, $query1); 
while($hasil1 = mysqli_fetch_array($sql1)){
  if(is_file("../assets/skpangkat/".$hasil1['filesk'])) 
    unlink("../assets/skpangkat/".$hasil1['filesk']);
}
//Delete semua data pada tabel dtawal
$query2 = "DELETE FROM dtawal WHERE nip='$nip'";
$sql2 = mysqli_query($conn, $query2); 

if($sql2){ 
    echo "<script> alert('Data Pegawai berhasil dihapus.'); window.location='da.php';  </script>";
}
else{
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='da.php'>Kembali Ke Form</a>";
  }
?>


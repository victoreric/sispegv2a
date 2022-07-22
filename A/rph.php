<?php
session_start();
if(!isset($_SESSION['nama'])){
   echo "<script> alert('Anda Belum Login'); window.location='index'; </script>";
} 

$level=$_SESSION['level'];
if($level!='1'){
   echo "<script> alert('Anda Tidak punya akses ke Halaman admin.'); window.location='index'; </script>";
   exit;
}

include '../link.php';
$id=$_GET['id'];

$query = "SELECT * FROM drpangkat WHERE id_drpangkat=$id";
$sql = mysqli_query($conn, $query); 
$hasil = mysqli_fetch_array($sql);
$nip=$hasil['nip']; 

if(is_file("../assets/skpangkat/".$hasil['filesk'])) 
  unlink("../assets/skpangkat/".$hasil['filesk']);

$query2 = "DELETE FROM drpangkat WHERE id_drpangkat=$id";
$sql2 = mysqli_query($conn, $query2); 

if($sql2){ 
    echo "<script> alert('Data pangkat berhasil dihapus..!'); window.location='rpd?n=$nip';  </script>";
}
else{
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='rp'>Kembali Ke Form</a>";
  } 
?>


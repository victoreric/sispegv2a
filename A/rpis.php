<?php 
include '../link.php';

$nip=$_POST['nip'];
$golongan=$_POST['golongan'];
$ttd=$_POST['ttd'];
$nomor=$_POST['nomor'];
$tanggal=$_POST['tanggal'];

$filesk=$_FILES['foto']['name'];
$tmp = $_FILES['foto']['tmp_name'];
$unik=rand(0,10000);
$filesk_new = $unik.$filesk ;
$path = "../assets/skpangkat/".$filesk_new;

//to get extension file
// $imageFileType=strtolower(pathinfo($path, PATHINFO_EXTENSION));

// check file already exists
       if (file_exists($path)) {
           echo die ("<script> alert('Sorry, file already exists. Please change your file name.');window.location='rpi?n=$nip'</script> ");
       }
if(move_uploaded_file($tmp, $path)) 
{	
	$query=" INSERT INTO drpangkat (nip, golongan, pejabat, nomorsk, tanggalsk, filesk) VALUES ('$nip','$golongan','$ttd','$nomor','$tanggal', '$filesk_new')";
 	 $sql = mysqli_query($conn, $query); // Eksekusi/ Jalankan query dari variabel $query

  	if($sql)
  	{ 
   	  echo "<script> alert ('Berhasil menambahkan Riwayat Pangkat & Golongan Pegawai'); window.location='rpd?n=$nip'; </script>" ;
 	 }
  else
  {
    echo "Maaf, Terjadi Kesalahan..! Mohon perhatikan nama file, dan type file. Sesuaikan dengan aturan yang ditentukan";
    echo "<br><a href='rpd?n=$nip'>Kembali Ke Form</a>";
  }
  
}
else
{
  // Jika gambar gagal diupload, Lakukan :
  echo "Maaf, File gagal untuk diupload...";
  echo "<br><a href='rpd?n=$nip'>Kembali Ke Form</a>";
}

?>
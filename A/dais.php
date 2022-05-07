<?php 
include '../link.php';

$nip=$_POST['nip'];
$niplama=$_POST['niplama'];
$nidn=$_POST['nidn'];
$nama=$_POST['nama'];
$gelardepan=$_POST['gelardepan'];
$gelarbelakang=$_POST['gelarbelakang'];
$tanggallahir=$_POST['tanggallahir'];
$tempatlahir=$_POST['tempatlahir'];
$jeniskelamin=$_POST['jeniskelamin'];
$statuskeluarga=$_POST['statuskeluarga'];
$agama=$_POST['agama'];
$pendidikan=$_POST['pendidikan'];
$namasekolah=$_POST['namasekolah'];
$tahunlulus=$_POST['tahunlulus'];
$jurusan=$_POST['jurusan'];
$kualifikasi=$_POST['kualifikasi'];
$statuspegawai=$_POST['statuspegawai'];
$unitkerja=$_POST['unitkerja'];
$jabatanf=$_POST['jabatanf'];
$tmtjabatanf=$_POST['tmtjabatanf'];
$karpeg=$_POST['karpeg'];
$npwp=$_POST['npwp'];
$alamat=$_POST['alamat'];
$kota=$_POST['kota'];
$kodepos=$_POST['kodepos'];
$hp=$_POST['hp'];
$email=$_POST['email'];

$foto=$_FILES['foto']['name'];
$tmp = $_FILES['foto']['tmp_name'];
// $nipfoto=substr($nip,0,10);
$unik=rand(1,5000);
$fotobaru = $unik.$foto ;
$path = "../assets/images/".$fotobaru;


if(move_uploaded_file($tmp, $path)) 
{	
  $query = "INSERT INTO dtawal (nip, niplama, nidn, nama, gelardepan,gelarbelakang,tanggal_lahir, tempatlahir, jeniskelamin, statuskeluarga, agama, pendidikanakhir, namasekolah, tahunlulus, jurusan, kualifikasi, statuspegawai, unitkerja, jabatanf, tmtjabatanf, karpeg, npwp, alamat, kota, kodepos, hp, email, foto) VALUES ('$nip','$niplama','$nidn','$nama','$gelardepan','$gelarbelakang','$tanggallahir','$tempatlahir','$jeniskelamin','$statuskeluarga','$agama', '$pendidikan','$namasekolah','$tahunlulus','$jurusan','$kualifikasi','$statuspegawai', '$unitkerja', '$jabatanf','$tmtjabatanf','$karpeg','$npwp','$alamat','$kota','$kodepos','$hp','$email','$fotobaru')";

 	 $sql = mysqli_query($conn, $query); // Eksekusi/ Jalankan query dari variabel $query

  // forUserLogin
  $pass=md5($nip);
  $queryU="INSERT INTO login (nama,user,pass) VALUES ('$nama','$nip','$pass')";
  $sqlUser=mysqli_query($conn, $queryU);
  // endForUserLogin

  	if($sql)
  	{ 
   	  echo "<script> alert ('Berhasil menambahkan Data Pegawai'); window.location='dap.php?n=$nip'; </script>" ;
 	 }
  else
  {
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='dai.php'>Kembali Ke Form</a>";
  }
}
else
{
  // Jika gambar gagal diupload, Lakukan :
  echo "Maaf, Gambar gagal untuk diupload.";
  echo "<br><a href='dai.php'>Kembali Ke Form</a>";
}
?>


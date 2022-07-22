<?php include 'menuA.php'; 
include '../assets/cssvic/fungsi.php';
include '../link.php';
$id=$_GET['id'];

  $kueri="SELECT *, dtawal.nip 
  FROM drpangkat
  LEFT JOIN dtawal ON dtawal.nip=drpangkat.nip 
  WHERE id_drpangkat=$id";
  $cari=mysqli_query($conn,$kueri);
  $hasil1=mysqli_fetch_array($cari);

  $nip=$hasil1['nip'];
?>
<div class="container-fluid"> 
<div class="card">
  <div class="card-header text-center bg-primary text-white">Edit Data Riwayat Pangkat / Golongan Pegawai</div>
<div class="card-body" style="color:black">
<form action="" method="POST" enctype="multipart/form-data">
<div class="col-md-10">

  	<div class="form-group">
      <label >Nama Lengkap:</label>
      <input type="text" class="form-control" value="<?php  echo $hasil1['nama'] ?>" name="nama" readonly="readonly">
      <small  class="form-text text-muted">Nama tidak bisa diubah. Hubungi Staf Kepegawaian</small>
    </div>
      <div class="form-group">
      <label>NIP:</label>
      <input type="text" class="form-control"  value="<?php  echo $hasil1['nip'] ?>" name="nip" readonly="readonly">
      <small class="form-text text-muted">NIP tidak bisa diubah. Hubungi Staf Kepegawaian</small>
    </div>

   	
   	<div class="form-group">
      <label for='golongan' >Golongan / Pangkat</label>
      	<select name="golongan"  id='golongan' class="form-control" required  >
          <option value=''> -- Pilih Golongan --  </option>
          <?php 
		$query="SELECT nip, golongan From drpangkat where id_drpangkat=$id";
		$sql=mysqli_query($conn,$query);
		$hasil=mysqli_fetch_array($sql);

    
		$query2="SELECT * From mst_golongan";
		$sql2=mysqli_query($conn,$query2);
		while ($hasil2=mysqli_fetch_array($sql2))
		{ 
			if ($hasil['golongan']==$hasil2['id_mst_gol']) 
			{
			echo " <option value='".$hasil2['id_mst_gol'].  "' selected>".$hasil2['nama_gol']." ".$hasil2['pangkat']." </option>     ";
			}
			else 
			{
			echo "<option value='".$hasil2['id_mst_gol']."'>".$hasil2['nama_gol']." ".$hasil2['pangkat']."
			</option> ";
			}	
		}
		?>
    	</select> 
    </div>

    <div class="form-group">
      <label for='ttd'>Ditandatangani oleh:</label>
      <input type="text" id='ttd' class="form-control" name="ttd" value="<?php  echo $hasil1['pejabat'] ?>" required >
    </div>

     <div class="form-group">
      <label for='nomor' >Nomor SK:</label>
      <input type="text" id='nomor' class="form-control" name="nomor" value="<?php  echo $hasil1['nomorsk'] ?>" required  >
    </div>

     <div class="form-group">
      <label for='tanggal'>Tanggal SK:</label>
      <input type="date" id='tanggal' class="form-control" name="tanggal" value="<?php  echo $hasil1['tanggalsk'] ?>" required>
    </div>

    <?php $filesk=$hasil1['filesk'] ;?>

    <div class="form-group">
            <label for='file'>File SK  : </label> <br> 
            <?php echo $filesk;  echo "<br>" ?>
            <input type="checkbox" size="30px" name="ubahfilesk" value="true"> Ceklis jika ingin mengganti file SK<br>
            <input type="file" name="filesk" accept=".pdf" id='file'> 
                <p class="help-block bg-warning">
                   	<small>Catatan :</small> <br>
                    <small>- Pastikan file yang diupload bertipe *.PDF</small> <br>
                     <small>- Ukuran file SK max 500 Kb</small>
                </p>
    </div>

	<div class="table">
        <table align="center" >
        <td>  <input name="ubah"  class="btn btn-success btn-submit " type="submit" value="Simpan Perubahan"> </td>
        <td> &nbsp &nbsp  </td>

         <td> <a href="rpd?n=<?php  echo $nip ?>"><input class="btn btn-success btn-danger" type="button" value="Batal"></a> </td>
    </table>
</div>
</div>
  </form>
</div>
</div>
</div>

<?php 

if (isset($_POST['ubah'])) 
{
	$nip=$_POST['nip'];
	$golongan=$_POST['golongan'];
	$ttd=$_POST['ttd'];
	$nomor=$_POST['nomor'];
	$tanggal=$_POST['tanggal'];


   // Jika user tidak menceklis checkbox yang ada di form ubah, lakukan :
  // Proses ubah data ke Database
  if (!isset($_POST['ubahfilesk'])) {
    $query="UPDATE drpangkat SET 
      nip='$nip',
      golongan='$golongan',
      pejabat='$ttd',
      nomorsk='$nomor',
      tanggalsk='$tanggal'
        WHERE id_drpangkat = $id";
    $sql=mysqli_query($conn,$query); 
      if($sql)
      { 
    echo "<script> alert ('Data Riwayat Pangkat berhasil diubah');window.location='rpd?n=$nip';</script>"; 
    }
    else 
    {
      echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database";
              echo "<br><a href='rp'>Kembali Ke Form</a>";
    }
  }
  //jika user mau ubah filesk, menceklis checkbox yang ada di form ubah, lakukan :
  else {
    $filesk = $_FILES['filesk']['name'];
    $tmp = $_FILES['filesk']['tmp_name'];
    $unik=rand(0,10000);
    $filesk_new = $unik.$filesk ;
      // $fileskubah=substr($nip,0,8);
      // $fileskbaru = $fileskubah.$filesk;
    $path = "../assets/skpangkat/".$filesk_new;
        
      // check file already exists
       if (file_exists($path)) {
           echo die ("<script> alert('Sorry, file already exists. Please change your file name.');</script> ");
       }

        if(move_uploaded_file($tmp, $path))
         { 
            $query = "SELECT * FROM drpangkat WHERE id_drpangkat='".$id."'";
            $sql = mysqli_query($conn, $query); 
            $hasil = mysqli_fetch_array($sql); 
            
            if(is_file("../assets/skpangkat/".$hasil['filesk'])) 
              unlink("../assets/skpangkat/".$hasil['filesk']); 

                $query="UPDATE drpangkat SET 
                nip='$nip',
                golongan='$golongan',
                pejabat='$ttd',
                nomorsk='$nomor',
                tanggalsk='$tanggal',
                filesk='$filesk_new'
                  WHERE id_drpangkat = $id";
              $sql=mysqli_query($conn,$query); 
                if($sql)
                { 
              echo "<script> alert ('Data Riwayat Pangkat berhasil diubah');window.location='rpd?n=$nip';</script>"; 
              }
              else 
              {
                echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database";
                        echo "<br><a href='rpd?n=$nip'>Kembali Ke Form</a>";
              }
          }
    }

}
?>

<!-- scriptValidasiFileSize -->
<script type="text/javascript">
var uploadField = document.getElementById("file");
uploadField.onchange = function() {
    if(this.files[0].size > 500000){ // ini untuk ukuran 500KB, 1000000 untuk 1 MB.
       alert("Maaf. File Terlalu Besar ! Maksimal Upload 500 KB");
       this.value = "";
    };
};
</script> 


<?php include "../footer.php"; ?>
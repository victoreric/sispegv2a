<?php  include 'menuA.php'; 
  include '../assets/cssvic/fungsi.php';
  include '../link.php';

  $nip=$_GET['n'];


$query = "SELECT * FROM dtawal WHERE nip= $nip ";
	$sql = mysqli_query($conn,$query);
	$hasil = mysqli_fetch_array($sql);

	$nip=$hasil['nip'];
	$niplama=$hasil['niplama'];
	$nidn=$hasil['nidn'];
	$nama=$hasil['nama'];
	$gelardepan=$hasil['gelardepan'];
	$gelarbelakang=$hasil['gelarbelakang'];
	$tanggal_lahir=$hasil['tanggal_lahir'];
	$tempatlahir=$hasil['tempatlahir'];
	$jeniskelamin=$hasil['jeniskelamin'];
	$statuskeluarga=$hasil['statuskeluarga'];
	$agama=$hasil['agama'];
	$pendidikanakhir=$hasil['pendidikanakhir'];
	$namasekolah=$hasil['namasekolah'];
	$tahunlulus=$hasil['tahunlulus'];
	$jurusan=$hasil['jurusan'];
	$kualifikasi=$hasil['kualifikasi'];
	$statuspegawai=$hasil['statuspegawai'];
	$unitkerja=$hasil['unitkerja'];
	$jabatanf=$hasil['jabatanf'];
	$tmtjabatanf=$hasil['tmtjabatanf'];
	$karpeg=$hasil['karpeg'];
	$npwp=$hasil['npwp'];
	$alamat=$hasil['alamat'];
	$kota=$hasil['kota'];
	$kodepos=$hasil['kodepos'];
	$hp=$hasil['hp'];
	$email=$hasil['email'];
	$foto=$hasil['foto'];		
?>

<div class="container-fluid">
	<div class="card">
 	 <div class="card-header text-center bg-primary text-white">Edit data Pegawai</div>
 	<div class="card-body" style="color:black">
	<form method="POST" action="" enctype="multipart/form-data"> 	

  <div class="form-row">
    <div class="form-group col-md-4">
      <label for='nip'>NIP</label>
      <input name="nip" id='nip' type="number" class="form-control"  value="<?php echo $hasil['nip']; ?>" readonly='readonly' >
	    <!-- <small id=niphelp class="form-text text-muted">NIP tidak bisa diubah. Hubungi administrator</small> -->
    </div>

    <div class="form-group col-md-4">
      <label for='niplama'>NIP Lama</label>
      <input name="niplama" id='niplama' type="text" class="form-control"  value="<?php echo $niplama; ?>"  />
    </div>
   
    <div class="form-group col-md-4">
      <label for='nidn'>NIDN</label>
      <input name="nidn" id='nidn' type="text" class="form-control"  placeholder="NIDN khusus untuk Dosen" value="<?php echo $nidn; ?>" />
    </div>
  </div>

  <div class="form-row">
	    <div class="form-group col-md-7">
	      <label for='nama'>Nama Lengkap</label>
	      <input name="nama" id='nama' type="text" class="form-control"  placeholder="Nama" value="<?php echo $nama; ?>" required />
	    </div>
	    <div class="form-group col-md-2">
	      <label for='gelardepan'>Gelar Depan</label>
	      <input name="gelardepan" id='gelardepan' type="text" class="form-control" placeholder="Gelar Akademik " value="<?php echo $gelardepan; ?>" />
	    </div>
	    <div class="form-group col-md-3">
	      <label for='gelarb' >Gelar Belakang</label>
	      <input name="gelarbelakang" id='gelarb' type="text" class="form-control" placeholder="ex : ST. / S.Si. / MA. " value="<?php echo $gelarbelakang; ?>" />
		</div>
	</div> 

<div class="form-row">   
	<div class="form-group col-md-3">
      <label for='tempatlahir'>Tempat Lahir</label>
      <input name="tempatlahir" id='tempatlahir' type="text" class="form-control"  placeholder="Kota Kelahiran" value="<?php echo $tempatlahir; ?>" required>
    </div>
    <div class="form-group col-md-3">
      <label for='tanggallahir'>Tanggal Lahir</label>
      <input name="tanggal_lahir" id='tanggallahir' type="date" class="form-control"  placeholder="Tanggal Lahir" value="<?php echo $tanggal_lahir; ?>" required>
    </div>
    <div class="form-group col-md-3">
      <label for='jk'>Jenis Kelamin</label>
     	<select name="jeniskelamin" id='jk' class="form-control" required>
	     	<option value=''>-- Pilih Jenis Kelamin --</option>
			<option value="Laki-Laki" <?php if ($hasil['jeniskelamin']=='Laki-Laki') { echo 'selected'; }?> > Laki-Laki </option>
        	<option value="Perempuan" <?php if ($hasil['jeniskelamin']=='Perempuan') { echo 'selected'; }?>> Perempuan </option>
   		</select>
    </div>
	<div class="form-group col-md-3">
		<label for='agama'>Agama</label>
		<select name="agama" id='agama' class="form-control" required >
          <option value=''> --Pilih agama--  </option>
          <option value="Islam" <?php if ($agama=='Islam') { echo 'selected'; }?> > Islam </option>
          <option value="Katolik" <?php if ($agama=='Katolik') { echo 'selected'; }?> > Katolik </option>
          <option value="Protestan" <?php if ($agama=='Protestan') { echo 'selected'; }?> > Protestan </option>
          <option value="Buddha" <?php if ($agama=='Buddha') { echo 'selected'; }?> > Buddha </option>
          <option value="Hindu" <?php if ($agama=='Hindu') { echo 'selected'; }?> > Hindu </option>
          <option value="Khonghucu" <?php if ($agama=='Khonghucu') { echo 'selected'; }?> > Khonghucu </option>
      </select>
	</div>
</div>

<div class="form-row">
    <div class="form-group col-md-3">
      <label for='kualifikasi'>Kualifikasi</label>
      <select name="kualifikasi" id='kualifikasi' class="form-control" style="width: 250px" required >
	    <option value=''> -- Pilih Kualifikasi --  </option>
		<?php
		$querykua="SELECT kualifikasi From dtawal where nip=$nip";
		$sqlkua=mysqli_query($conn,$querykua);
		$hasilkua=mysqli_fetch_array($sqlkua);
		
		$query2="SELECT * From mst_kualifikasi";
		$sql2=mysqli_query($conn,$query2);
		while ($hasil2=mysqli_fetch_array($sql2))
		{ 
			if ($hasilkua['kualifikasi']==$hasil2['id_mst_kualifikasi']) 
			{
			echo " <option value='".$hasil2['id_mst_kualifikasi'].  "' selected>".$hasil2['kualifikasi']. "</option>     ";
			}
			else 
			{
			echo "<option value='".$hasil2['id_mst_kualifikasi']."'>".$hasil2['kualifikasi']."</option> ";
			}	
		}
		?>
	   </select> 
	</div>
	
	<div class="form-group col-md-3">
      <label for='statuspegawai' >Status Pegawai</label>
    	<select name="statuspegawai" id='statuspegawai' class="form-control"  required >
    		<option value=''> -- Pilih status pegawai--  </option>
				<?php 
				$querysta="SELECT statuspegawai From dtawal where nip=$nip";
				$sqlsta=mysqli_query($conn,$querysta);
				$hasilsta=mysqli_fetch_array($sqlsta);
				
				$query2="SELECT * From mst_status";
				$sql2=mysqli_query($conn,$query2);
				while ($hasil2=mysqli_fetch_array($sql2))
				{ 
					if ($hasilsta['statuspegawai']==$hasil2['id_mst_status']) 
					{
					echo " <option value='".$hasil2['id_mst_status']."' selected>".$hasil2['status']. "</option>";
					}
					else 
					{
					echo "<option value='".$hasil2['id_mst_status']."'>".$hasil2['status']."     </option> ";
					}	
				}
				?>
   		</select>
    </div>

	<div class="form-group col-md-3">
		<label for='karpeg'>Nomor Kartu Pegawai</label>
		<input type="text" name="karpeg" id='karpeg'class="form-control" placeholder="Karpeg" value="<?php echo $karpeg; ?>" required />
	</div>
			
	<div class="form-group col-md-3">
	<label for='statuskeluarga'>Status Keluarga</label>
	<select name="statuskeluarga" id='statuskeluarga' class="form-control" required >
        <option value=''>--Pilih status keluarga--</option>
		<option value="Belum Nikah" <?php  if ($statuskeluarga=='Belum Nikah') { echo 'selected'; }?> > Belum Nikah </option>
        <option value="Nikah" <?php if ($statuskeluarga=='Nikah') { echo 'selected'; }?> >Nikah </option>
        <option value="Duda" <?php if ($statuskeluarga=='Duda') { echo 'selected'; }?> >Duda </option>
        <option value="Janda" <?php if ($statuskeluarga=='Janda') { echo 'selected'; }?> >Janda </option>
      </select>
	</div>
</div>

<div class="form-row">
<div class="form-group col-md-3">
      <label for='pendidikan'>Pendidikan Terakhir</label>
      <select name="pendidikan" id='pendidikan' class="form-control" required >
            <option value=''> -- Pilih  Pendidikan--  </option>
            <?php 
		$query="SELECT pendidikanakhir From dtawal where nip=$nip";
		$sql=mysqli_query($conn,$query);
		$hasil=mysqli_fetch_array($sql);
		
		$query2="SELECT * FROM mst_pendidikan";
		$sql2=mysqli_query($conn,$query2);
		while ($hasil2=mysqli_fetch_array($sql2))
		{ 
			if ($hasil['pendidikanakhir']==$hasil2['id_mst_pendidikan']) 
			{
			echo " <option value='".$hasil2['id_mst_pendidikan'].  "' selected>".$hasil2['jenjang']."  </option>     ";
			}
			else 
			{
			echo "<option value='".$hasil2['id_mst_pendidikan']."'>".$hasil2['jenjang']." 
			</option> ";
			}	
		}
		?>
      </select>
    </div>
	<div class="form-group col-md-3">
      <label for='sekolah'>Nama Sekolah/ Universitas</label>
      <input class="form-control" id='sekolah' type="text" name="namasekolah" value='<?php echo $namasekolah;   ?>' required />
    </div>
    <div class="form-group col-md-3">
	     <label for='jurusan'>Jurusan</label>
	      <input name="jurusan" id='jurusan' type="text" class="form-control" value='<?php echo $jurusan;  ?>' required/>
	    </div> 
      <div class="form-group col-md-3">
        <label for='thnlulus' >Tahun Lulus</label>
        <input name="tahunlulus" id='thnlulus' type="date" class="form-control" value='<?php echo $tahunlulus; ?>'  required />
      </div>
</div>

<div class="form-row"> 
<div class="form-group col-md-4">
		<label for='unitkerja'>Unit Kerja</label>
    <select name="unitkerja" id='unitkerja' class="form-control" required >
	<option value=''> -- Pilih Unit Kerja -- </option>
          <?php 
				$query="SELECT unitkerja FROM dtawal where nip=$nip";
				$sql=mysqli_query($conn,$query);
				$hasil=mysqli_fetch_array($sql);


     		$query2="SELECT * From mst_unitkerja";
			$sql2= mysqli_query($conn,$query2);
			while ($hasil2 = mysqli_fetch_array($sql2))
			{
				if($hasil['unitkerja']==$hasil2['id_mst_unit']){
					echo "<option value='".$hasil2['id_mst_unit']."'selected>" .$hasil2['subunit']." </option> ";
				}
				else {
					echo "<option value='".$hasil2['id_mst_unit']." '>".$hasil2['subunit']." </option>";
				}
     		}
     	?>
    </select>
	</div>

	<div class="form-group col-md-4">
	      <label for='jabatanf'>Jabatan Fungsional</label>
		<select name="jabatanf" id='jabatanf' class="form-control" required>
          <option value=''> -- Pilih jabatan --  </option>

          <?php 
		$query="SELECT jabatanf From dtawal where nip=$nip";
		$sql=mysqli_query($conn,$query);
		$hasil=mysqli_fetch_array($sql);
		
		$query2="SELECT * From mst_jabatanf";
		$sql2=mysqli_query($conn,$query2);
		while ($hasil2=mysqli_fetch_array($sql2))
		{ 
			if ($hasil['jabatanf']==$hasil2['id_mst_jabatanf']) {
				echo " <option value='".$hasil2['id_mst_jabatanf'].  "' selected>".$hasil2['nama_jabatanf']."</option>";
			}
			else 
			{
			echo "<option value='".$hasil2['id_mst_jabatanf']."'>".$hasil2['nama_jabatanf']." 
			</option> ";
			}	
		}
		?>
     	</select>
	</div>

  <div class="form-group col-md-4">
    <label for='tmtjabatanf'>TMT Jab. Fungsional</label>
    <input type="date" id='tmtjabatanf' name="tmtjabatanf" class="form-control" value='<?php echo $tmtjabatanf ;?>' required />
  </div>
</div>	

<div class="form-row">
	<div class="form-group col-md-4">
		<label for='npwp'>NPWP</label>
		<input type="text" id='npwp' name="npwp" class="form-control" placeholder="NPWP" value="<?php echo $npwp; ?>" required />
	</div>

    <div class="form-group col-md-4">
	      <label for='hp'>Handphone</label>
	      <input name="hp" id='hp' type="number" class="form-control"  placeholder="Nomor HP" value="<?php echo $hp; ?>" required />
	 </div>
	<div class="form-group col-md-4">
	      <label for="email">Email</label>
	      <input name="email" id='email' type="email" class="form-control"  placeholder="Email" value="<?php echo $email; ?>" required />
	</div>  
</div>    

<div class="form-row">
	<div class="form-group col-md-4">
	      <label for='alamat' >Alamat </label>
	      <input name="alamat" id='alamat' type="text" class="form-control" placeholder="Alamat" value="<?php echo $alamat; ?>" required />
	    </div>

	    <div class="form-group col-md-4">
	      <label  for='kota'>Kota</label>
	      <input name="kota" id='kota' type="text" class="form-control" placeholder="Kota" value="<?php echo $kota ; ?>" required  />
	    </div>

	    <div class="form-group col-md-4">
	     <label for='kodepos'>Kode Pos</label>
	      <input name="kodepos" id='kodepos' type="text" class="form-control" placeholder="Kode Pos" value="<?php echo $kodepos; ?>" required />
	    </div> 
</div>

<div class="form-row">		
	<div class="form-group">
     <label  for="file">Foto  : </label> <br> 
	<?php  echo "<img src ='../assets/images/".$foto."' width='150' height='200'> " ?> <br>
    <input type="checkbox" size="30px" name="ubahfoto" value="true"> Ceklis jika ingin mengubah foto<br>
    <input type="file" id='file' name="foto" accept="image/*">
    <p class="help-block bg-warning">
    <small>Catatan :</small> <br>
	<small>- Pastikan file yang diupload bertipe *.JPG ; *.PNG ; *.JPEG </small> <br>
    <small>- Ukuran file foto max 500 Kb</small>
    </p>
	</div>
</div>

<div class="form-row">
<div class="form-group">
    <div class="table">
        <table align="center" >
        <td>  <input name="ubah"  class="btn btn-success btn-submit" type="submit" value="Simpan Perubahan"> </td>
        <td> &nbsp &nbsp  </td>

         <td> <a href="da.php"><input class="btn  btn-danger" type="button" value="Batal"></a> </td>
		</table>
	</div>
</div>
</div>
	
</form>
</div>
</div>


<?php 
if (isset($_POST['ubah']))
{
	$nip=$_GET['n'];
	$niplama=$_POST['niplama'];
	$nidn=$_POST['nidn'];
	$nama=$_POST['nama'];
	$gelardepan=$_POST['gelardepan'];
	$gelarbelakang=$_POST['gelarbelakang'];
	$tempatlahir=$_POST['tempatlahir'];
	$tanggal_lahir=$_POST['tanggal_lahir'];
	
	$jeniskelamin=$_POST['jeniskelamin'];
	
	$agama=$_POST['agama'];
	$kualifikasi=$_POST['kualifikasi'];
	$statuspegawai=$_POST['statuspegawai'];
	$karpeg=$_POST['karpeg'];
	$statuskeluarga=$_POST['statuskeluarga'];
	$pendidikan=$_POST['pendidikan'];
	$namasekolah=$_POST['namasekolah'];
	$jurusan=$_POST['jurusan'];
	$tahunlulus=$_POST['tahunlulus'];
	$unitkerja=$_POST['unitkerja'];
	$jabatanf=$_POST['jabatanf'];
	$tmtjabatanf=$_POST['tmtjabatanf'];
	$npwp=$_POST['npwp'];
	$hp=$_POST['hp'];
	$email=$_POST['email'];
	$alamat=$_POST['alamat'];
	$kota=$_POST['kota'];
	$kodepos=$_POST['kodepos'];

		if(isset($_POST['ubahfoto']))
		{ 
            $foto=$_FILES['foto']['name'];
            $tmp = $_FILES['foto']['tmp_name'];
            
            $unik=rand(1,5000);
            $fotobaru = $unik.$foto ;

            $path = "../assets/images/".$fotobaru;

			//to get extension file
			$imageFileType=strtolower(pathinfo($path, PATHINFO_EXTENSION));
	
			// check file already exists
				if (file_exists($path)) {
					echo die ("<script> alert('Sorry, file already exists. Please change your file name.')</script> ");
				}
		 
		  if(move_uploaded_file($tmp, $path))
		 { 
		    $query = "SELECT * FROM dtawal WHERE nip='$nip'";
		    $sql = mysqli_query($conn, $query); 
		    $hasil = mysqli_fetch_assoc($sql); 
		    
		    if(is_file("../assets/images/".$hasil['foto'])) 
		      unlink("../assets/images/".$hasil['foto']); 	

			$query = "UPDATE dtawal SET 
				niplama='$niplama',
				nidn='$nidn',
				nama='$nama',
				gelardepan='$gelardepan',
				gelarbelakang='$gelarbelakang',
				tanggal_lahir='$tanggal_lahir',
				tempatlahir='$tempatlahir',
				jeniskelamin='$jeniskelamin',
				statuskeluarga='$statuskeluarga',
				agama='$agama',
				pendidikanakhir='$pendidikan', 
				namasekolah='$namasekolah', 
				tahunlulus='$tahunlulus', 
				jurusan='$jurusan',
				kualifikasi='$kualifikasi',
				statuspegawai='$statuspegawai',
				unitkerja='$unitkerja', 
				jabatanf='$jabatanf', 
				tmtjabatanf='$tmtjabatanf',
				karpeg='$karpeg',
				npwp='$npwp',
				alamat='$alamat',
				kota='$kota',
				kodepos='$kodepos',
				hp='$hp',
				email='$email',
				foto='$fotobaru' 
				WHERE nip = '$nip'";
			$sql = mysqli_query($conn,$query);

			if($sql)
			{    
	          echo "<script> alert ('Data Pegawai  berhasil diubah');window.location='dap.php?n=$nip';</script>"; 
	        }
	      else {
	            echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database";
	            echo "<br><a href='dae.php'>Kembali Ke Form</a>";
	            }    
     	}
     }

else
{ // Jika user tidak menceklis checkbox yang ada di form ubah, lakukan :
  // Proses ubah data ke Database
  $query = "UPDATE dtawal SET
				niplama='$niplama',
				nidn='$nidn',
				nama='$nama',
				gelardepan='$gelardepan',
				gelarbelakang='$gelarbelakang',
				tanggal_lahir='$tanggal_lahir',
				tempatlahir='$tempatlahir',
				jeniskelamin='$jeniskelamin',
				statuskeluarga='$statuskeluarga',
				agama='$agama',
				pendidikanakhir='$pendidikan', 
				namasekolah='$namasekolah', 
				tahunlulus='$tahunlulus', 
				jurusan='$jurusan',
				kualifikasi='$kualifikasi',
				statuspegawai='$statuspegawai',
				unitkerja='$unitkerja', 
				jabatanf='$jabatanf', 
				tmtjabatanf='$tmtjabatanf',
				karpeg='$karpeg',
				npwp='$npwp',
				alamat='$alamat',
				kota='$kota',
				kodepos='$kodepos',
				hp='$hp',
				email='$email' 
				WHERE nip ='$nip'";
	$sql = mysqli_query($conn,$query);
	 	if($sql)
	  	{ 
		echo "<script> alert ('Data Pegawai  berhasil diubah');window.location='dap.php?n=$nip';</script>"; 
		}
		else 
		{
			echo "<script> alert ('Maaf, Terjadi KEGAGALAN saat mencoba untuk menyimpan data ke database');window.location='';</script>"; 
		}
}
}
?>
</form>
</div>

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

<?php include '../footer.php' ?>
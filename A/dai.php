<?php  include 'menuA.php'; 
  include '../assets/cssvic/fungsi.php';
  include '../link.php';
?>
<div class="container-fluid">
<div class="card mb-5">
  <div class="card-header text-center bg-primary text-white">Input data Pegawai</div>
  <div class="card-body" style="color:black">
<form method="POST" action="dais" enctype="multipart/form-data"> 	
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for='nip' >NIP</label>
      <input name="nip" id='nip' type="number" class="form-control"  placeholder="Nip" min="1" required />
    </div>
    <div class="form-group col-md-4">
      <label for='niplama'>NIP Lama</label>
      <input name="niplama" id='niplama' type="number" class="form-control"  placeholder="Nip Lama" min="1" >
    </div>
    <div class="form-group col-md-4">
      <label for='nidn'>NIDN</label>
      <input name="nidn" id='nidn' type="text" class="form-control"  placeholder="NIDN khusus untuk Dosen" >
    </div>
  </div>

	<div class="form-row">
	    <div class="form-group col-md-7">
	      <label for='nama' >Nama Lengkap</label>
	      <input name="nama" id='nama' type="text" class="form-control"  placeholder="Nama" required />
	    </div>
	    <div class="form-group col-md-2">
	      <label for='gelardepan'>Gelar Depan</label>
	      <input name="gelardepan" id='gelardepan' type="text" class="form-control" placeholder="Gelar Akademik " >
	    </div>
	    <div class="form-group col-md-3">
	      <label for='gelarbelakang'>Gelar Belakang</label>
	      <input name="gelarbelakang" id='gelarbelakang' type="text" class="form-control" placeholder="ex : ST. / S.Si. / MA. " >
		</div>
	</div> 

<div class="form-row">   
	<div class="form-group col-md-3">
      <label for='tempatlahir'>Tempat Lahir</label>
      <input name="tempatlahir" id='tempatlahir' type="text" class="form-control"  placeholder="Kota Kelahiran" required  />
    </div>
    <div class="form-group col-md-3">
      <label for='tanggallahir'>Tanggal Lahir</label>
      <input name="tanggallahir" id='tanggallahir' type="date" class="form-control"  placeholder="Tanggal Lahir" required/>
    </div>
    <div class="form-group col-md-3">
      <label for='jk' >Jenis Kelamin</label>
     	<select name="jeniskelamin" id='jk' class="form-control" required >
	     <option value=''>-- Pilih Jenis Kelamin --</option>
	     <option> Laki-Laki </option>
	     <option> Perempuan </option>
   		</select>
    </div>

<div class="form-group col-md-3">
		<label for='agama'>Agama</label>
		<select name="agama" id='agama' class="form-control" required>
            <option value=''> --Pilih--  </option>
            <option> Islam </option>
            <option> Katolik  </option>
            <option> Protestan </option>
            <option> Buddha </option>
            <option> Hindu </option>
            <option> Khonghucu </option>
        </select>
	</div>
</div>
<div class="form-row">
    <div class="form-group col-md-3">
      <label for='kualifikasi'>Kualifikasi</label>
      <select name="kualifikasi" id='kualifikasi' class="form-control" style="width: 250px" name="kualifikasi" required>
	      	<option value=''> -- Pilih Kualifikasi --  </option>
		      	<?php 
					$query="SELECT * From mst_kualifikasi";
					$sql= mysqli_query($conn,$query);
					while ($hasil = mysqli_fetch_array($sql))
					{
					  echo "<option value='".$hasil['id_mst_kualifikasi']."' >" .$hasil['kualifikasi']. "</option>";
     			 	}
     			 ?>
	   </select> 
	</div>
	
	<div class="form-group col-md-3">
      <label for='statuspeg' >Status Pegawai</label>
      	<select name="statuspegawai" id='statuspeg'class="form-control" required >
          <option value=''> -- Pilih Status --  </option>
        <?php 
          $query="SELECT * From mst_status";
          $sql= mysqli_query($conn,$query);
          while ($hasil = mysqli_fetch_array($sql))
          {
            echo "<option value='" .$hasil['id_mst_status']. "'>" .$hasil['status']. "</option>";
            }
           ?>
     </select>
 </div>
 <div class="form-group col-md-3">
		<label for='karpeg'>Nomor Kartu Pegawai</label>
		<input type="text" id='karpeg' name="karpeg" class="form-control" placeholder="Karpeg" required />
	</div>	
    <div class="form-group col-md-3">
        <label for='statuskel' >Status Keluarga</label>
        <select name="statuskeluarga" id='statuskel'class="form-control" required>
          <option value=''> --Pilih--  </option>
          <option> Belum Nikah </option>
          <option> Nikah  </option>
          <option> Duda </option>
          <option> Janda </option>
        </select>
  </div>
</div>

<div class="form-row">  
  <div class="form-group col-md-3">
      <label for='pendidikan'>Pendidikan Terakhir</label>
      <select name="pendidikan" id='pendidikan' class="form-control" required>
            <option value=''> -- Pilih  Pendidikan--  </option>
            <?php 
            $query="SELECT * From mst_pendidikan";
            $sql= mysqli_query($conn,$query);
            while ($hasil = mysqli_fetch_array($sql))
            {
              echo "<option value='".$hasil['id_mst_pendidikan']."'>" .$hasil['jenjang']."</option>";
              }
            ?>
        </select>
    </div>
    <div class="form-group col-md-3">
      <label for='sekolah'>Nama Sekolah/ Universitas</label>
      <input class="form-control" id='sekolah' type="text" name="namasekolah" required />
    </div>
    <div class="form-group col-md-3">
	     <label for='jurusan'>Jurusan</label>
	      <input name="jurusan" id='jurusan' type="text" class="form-control" placeholder="Jurusan"  required/>
	    </div> 
      <div class="form-group col-md-3">
        <label for='thnlulus'>Tahun Lulus</label>
        <input name="tahunlulus" id='thnlulus' type="date" class="form-control" required />
      </div>
</div>

<div class="form-row">  
	<div class="form-group col-md-4">
		<label for='unitkerja'>Unit Kerja</label>
    <select name="unitkerja" id='unitkerja' class="form-control" required >
	      	<option value=''> -- Pilih Unit Kerja --  </option required>
          <?php 
     					$query="SELECT * From mst_unitkerja";
					$sql= mysqli_query($conn,$query);
					while ($hasil = mysqli_fetch_array($sql))
					{
					  echo "<option value='".$hasil['id_mst_unit'] ."'>".$hasil['subunit']. "</option>";
     			 	}
     			 ?>
    </select>
	</div>

  <div class="form-group col-md-4">
	      <label for='jabatanf' >Jabatan Fungsional</label>
		<select name="jabatanf" id='jabatanf' class="form-control" required>
          <option value=''> -- Pilih jabatan --  </option>
          <?php 
          $query="SELECT * From mst_jabatanf";
          $sql= mysqli_query($conn,$query);
          while ($hasil = mysqli_fetch_array($sql))
          {
            echo "<option value='".$hasil['id_mst_jabatanf']."'>" .$hasil['nama_jabatanf']."</option>";
            }
          ?>
     	</select>
	</div>
  <div class="form-group col-md-4">
    <label for='tmtjabatanf'>TMT Jab. Fungsional</label>
    <input type="date" id='tmtjabatanf' name="tmtjabatanf" class="form-control" required />
  </div>	
</div> 
   
<div class="form-row">
    <div class="form-group col-md-4">
        <label for='npwp'>NPWP</label>
        <input type="text" id='npwp' name="npwp" class="form-control" placeholder="NPWP" required />
      </div>
    	<div class="form-group col-md-4">
	      <label for='hp' >Handphone</label>
	      <input name="hp" id='hp' type="tel" class="form-control"  placeholder="Nomor HP" required />
	    </div>
	    <div class="form-group col-md-4">
	      <label for="email">Email</label>
	      <input name="email" id='email' type="email" class="form-control"  placeholder="Email" required />
	    </div>  
</div> 
<div class="form-row">
    	<div class="form-group col-md-4">
	      <label for='alamat' >Alamat </label>
	      <input name="alamat" id='alamat' type="text" class="form-control" placeholder="Alamat" required />
	    </div>
	    <div class="form-group col-md-4">
	      <label for='kota'>Kota</label>
	      <input name="kota" id='kota' type="text" class="form-control" placeholder="Kota" required />
	    </div>
	    <div class="form-group col-md-4">
	     <label for='kodepos'>Kode Pos</label>
	      <input name="kodepos" id='kodepos' type="text" class="form-control" placeholder="Kode Pos" required />
	    </div> 
</div>

<div class="form-row">
<div class="form-group">
    <label for='file'> Foto</label><br>
            <td><input type="file" id='file' name="foto" accept="image/*" required></td>
             <p class="help-block bg-warning ">
                <small>Catatan :</small> <br>
                <small>- Pastikan file yang diupload bertipe *.JPG ; *.PNG ; *.JPEG</small> <br>
                <small>- Ukuran file foto max 500 Kb</small>
             </p>
</div>
</div>
<hr>
<div class="row">
  <div class="col"></div>
  <div class="col"><button type="submit" name="simpan" class="btn btn-outline-success">Simpan</button></div>

  <div class="col">
  <a href="da" type="button" class="btn btn-outline-danger" role="button">Batal</a>
  </div>
  <div class="col"></div>
</div>  

</form>
</div>
</div>
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

<?php include "../footer.php"; ?>
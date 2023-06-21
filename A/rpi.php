<?php include 'menuA.php'; 
include '../assets/cssvic/fungsi.php';
include '../link.php';?>

<div class="container">
  <div class="card">
  <div class="card-header text-center bg-primary text-white">Input Riwayat Golongan / Pangkat</div>
  <div class="card-body" style="color:black">
<?php 
$nipcari=$_GET['n'];
// echo $nipcari;

	$query="SELECT nama, gelardepan, gelarbelakang FROM dtawal WHERE nip=$nipcari";
	$sql=mysqli_query($conn,$query);
	$hasil=mysqli_fetch_array($sql);

	$nama=$hasil['nama'];
?>
  <form action="rpis" method="POST" enctype="multipart/form-data">

  	<div class="form-group">
      <label for='nama'>Nama Lengkap:</label>
      <input type="text" id='nama' class="form-control" value="<?php  echo 	$nama  ?>" name="nama" readonly="readonly">
    </div>
      <div class="form-group">
      <label>NIP:</label>
      <input type="text" class="form-control"  value="<?php  echo $nipcari ?>" name="nip" readonly="readonly">
    </div>
   
    <div class="form-group">
      <label for='gol'>Golongan / Pangkat</label>
      	<select name="golongan" id='gol' class="form-control"  required >
          <option value=''> -- Pilih Golongan --  </option>
            <?php 
          $query="SELECT * From mst_golongan";
          $sql= mysqli_query($conn,$query);
          while ($hasil = mysqli_fetch_array($sql))
          {
            echo "<option value='".$hasil['id_mst_gol']."'>" .$hasil['nama_gol']. " - " .$hasil['pangkat'].  "</option>";
            }
           ?>
    	</select> 
    </div>

    <div class="form-group">
      <label for='ttd'>Ditandatangani oleh:</label>
      <input type="text" id='ttd' class="form-control" name="ttd" required />
    </div>

     <div class="form-group">
      <label for='nomorsk'>Nomor SK:</label>
      <input type="text" id='nomorsk' class="form-control" name="nomor" required />
    </div>

     <div class="form-group">
      <label for='tglsk'>Tanggal SK:</label>
      <input type="date" id='tglsk' class="form-control" name="tanggal"  required />
    </div>

    <div class="form-group">
    <label for='file'> File SK</label><br>
            <td><input type="file" name="foto" accept=".pdf" id='file'  required /></td>
             <p class="help-block bg-warning ">
                <small>Catatan :</small> <br>
                <small>- Pastikan file yang diupload bertipe *.pdf</small> <br>
                <small>- Ukuran file  max 500 Kb</small>
             </p>
	</div>

	<div class="table">
        <table align="center" >
        <td>  <input name="simpan"  class="btn btn-success btn-submit " type="submit" value="Simpan"> </td>
        <td> &nbsp &nbsp  </td>

         <td> <a href="rpd?n=<?php echo "$nipcari"   ?>   "><input class="btn btn-success btn-danger" type="button" value="Batal"></a> </td>
    </table>
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
<?php 
include 'menuA.php';
include '../link.php';
?>
<div class="container">
<div class="card mb-5">
  <div class="card-header bg-primary text-white text-center h5">Input Master Pendidikan </div>
  <div class="card-body">
	<form method="POST" action=" " enctype="multipart/form-data">  
		<label >Jenjang:</label>
		<input name="jenjang" type="text" class="form-control" placeholder="jenjang" required/>
		<br>
		<input name="simpan" class="btn btn-success btn-submit" type="submit" value="Simpan">
		<a href="mp.php" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
	</form>
	</div>
</div>
</div>
<?php 
if (isset($_POST['simpan'])) 
{
		$jenjang = $_POST['jenjang'];
		$query = "INSERT INTO mst_pendidikan (jenjang) VALUE ('$jenjang')";
		$sql= mysqli_query($conn,$query);
		if($sql){
		  echo "<script> alert ('Berhasil menambahkan Data Pendidikan'); window.location='mp.php'; </script>" ;
		  }
		  else{    
		    // Jika Gagal, Lakukan :
		    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
		    echo "<br><a href='mpt.php'>Kembali Ke Form</a>";
		}
}
include '../footer.php';?>





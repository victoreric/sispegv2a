<?php
include 'menuA.php';
include '../link.php';
?>

<div class="container">
<div class="card mb-5">
   <div class="card-header bg-primary text-white text-center h5">Input Master Kualifikasi </div>
   <div class="card-body">
		<form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">  
			<label >Kualifikasi :</label>
			<input name="kualifikasi" type="text" class="form-control" placeholder="kualifikasi" required/>
			<br>
			<input name="simpan" class="btn btn-success btn-submit" type="submit" value="Simpan">
			<a href="mk" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
		</form>
	</div>
</div>
</div>

<?php 
if (isset($_POST['simpan'])) 
{
		$kualifikasi = $_POST['kualifikasi'];
		$query = "INSERT INTO mst_kualifikasi (kualifikasi) VALUE ('$kualifikasi')";
		$sql= mysqli_query($conn,$query);

		if($sql){
		  echo "<script> alert ('Berhasil menambahkan data kualifikasi'); window.location='mk'; </script>" ;
		  }
		  else{
		    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
		    echo "<br><a href='mkt'>Kembali Ke Form</a>";
		}
} 
include '../footer.php';?>





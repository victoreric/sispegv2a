<?php
include 'menuA.php';
include '../link.php';
?>

<div class="container">
	<div class="card mb-5">
		<div class="card-header text-center bg-primary h5 text-white">Input Master Unit Kerja</div>
		<div class="card-body">
			<form method="POST" action=" " enctype="multipart/form-data">  
				<label >Fakultas / Bagian :</label>
				<input name="unitkerja" type="text" class="form-control" placeholder="Unit Kerja" required/>
				<br>
				<label >Sub Bagian :</label>
				<input name="subunit" type="text" class="form-control" placeholder="Sub Bagian" required/>
				<br>
				
				<input name="simpan" class="btn btn-success btn-submit" type="submit" value="Simpan">
				<a href="mu.php" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
			</form>
		</div>
	
	</div>

</div>

<?php 
if (isset($_POST['simpan'])) 
{
		$unitkerja = $_POST['unitkerja'];
		$subunit = $_POST['subunit'];

		$query = "INSERT INTO mst_unitkerja (unitkerja,	subunit) VALUE ('$unitkerja', '$subunit' )";
		$sql= mysqli_query($conn,$query);

		if($sql){ // Cek jika proses simpan ke database sukses atau tidak
		    // Jika Sukses, Lakukan : 
		  echo "<script> alert ('Berhasil menambahkan unit kerja'); window.location='mu.php'; </script>" ;

		  }
		  else{
		    // Jika Gagal, Lakukan :
		    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
		    echo "<br><a href='mut.php'>Kembali Ke Form</a>";
		}
}
include '../footer.php'; ?>




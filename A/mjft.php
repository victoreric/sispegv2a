<?php
include 'menuA.php';
include '../link.php';
?>

<div class="container">
<div class="card mb-5">
      <div class="card-header bg-primary text-white text-center h5">Input Master Jabatan </div>
	  <div class="card-body">	
		<form method="POST" action=" " enctype="multipart/form-data">  
			<label >Nama Jabatan:</label>
			<input name="namajabf" type="text" class="form-control" placeholder="jabatan" required/>
			<br>
			<input name="simpan" class="btn btn-success btn-submit" type="submit" value="Simpan">
			<a href="mjf.php" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
		</form>
		</div>
</div>
</div>

<?php 
if (isset($_POST['simpan'])) 
{
		$namajabf = $_POST['namajabf'];
		$query = "INSERT INTO mst_jabatanf (nama_jabatanf) VALUE ('$namajabf')";
		$sql= mysqli_query($conn,$query);

		if($sql){ 
		  echo "<script> alert ('Berhasil menambahkan Data Jabatan'); window.location='mjf.php'; </script>" ;
		  }
		  else{
		    // Jika Gagal, Lakukan :
		    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
		    echo "<br><a href='mjft.php'>Kembali Ke Form</a>";
		}
}
include '../footer.php';?>





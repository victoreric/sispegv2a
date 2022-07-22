<?php
include 'menuA.php';
include '../link.php';
?>

<div class="container">
  <div class="card mb-5">
      <div class="card-header bg-primary text-white text-center h5"> Input Master Pangkat / Golongan
      </div>
      <div class="card-body"> 
        <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">  
            <label for="mstgol" class="">Golongan:</label>
            <input name="namagol" type="text" class="form-control" placeholder="golongan" required/>
            <br>
            <label for="mstgol" class="">Pangkat:</label>
            <input name="pangkat" type="text" class="form-control"  placeholder="pangkat" required/>
            <br>
              
            <input class="btn btn-success btn-submit" type="submit" value="Simpan" name='simpan'>
            <a href="mg" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
        </form>
      </div>
  </div>
</div>

<!-- SaveProcess -->
<?php 
if(isset($_POST['simpan'])){
$namagol = $_POST['namagol'];
$pangkat = $_POST['pangkat'];

$query = "INSERT INTO mst_golongan (nama_gol,pangkat) VALUE ('$namagol', '$pangkat' )";
$sql= mysqli_query($conn,$query);

if($sql){
  echo "<script> alert ('Berhasil menambahkan Data Golongan'); window.location='mg'; </script>" ;}
  else{
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='mgt'>Kembali Ke Form</a>";
  }
}
include '../footer.php';
?>






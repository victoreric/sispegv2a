<?php
include 'menuA.php';
include '../link.php';

$id_mst_gol=$_GET['id_gol'];

$query = "SELECT * FROM mst_golongan WHERE id_mst_gol= '$id_mst_gol'";
$sql = mysqli_query($conn,$query);
$hasil = mysqli_fetch_array($sql);


?>
<div class="container">
<div class="card mb-5">
   <div class="card-header bg-primary text-white text-center h5"> Edit Master Pangkat / Golongan
   </div>
   <div class="card-body">
      <form method="POST" action="" enctype="multipart/form-data">  
         <label for="mstgol" class="">Golongan:</label>
         <input name="namagol" type="text" class="form-control" id="mstgol" placeholder="golongan" value="<?php echo $hasil['nama_gol']; ?>">
         <br>
         <label for="mstgol" class="">Pangkat:</label>
         <input name="pangkat" type="text" class="form-control" id="mstpangkt" placeholder="pangkat" value="<?php echo $hasil['pangkat']; ?> ">
         <br>
         
         <input class="btn btn-success btn-submit" type="submit" name="ubah" value="Ubah">
         <a href="mg" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
      </form>
   </div>
</div>
</div>

<?php  
//proses edit data  
if (isset($_POST['ubah'])) 
{
   // $id_mst_gol=$_GET['id'];
    $namagol = $_POST['namagol'];
    $pangkat = $_POST['pangkat'];
   
    $query = "UPDATE mst_golongan set nama_gol='$namagol', pangkat='$pangkat'
        WHERE id_mst_gol='$id_mst_gol'";

     $sql= mysqli_query($conn,$query);

    if($sql){ // Cek jika proses simpan ke database sukses atau tidak
                // Jika Sukses, Lakukan :   
              echo "<script> alert ('Data Golongan berhasil diubah');window.location='mg';</script>"; 
             }
      else {
            echo "gagal";
            }
}

include '../footer.php';?>   

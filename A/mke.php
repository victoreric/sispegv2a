<?php
include 'menuA.php';
include '../link.php';
$id_mst_kualifikasi=$_GET['id'];

$query = "SELECT * FROM mst_kualifikasi WHERE id_mst_kualifikasi= $id_mst_kualifikasi";
$sql = mysqli_query($conn,$query);
$hasil = mysqli_fetch_array($sql);

?>
<div class="container">
<div class="card mb-5">
   <div class="card-header bg-primary text-white text-center h5"> Edit Master Kualifikasi </div>
   <div class="card-body">
      <form method="POST" action="" enctype="multipart/form-data">  
         <label> Kualifikasi :</label>
         <input name="kualifikasi" type="text" class="form-control" placeholder="kualifikasi" value="<?php echo $hasil['kualifikasi']; ?>">
         <br>
         <input class="btn btn-success btn-submit" type="submit" name="ubah" value="Ubah">
         <a href="mk" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
      </form>
   </div>
</div>
</div>

<?php  
//proses edit data  
if (isset($_POST['ubah'])) 
{
    $id_mst_kualifikasi=$_GET['id'];
    $kualifikasi = $_POST['kualifikasi'];
    $query = "UPDATE mst_kualifikasi set kualifikasi='$kualifikasi'
        WHERE id_mst_kualifikasi='$id_mst_kualifikasi'";
     $sql= mysqli_query($conn,$query);

    if($sql){  
              echo "<script> alert ('Data kualifikasi berhasil diubah');window.location='mk';</script>"; 
             }
      else {
            echo "gagal";
            }
}
include '../footer.php';?>   

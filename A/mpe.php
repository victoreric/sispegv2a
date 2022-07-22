<?php
include 'menuA.php';
include '../link.php';
$id_mst_pendidikan=$_GET['id'];

$query = "SELECT * FROM mst_pendidikan WHERE id_mst_pendidikan= $id_mst_pendidikan ";
$sql = mysqli_query($conn,$query);
$hasil = mysqli_fetch_array($sql);

?>
<div class="container">
<div class="card mb-5">
  <div class="card-header bg-primary text-white text-center h5">Edit Master Pendidikan </div>
  <div class="card-body">
   <form method="POST" action="" enctype="multipart/form-data">  
      <label> Nama Jabatan:</label>
      <input name="jenjang" type="text" class="form-control" placeholder="jenjang" value="<?php echo $hasil['jenjang']; ?>">
      <br>
      <input class="btn btn-success btn-submit" type="submit" name="ubah" value="Ubah">
      <a href="mp" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
   </form>
  </div>
</div>
</div>

<?php  
//proses edit data  
if (isset($_POST['ubah'])) 
{
    $id_mst_pendidikan=$_GET['id'];
    $jenjang = $_POST['jenjang'];
    $query = "UPDATE mst_pendidikan set jenjang='$jenjang'
        WHERE id_mst_pendidikan='$id_mst_pendidikan'";
     $sql= mysqli_query($conn,$query);
    if($sql){ // Cek jika proses simpan ke database sukses atau tidak
                // Jika Sukses, Lakukan :   
              echo "<script> alert ('Data Jabatan berhasil diubah');window.location='mp';</script>"; 
             }
      else {
            echo "gagal";
            }
}
include '../footer.php';?>   
 
<?php
include 'menuA.php';
include '../link.php';

$id_mst_unit=$_GET['id'];

$query = "SELECT * FROM mst_unitkerja WHERE id_mst_unit= $id_mst_unit ";
$sql = mysqli_query($conn,$query);
$hasil = mysqli_fetch_array($sql);
?>
<div class="container">
  <div class="card mb-5">
		<div class="card-header text-center bg-primary h5 text-white">Edit Master Unit Kerja</div>
    <div class="card-body">
      <form method="POST" action="" enctype="multipart/form-data">  
          <label> Fakultas / Bagian :</label>
          <input name="unitkerja" type="text" class="form-control" placeholder="Bagian" value="<?php echo $hasil['unitkerja']; ?>">
          <br>
          <label> Sub Bagian :</label>
          <input name="subunit" type="text" class="form-control" placeholder="Sub Bagian" value="<?php echo $hasil['subunit']; ?> ">
          <br>
          <input class="btn btn-success btn-submit" type="submit" name="ubah" value="Ubah">
          <a href="mu" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
      </form>
    </div>
  </div>
</div>

<?php  
//proses edit data  
if (isset($_POST['ubah'])) 
{
    $id_mst_unit=$_GET['id'];
    $unitkerja = $_POST['unitkerja'];
    $subunit = $_POST['subunit'];
   
    $query = "UPDATE mst_unitkerja set unitkerja='$unitkerja', subunit='$subunit'
        WHERE id_mst_unit='$id_mst_unit'";

     $sql= mysqli_query($conn,$query);

    if($sql){ 
              echo "<script> alert ('Data unit kerja berhasil diubah');window.location='mu';</script>"; 
             }
      else {
            echo "gagal";
            }
}

include '../footer.php'; 
?>   
 
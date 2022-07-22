<?php
include 'menuA.php';
include '../link.php';
$id_mst_jabatanf=$_GET['id'];

$query = "SELECT * FROM mst_jabatanf WHERE id_mst_jabatanf= $id_mst_jabatanf ";
$sql = mysqli_query($conn,$query);
$hasil = mysqli_fetch_array($sql);


?>
<div class="container">
<div class="card mb-5">
      <div class="card-header bg-primary text-white text-center h5">Edit Master Jabatan Fungsional</div>
      <div class="card-body">
         <form method="POST" action="" enctype="multipart/form-data">  
            <label> Nama Jabatan:</label>
            <input name="namajabf" type="text" class="form-control" placeholder="jabatan" value="<?php echo $hasil['nama_jabatanf']; ?>">
            <br>
            <input class="btn btn-success btn-submit" type="submit" name="ubah" value="Ubah">
            <a href="mjf" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
         </form>
      </div>
</div>
</div>

<?php  
//proses edit data  
if (isset($_POST['ubah'])) 
{
    $id_mst_jabatanf=$_GET['id'];
    $namajabf = $_POST['namajabf'];
    $query = "UPDATE mst_jabatanf set nama_jabatanf='$namajabf'
        WHERE id_mst_jabatanf='$id_mst_jabatanf'";

     $sql= mysqli_query($conn,$query);

    if($sql){ // Cek jika proses simpan ke database sukses atau tidak
                // Jika Sukses, Lakukan :   
              echo "<script> alert ('Data Jabatan berhasil diubah');window.location='mjf';</script>"; 
             }
      else {
            echo "gagal";
            }
}
include '../footer.php';?>   
 
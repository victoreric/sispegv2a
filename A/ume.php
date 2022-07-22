<?php include 'menuA.php'; 
include '../assets/cssvic/fungsi.php';
include '../link.php';

$id=$_GET['id'];
$query="SELECT * FROM login where id_login='$id'";
$sql=mysqli_query($conn,$query);
$hasil=mysqli_fetch_array($sql);
?>

<div class="container">
<div class="card mb-5">
  <div class="card-header bg-primary text-white text-center h5">Edit User Account</div>
  <div class="card-body">
  <form method="POST" action="" enctype="multipart/form-data">  
         <label for="nama" class="">Nama:</label>
         <input name="nama" type="text" class="form-control" id="nama" placeholder="Nama Lengkap" value="<?php echo $hasil['nama']; ?>">
         <br>
         <label for="user" class="">Username:</label>
         <input name="user" type="text" class="form-control" id="user" placeholder="Username" value="<?php echo $hasil['user']; ?>">

         <br>
         <label for='level'>Level</label>
         <select name="level" id="level" class="form-control">
            <option value="1" <?php if($hasil['level']=='1'){echo 'selected';} ?>>Administrator</option>
            <option value="2" <?php if($hasil['level']=='2'){echo 'selected';}  ?>>User</option>
         </select>
         
         <br>
         <label for='active'> Active</label>
         <select name='active' id='active' class="form-control">
            <option value="Y" <?php if($hasil['active']=='Y'){echo 'selected'; }  ?>> Ya</option>
            <option value="N" <?php if($hasil['active']=='N'){echo 'selected';}  ?> >Tidak</option>
         </select>
         <br>

         <a href="#demo" class="btn btn-warning" data-toggle="collapse">Klik disini untuk ganti password</a>
         <div id="demo" class="collapse">
           
            <input type="checkbox" size="30px" name="klikubah" value="true"> Ceklis jika ingin mengubah password<br>
            <label for="inputpassword" class="">Masukan Password Baru:</label>
                <input name="inputpassword" type="password" class="form-control" id="inputpassword" placeholder="Password baru">
         </div>
         <br>
         <div class='text-center'>
         <input class="btn btn-success btn-submit" type="submit" name="ubah" value="Ubah">
         <a href="um" ><input class="btn btn-success btn-danger" type="button" value="Batal"></a>
         </div>
      </form>
  </div>
</div>
</div>


<?php  
//proses edit data  
if (isset($_POST['ubah']))
{
    $nama = $_POST['nama'];
    $user = $_POST['user'];
    $level=$_POST['level'];
    $active=$_POST['active'];
   
   $query = "UPDATE login set nama='$nama', user='$user', level='$level', active='$active' WHERE id_login='$id' ";

   $sql= mysqli_query($conn,$query);

   if(isset($_POST['klikubah'])){
      $newpass=md5($_POST['inputpassword']);
      $nama = $_POST['nama'];
      $user = $_POST['user'];
      $level=$_POST['level'];
      $active=$_POST['active'];

      $query2 = "UPDATE login set nama='$nama', user='$user', pass='$newpass', level='$level', active='$active' WHERE id_login='$id' ";

      $sql2= mysqli_query($conn,$query2);

      if($sql2){ // Cek jika proses simpan ke database sukses atau tidak
         // Jika Sukses, Lakukan :   
       echo "<script> alert ('User Account dan password berhasil diubah');window.location='um';</script>"; 
      }
else {
     echo "gagal";
     } 

   }
   
    if($sql){ // Cek jika proses simpan ke database sukses atau tidak
                // Jika Sukses, Lakukan :   
              echo "<script> alert ('User Account berhasil diubah');window.location='um';</script>"; 
             }
      else {
            echo "gagal";
            }           
}

include '../footer.php';?> 

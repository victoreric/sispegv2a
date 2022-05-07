<?php include 'menu.php'; ?>

<!-- Begin Page Content -->
 <div class="container-fluid">

    <!-- form ganti password -->
    <div class="card">
        <div class="card-header bg-primary text-white text-center">Ganti Password</div>

        <div class="card-body" style="color:black">
            <form class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="nama">Nama Lengkap:</label>
                <input type="text" class="form-control" value="<?php echo $_SESSION['nama'] ?>" disabled=true>
            </div>

            <div class="form-group">
                <label for="nip">NIP :</label>
                <input type="text" name='user' class="form-control" value="<?php echo $_SESSION['user'];?>" disabled>
            </div>

            <div class="form-group">
                <label for="pwd">Password Baru:</label>
                <input type="password" name='pass' class="form-control" placeholder="Masukan password baru" required>
            </div>

            <button type="submit" class="btn btn-success" name='ganti'>Simpan</button>
            <a href="index.php" class="btn btn-danger" role="button">Batal</a>
            </form>
        </div>
    </div>

</div>
<!-- end class Card-->
</div>
</div>
<!-- changePassProcess -->
<?php
if(isset($_POST['ganti'])){
$nama=$_SESSION['nama'];
$user=$_SESSION['user'];
$level=$_SESSION['level'];
$pass=md5($_POST['pass']);

	$query="UPDATE login SET nama='$nama', user='$user',pass='$pass',level='$level', active='Y' WHERE user='$user' ";
	$sql = mysqli_query($conn,$query);

	if($sql){
		echo "<script> alert('Berhasil Ganti Password .'); window.location='index.php'; </script>";
		}
		else {
			echo "gagal";
		}
}
?>
<!-- endChangepPassProcess -->


<?php include '../footer.php' ?>

<!DOCTYPE html>
<html>
<head>
	<title>Login SISPEG</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="cssvic/bootstrap3.min.css">
    <link rel="stylesheet" type="text/css" href="cssvic/gaya.css">
    <script src="cssvic/jquery.min.js"></script>
    <script src="cssvic/bootstrap.min.js"></script>
     <link href="cssvic/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<?php 
include 'link.php';
?>
<div class="container">
<div class="panel panel-primary">
  <div class="panel-heading text-center">
	  <h4><em class="glyphicon glyphicon-log-in">&nbsp</em>Daftar User Baru Sispeg</h4>
	</div>

  <div class="panel-body">
		<form class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
			<div class="form-group">
				<label class="control-label col-sm-2" for="nama">Nama Lengkap:</label>
				<div class="col-sm-10">
				<input type="text" name='nama' class="form-control" id="nama" placeholder="Enter Nama Lengkap" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="username">NIP:</label>
				<div class="col-sm-10">
				<input type="text" name='user' class="form-control" id="username" placeholder="Enter NIP" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Password:</label>
				<div class="col-sm-10">
				<input type="password" name='pass' class="form-control" id="pwd" placeholder="Enter password" required>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-success" name="daftar">Daftar</button>
				
				<a href="index" class="btn btn-danger" role="button">Batal</a>
				
				</div>
			</div>
		</form>
  </div>
</div>
</div>
<?php 
include 'footer.php';
?>
</body>
</html>

<?php
if(isset($_POST['daftar'])){
$nama=$_POST['nama'];
$user=$_POST['user'];
$pass=md5($_POST['pass']);

// cek user
$cek="SELECT * FROM login";
$ceksql=mysqli_query($conn,$cek);
while($result=mysqli_fetch_array($ceksql)){
	if($user==$result['user']){
		echo DIE( "<script> alert ('NIP telah terdaftar');window.location='';</script>");
}
}
	$query="INSERT INTO login (nama,user,pass) VALUE ('$nama','$user','$pass')";
	$sql = mysqli_query($conn,$query);

	if($sql){
		echo "<script> alert('User baru berhasil ditambahkan.'); window.location='index'; </script>";
		}
		else {
			echo "gagal";
		}
}

?>
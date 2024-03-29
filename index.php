<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Victor EP">
    <title>Sispeg v.2</title>
    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="vendor/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-primary">
<!-- login Form -->
<?php 
    session_start();
    if(isset($_SESSION['nama_sispeg'])){
    if($_SESSION['level_sispeg']=='1' && $_SESSION['active_sispeg']=='Y'){
        header('location:A');
    }
    else if($_SESSION['level_sispeg']=='2' && $_SESSION['active_sispeg']=='Y'){
        header('location:G');
    }
    else {
        echo "<script> alert ('User dan Pasword belum diaktifkan. Hubungi administrator'); window.location='index'; </script>" ;
        }
    }
include "link.php"; 
?>
<div class="container">
    <!-- Outer Row -->
    <div class="row justify-content-center">
        <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <!-- <div class="col-lg-6 d-none d-lg-block bg-login-hrd_vic"> -->
                <div class="col-lg-6">
                <img src="assets/img/hrd_vic.png" alt="login" class="col-lg-12 d-none d-lg-block">    
                </div>
         
    <div class="col-lg-6">
        <div class="p-2">
            <div class="text-center">
                <img src="assets/img/unpattilogo.png" width="200" height="200" alt="logo" class="logo">
                 <h1 class="h4 text-gray-900 mb-4">Sistem Informasi Kepegawaian</h1>
            </div>
            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST">
            <div class="form-group">
                <input type="text" name='user' class="form-control form-control-user" pattern="[A-Za-z0-9]{}" placeholder="Masukan NIP sebagai Username">
            </div>
            <div class="form-group">
                <input type="password"  name='pass' class="form-control form-control-user" id="" placeholder="Password">
            </div>
            <div class="form-group">
                <div class="custom-control custom-checkbox small">
                    <input type="checkbox" class="custom-control-input" id="customCheck">
                    <label class="custom-control-label" for="customCheck">Remember Me</label>
                </div>
            </div>                 
                <input class='btn btn-primary btn-user btn-block' type="submit" name="login" id="login" value='Login'>
            </form>
            <hr>
            <div class="text-center">
                <a class="small" data-toggle='modal' data-target='#myModal' href=''>Lupa Password?</a>
            </div>
            <div class="text-center">
                Belum punya akun?<a class="small" href="" data-toggle='modal' data-target='#myModal'> Daftar disini!</a>
            </div>
            <nav class="login-card-footer-nav mt-5">
                <a href="">Terms of use |</a>
                <a href="">Privacy policy</a>
            </nav>
                
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</div>

 <!-- The Modal -->
 <div class="modal fade" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Sispeg</h4>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body">
                            Hubungi Sub Bagian Kepegawaian Fatek.
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
<!-- loginProses -->
<?php 
if(isset($_POST['login'])){
	$user=mysqli_real_escape_string($conn, $_POST['user']);
	$pass=mysqli_real_escape_string($conn, md5($_POST['pass']));
	// echo "".$user."<br>";
	// echo "".$pass."<br>";

	$query="SELECT * FROM login WHERE user='$user' AND pass='$pass'";
	$sql=mysqli_query($conn,$query);
	$cek=mysqli_num_rows($sql);

	if ($cek==1 ) {
		$hasil=mysqli_fetch_array($sql);
		$_SESSION['user_sispeg']=$hasil['user'];
		$_SESSION['nama_sispeg']=$hasil['nama'];
		$_SESSION['level_sispeg']=$hasil['level'];
		$_SESSION['active_sispeg']=$hasil['active'];

		if($_SESSION['level_sispeg']=='1' && $_SESSION['active_sispeg']=='Y'){
			header('location:A/index');
		}
		else if($_SESSION['level_sispeg']=='2' && $_SESSION['active_sispeg']=='Y'){
			header('location:G/index');
		}
		else {
			session_destroy();
			echo "<script> alert ('User dan Pasword belum diaktifkan..! Hubungi Sub Bagian Kepegawaian Fatek'); window.location='index'; </script>" ;
		}
	}
	else{
 		echo "<script> alert ('User dan Pasword tidak terdaftar. Hubungi Sub Bagian Kepegawaian Fatek.'); window.location='index'; </script>" ;
	}
}
?>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="vendor/js/sb-admin-2.min.js"></script>
</body>
</html>
<?php
ob_flush()
?>
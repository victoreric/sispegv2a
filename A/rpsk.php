<?php
session_start();
if(!isset($_SESSION['nama'])){
   echo "<script> alert('Anda Belum Login'); window.location='../index.php'; </script>";
} 
?>
 <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Aplikasi Kepegawaian">
        <meta name="author" content="Victor Pattiradjawane">
        <title>Sispeg v.2a</title>
        <link href="../vendor/css/sb-admin-2.min.css" rel="stylesheet">
    </head>
    <body>

<div class="container-fluid">    
  <?php
  include '../link.php';
  $filesk=$_GET['f'];
  ?>

  <div class="embed-responsive embed-responsive-1by1">
      <iframe class='embed-responsive-item' src="../assets/skpangkat/<?php echo $filesk; ?>"></iframe>
  </div>
</div>

</body>
</html>



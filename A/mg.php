<?php
include 'menuA.php';
include '../link.php';
?>

<div class="container">

<div class="card mb-5">
  <div class="card-header bg-primary text-white text-center h5">Master Pangkat dan Golongan</div>
  <div class="card-body table-responsive">
      <a href="mgt" class="btn-sm btn-info fa fa-plus-circle" role="button"> Tambah data  </a>
      <p>

      <table id="" class="table table-bordered table-hover bg-light table-striped">  
         <thead>  
            <tr class="bg-primary text-center"> 
               <th width="50px"> No </th>		
               <th>Golongan</th>  
               <th>Pangkat</th>  
               <th>Aksi</th>
            </tr>
            </thead>
         <?php 
         $no=0;
         $query = "SELECT * FROM mst_golongan order by id_mst_gol";
         $sql = mysqli_query($conn,$query);
         while ($hasil=mysqli_fetch_array($sql)){
            $no++;

         echo "<tr>
                  <th>$no</th> 
                  <th>" .$hasil['nama_gol']." </th>
                  <th>".$hasil['pangkat']. "</th> "; ?>

                  <th class='text-center' > <a href="mge?id_gol=<?php echo $hasil['id_mst_gol'] ;?>" class='btn-sm btn-warning fas fa-edit'> edit</a>
         
                     <a href="mgh?id=<?php echo $hasil['id_mst_gol'] ;?>" class="btn-sm btn-danger fas fa-trash-alt mt-2" onclick="javascript:return confirm('Anda Yakin untuk menghapus data ini?')" > hapus </a> 
               </th>
               </tr>
            <?php  }  ?>   
            </table>
   </div> 
</div>
</div>
	
   <?php include '../footer.php'; ?>



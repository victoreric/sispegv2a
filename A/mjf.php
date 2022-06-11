<?php
include 'menuA.php';
include '../link.php';
?>
<div class="container"> 
   <div class="card mb-5">
      <div class="card-header bg-primary text-white text-center h5"> Master Jabatan Fungsional
      </div>
      <div class="card-body">	
         <a href="mjft.php" class="btn-sm btn-info fa fa-plus-circle" role="button"> Tambah data  </a>
         <p>
               <table class="table table-bordered table-hover bg-light table-striped">  
                  <thead>  
                     <tr class="bg-primary text-center"> 
                        <th width="50px"> No </th>		
                        <th>Nama Jabatan</th>    
                        <th>Aksi</th>
                     </tr>
                     </thead>
            <?php 
            $no=0;
            $query = "SELECT * FROM mst_jabatanf order by id_mst_jabatanf";
            $sql = mysqli_query($conn,$query);
            while ($hasil=mysqli_fetch_array($sql)){
               $no++;

            echo "<tr>
                     <th>$no   </th> 
                     <th>" .$hasil['nama_jabatanf']." </th>"; ?>
                     <th class='text-center' > <a href='mjfe.php?id= <?php echo "" .$hasil['id_mst_jabatanf'] ;?>'class='btn-sm btn-warning btn-warning fas fa-edit'> </a> 
            
                        <a href="mjfh.php?id= <?php  echo"" .$hasil['id_mst_jabatanf'] ;?>" class="btn-sm btn-danger fas fa-trash-alt mt-1" onclick="javascript:return confirm('Anda yakin menghapus data ini..!')" >  </a> 
                  
                  </th>
                  </tr>

               <?php  } ?>   
               </table>
      </div>
   </div>
</div>
      <?php include '../footer.php'; ?>




<?php
include 'menuA.php';
include '../link.php';
?>
 <div class="container"> 
<div class="card mb-5">
  <div class="card-header bg-primary text-white text-center h5">Master Pendidikan </div>
  <div class="card-body">
      <a href="mpt" class="btn-sm btn-info fa fa-plus-circle" role="button"> Tambah data  </a>
      <p>
      <table id="" class="table table-bordered table-hover bg-light table-striped ">  
         <thead>  
            <tr class="bg-primary text-center"> 
               <th width="50px"> No </th>		
               <th>Jenjang</th>  
               <th>Aksi</th>
            </tr>
            </thead>
         <?php 
         $no=0;
         $query = "SELECT * FROM mst_pendidikan order by id_mst_pendidikan";
         $sql = mysqli_query($conn,$query);
         while ($hasil=mysqli_fetch_array($sql)){
            $no++;
         echo "<tr>
                  <th>$no</th> 
                  <th>".$hasil['jenjang']. "</th> "; ?>
                  <th class='text-center' > <a href='mpe?id= <?php echo "" .$hasil['id_mst_pendidikan'] ;?>'class='btn-sm btn-warning fas fa-edit'> edit</a>
                     <a href="mph?id= <?php  echo"" .$hasil['id_mst_pendidikan'] ;?>" class="btn-sm btn-danger fas fa-trash-alt mt-2" onclick="javascript:return confirm('Anda Yakin menghapus data ini??')" > hapus </a> 
               </th>
               </tr>
            <?php  } ?>   
            </table>
    </div>
</div>
 </div>
<?php include '../footer.php'; ?>
 




<?php
include 'menuA.php';
include '../link.php';
?>
<div class="container"> 
<div class="card mb-5">
  <div class="card-header bg-primary text-white text-center h5">Master Unit Kerja</div>
  <div class="card-body">
  <a href="mut.php" class="btn-sm btn-info fa fa-plus-circle" role="button"> Tambah data  </a>
<p>
<table id="" class="table table-bordered table-hover bg-light table-striped">  
           <thead>  
            <tr class="bg-primary text-center"> 
               <th width="50px"> No </th>		
               <th>Fakultas / Unit Kerja</th>  
               <th>Sub Bagian</th>  
               <th>Aksi</th>
            </tr>
           	</thead>
    <?php 
    $no=0;
    $query = "SELECT * FROM mst_unitkerja order by id_mst_unit";
    $sql = mysqli_query($conn,$query);
    while ($hasil=mysqli_fetch_array($sql)){
    	$no++;

    echo "<tr>
           	<th>$no   </th> 
           	<th>" .$hasil['unitkerja']." </th>
           	<th>".$hasil['subunit']. "</th> "; ?>

           	<th class='text-center' > <a href='mue.php?id= <?php echo "" .$hasil['id_mst_unit'] ;?>' class='btn-sm btn-warning fas fa-edit' > edit</a>
     
           		<a href="muh.php?id= <?php  echo"" .$hasil['id_mst_unit'] ;?>" class="btn-sm btn-danger fas fa-trash-alt mt-2" onclick="javascript:return confirm('Anda yakin menghapus data ini??')" > hapus </a> 
          
           </th>
          </tr>

      <?php  } ?>   
        </table>
  </div> 
</div>
</div>
    
<?php include '../footer.php'; ?>


  


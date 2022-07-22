<?php include 'menuA.php'; 
include '../assets/cssvic/fungsi.php';
include '../link.php';?>

<div class="container"> 
<div class="card mb-5">
  <div class="card-header bg-primary text-white text-center h5"> User Management 
  </div>
  <div class="card-body table-responsive">
  <!-- <a href="" class="btn-sm btn-info far fa-file"> Tambah data </a> -->
  <!-- <p></p> -->
  <table id="example1" class="table table-bordered table-hover table-responsive-justify">
		<thead>
			<tr class="bg-primary text-center">
				<th>No.</th>
				<th>Nama Lengkap</th>
				<th>Username</th>
				<th>Level</th>
				<th>Active</th>
				<th>Aksi</th>
			</tr>
		</thead>
		<?php
		$no=0;
		$query="SELECT * FROM login";
		$sql = mysqli_query($conn,$query);
		while($hasil=mysqli_fetch_array($sql)){
			$no++;
		?>
			<tr>
				<td> <?php echo $no;  ?></td>
				<td><?php echo $hasil['nama']; ?></td>
				<td><?php echo $hasil['user'];  ?></td>
				<td><?php echo $hasil['level'];  ?></td>
				<td><?php echo $hasil['active'];  ?></td>
				<td class='text-center' > <a href='ume?id= <?php echo $hasil['id_login'] ;?> ' class='btn-sm btn-warning fas fa-edit' > edit</a>
     
           		<a href="umh?id= <?php  echo $hasil['id_login'] ;?>" class="btn-sm btn-danger fas fa-trash-alt mt-2" onclick="javascript:return confirm('Anda Yakin menghapus data ini?')" > hapus </a> 
				</td>
			</tr>
		
		<?php } ?>
		</table>
  </div>
</div>
</div>

<script type="text/javascript">  
    $(function () {  
     $("#example1").dataTable();  
     $('#example2').dataTable({  
      "bPaginate": true,  
      "bLengthChange": false,  
      "bFilter": false,  
      "bSort": true,  
      "bInfo": true,  
      "bAutoWidth": false  
     });  
    });  
   </script> 



<?php 
include '../footer.php';
?>




<?php 
	include 'menuA.php';
	include '../link.php';
?>

<div class="container">
<div class="card mb-5">
  <div class="card-header text-primary h4 text-center">Daftar pegawai berdasarkan Pendidikan  Terakhir</div>
  <div class="card-body">
  <table id="example1" class="table table-hover table-bordered">
    <thead>
      <tr class="bg-secondary text-white">
      <th class="text-center">No</th>
		<th class="text-center">Nama / NIP</th>
		<th class="text-center">Pendidikan Terakhir</th>
		<th class="text-center">Jenis Kelamin</th>
      </tr>
    </thead>	

	<?php 
		$no=0;
		$pendidikanakhir=$_GET['p'];

		$queri="SELECT *, mst_pendidikan.id_mst_pendidikan , mst_pendidikan.jenjang
		FROM dtawal
		JOIN mst_pendidikan ON mst_pendidikan.id_mst_pendidikan=dtawal.pendidikanakhir
		WHERE pendidikanakhir=$pendidikanakhir															
		ORDER BY dtawal.jeniskelamin DESC";
		$sql=mysqli_query($conn,$queri);
		while ($hasil=mysqli_fetch_array($sql)){
			$no++;
			echo " <tr>
			<td class='text-center'>$no</td>
			<td> ".$hasil['nama']." <br> NIP. ".$hasil['nip']." </td>
			<td> ".$hasil['jenjang']."</td>
			<td> ".$hasil['jeniskelamin']."</td>
	</tr>";
		}
$cek=mysqli_num_rows($sql);
if($cek==0){
	echo "Tidak ada data";
}
?>
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



<?php include '../footer.php'; ?>


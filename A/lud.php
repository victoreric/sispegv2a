<?php 
	include 'menuA.php';
	include '../link.php';
?>

<div class="container">
<div class="card mb-5">
  <div class="card-header text-primary h4 text-center">Daftar pegawai aktif berdasarkan Unit kerja</div>
  <div class="card-body table-responsive">
  <table id="example1" class="table table-hover table-bordered">
    <thead>
      <tr class="bg-secondary text-white">
        <th class="text-center">No</th>
		<th class="text-center">Nama / NIP</th>
		<th class="text-center">Unit Kerja</th>
		<th class="text-center">Jenis Kelamin</th>
      </tr>
    </thead>	

	<?php 
		$no=0;
		$unitkerja=$_GET['u'];

		$queri="SELECT *, mst_unitkerja.id_mst_unit, mst_unitkerja.unitkerja, mst_unitkerja.subunit
		FROM dtawal
		JOIN mst_unitkerja ON mst_unitkerja.id_mst_unit=dtawal.unitkerja
		WHERE dtawal.unitkerja=$unitkerja
		ORDER BY jeniskelamin DESC";

		$sql=mysqli_query($conn,$queri);
		while ($hasil=mysqli_fetch_array($sql)){
			$no++;
			echo " <tr>
			<td class='text-center'>$no</td>
			<td> ".$hasil['nama']." <br> NIP. ".$hasil['nip']." </td>
			<td> ".$hasil['subunit']."</td>
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


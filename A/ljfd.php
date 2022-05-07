<?php 
	include 'menuA.php';
	include '../link.php';
?>

<div class="container">
<div class="card mb-5">
  <div class="card-header text-primary h4 text-center">Daftar pegawai aktif  berdasarkan Jabatan Fungsional</div>
  <div class="card-body">
  <table id="example1" class="table table-hover table-bordered">
    <thead>
      <tr class="bg-secondary text-white">
        <th class="text-center">No</th>
		<th class="text-center">Nama / NIP</th>
		<th class="text-center">Jabatan Fungsional</th>
		<th class="text-center">Jenis Kelamin</th>
      </tr>
    </thead>	

	<?php 
		$no=0;
		$jabatanf=$_GET['jf'];

		$queri="SELECT *, mst_jabatanf.id_mst_jabatanf, mst_jabatanf.nama_jabatanf 
		FROM dtawal
		JOIN mst_jabatanf ON mst_jabatanf.id_mst_jabatanf=dtawal.jabatanf
		WHERE jabatanf=$jabatanf
		ORDER BY jeniskelamin DESC";
		$sql=mysqli_query($conn,$queri);
		while ($hasil=mysqli_fetch_array($sql)){
			$no++;
			echo " <tr>
			<td class='text-center'>$no</td>
			<td> ".$hasil['nama']." <br> NIP. ".$hasil['nip']." </td>
			<td> ".$hasil['nama_jabatanf']."</td>
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


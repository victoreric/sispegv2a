<?php 
	include 'menuA.php';
	include '../link.php';
?>

<div class="container">
<div class="card mb-5">
  <div class="card-header text-primary h4 text-center">Daftar pegawai aktif berdasarkan Kualifikasi</div>
  <div class="card-body">
  <table id="example1" class="table table-hover table-bordered">
    <thead>
      <tr class="bg-secondary text-white">
        <th class="text-center">No</th>
		<th class="text-center">Nama / NIP</th>
		<th class="text-center">Kualifikasi</th>
		<th class="text-center">Jenis Kelamin</th>
      </tr>
    </thead>	

	<?php 
		$no=0;
		$kualifikasi=$_GET['k'];

		$queri="SELECT *, mst_kualifikasi.id_mst_kualifikasi, mst_kualifikasi.kualifikasi
		FROM dtawal
		JOIN mst_kualifikasi ON mst_kualifikasi.id_mst_kualifikasi=dtawal.kualifikasi
		WHERE dtawal.kualifikasi=$kualifikasi AND statuspegawai='1'
		ORDER BY dtawal.jeniskelamin DESC";
		$sql=mysqli_query($conn,$queri);
		while ($hasil=mysqli_fetch_array($sql)){
			$no++;
			echo " <tr>
			<td class='text-center'>$no</td>
			<td> ".$hasil['nama']." <br> NIP. ".$hasil['nip']." </td>
			<td> ".$hasil['kualifikasi']."</td>
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


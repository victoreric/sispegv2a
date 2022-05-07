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
		<th class="text-center">Pangkat ; Golongan terakhir</th>
		<th class="text-center">Jenis Kelamin</th>
      </tr>
    </thead>	

	<?php 
		$no=0;
		$gol_akhir=$_GET['g'];

		$queri="SELECT *, dtawal.nip, dtawal.nama, dtawal.jeniskelamin, dtawal.kualifikasi,  mst_golongan.id_mst_gol, mst_golongan.nama_gol,mst_golongan.pangkat 
		FROM lapgol
		JOIN dtawal ON dtawal.nip=lapgol.nip
		JOIN mst_golongan ON mst_golongan.id_mst_gol=lapgol.gol_akhir
		WHERE gol_akhir=$gol_akhir
		ORDER BY jeniskelamin DESC";
		$sql=mysqli_query($conn,$queri);
		while ($hasil=mysqli_fetch_array($sql)){
			$no++;
			echo " <tr>
			<td class='text-center'>$no</td>
			<td> ".$hasil['nama']." <br> NIP. ".$hasil['nip']." </td>
			<td> ".$hasil['pangkat']." ; ".$hasil['nama_gol']."</td>
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


<?php  include 'menu.php'; ?>

<div class="container-fluid">
<div class="row">
    <!-- DataTables Example -->
     <div class="col-md-6">
      <div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Rekapitulasi Pegawai Aktif Berdasarkan Pangkat/ Golongan</h6>
      </div>
   <div class="card-body">
    <div class="table-responsive">
    <table class="table table-bordered table-hover text-center" id="dataTable1" width="100%" cellspacing="0">
          <thead class="table-info">
            <tr>
               <th>Pangkat/ Golongan</th>
                <th>Jumlah</th>
                 <th>Laki-Laki</th>
                <th>Perempuan</th>
             </tr>
            </thead>  
            <?php 
$totaljum=0;
$totalpria=0;
$totalperem=0;

$query="SELECT * From mst_golongan";
$sql=mysqli_Query($conn,$query);
while ($hasil=mysqli_fetch_array($sql))
{
	$idgol=$hasil['id_mst_gol'];
	$nama_gol=$hasil['nama_gol'];
	$pangkat=$hasil['pangkat'];

//display the last golongan
$query_all="SELECT count(*) as jum FROM lapgol WHERE gol_akhir= '$idgol' ";
$sql_all=mysqli_query($conn,$query_all);
$hasil_all=mysqli_fetch_array($sql_all);
$jum=$hasil_all['jum'];
$totaljum +=$jum;

//display pria
$query_pria=" SELECT lapgol.nip, lapgol.gol_akhir, dtawal.nama, dtawal.jeniskelamin
         FROM lapgol
         JOIN dtawal ON lapgol.nip=dtawal.nip
         WHERE lapgol.gol_akhir='$idgol' AND dtawal.jeniskelamin='Laki-Laki'";
$sql_pria=mysqli_query($conn,$query_pria);
$hasil_pria=mysqli_num_rows($sql_pria);
$totalpria +=$hasil_pria;

//display Perempuan
$query_perem=" SELECT lapgol.nip, lapgol.gol_akhir, dtawal.nama, dtawal.jeniskelamin
         FROM lapgol
         JOIN dtawal ON lapgol.nip=dtawal.nip
         WHERE lapgol.gol_akhir='$idgol' AND dtawal.jeniskelamin='Perempuan'";
$sql_perem=mysqli_query($conn,$query_perem);
$hasil_perem=mysqli_num_rows($sql_perem);
$totalperem +=$hasil_perem;

    echo "                   
        <tbody>
        <tr>
        <td>".$pangkat. " ; ".$nama_gol. "</td>
        <td>".$jum. "</td>
        <td>". $hasil_pria."</td>
        <td>". $hasil_perem." </td>
 </tr>";
}
echo "
<tr class='table-info'>
	<td>Total Jumlah</td>
	<td>".$totaljum. "</td>
	<td> ".$totalpria."  </td>
	<td> ".$totalperem."  </td>
</tr>
";
    ?>
     </tbody>   
        </table>
     </div>
        </div>
    </div>
    </div>

    <!-- Area Chart -->
<script>
  var chart1; 
  $(document).ready(function() {
     chart1 = new Highcharts.Chart({
     chart: {
     renderTo: 'mygraph',
     type: 'column'
     },   
     title: {
     text: 'Statistik  Pegawai Berdasarkan Pangkat/ Golongan'
     },
     xAxis: {
     categories: ['Pangkat Golongan']
     },
     yAxis: {
     title: {
        text: 'Jumlah Pegawai'
     }
     },
	 series:             
     [
     
    <?php  
		$totaljum=0;
		$totallaki=0;
		$totalperem=0;

		$query="SELECT * From mst_golongan";
		$sql=mysqli_Query($conn,$query);
		while ($hasil=mysqli_fetch_array($sql)){
			$idgol=$hasil['id_mst_gol'];
			$nama_gol=$hasil['nama_gol'];
			$pangkat=$hasil['pangkat'];
			
	
		$query_all="SELECT count(*) as jum FROM lapgol WHERE gol_akhir= '$idgol' ";
		$sql_all=mysqli_query($conn,$query_all);
		$hasil_all=mysqli_fetch_array($sql_all);
		$jum=$hasil_all['jum'];
		$totaljum +=$jum;	
      ?>
         {
			name: "<?php  echo $nama_gol; ?>",
         data: [<?php  echo $jum; ?>]
	   },

<?php  }  ?>
	]
     });
     }); 
 </script>

<!-- <div class="col-xl-6 col-md-6"> -->
 <div class="col-md-6"> 
    <div class="card shadow mb-4">
        <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">Statistik  Pegawai </h6>
        </div>
   
        <div class="card-body">
        <div id="mygraph"></div>
        </div>
  </div>
 </div>


    
</div>
<!-- end row -->
</div>

<!-- end Container-fluid -->




<?php include '../footer.php'; ?>

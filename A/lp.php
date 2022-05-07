<?php  include 'menuA.php'; ?>

<div class="container-fluid">
<div class="row">
    <!-- DataTables Example -->
     <div class="col-md-6">
      <div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Rekapitulasi Pegawai Aktif Berdasarkan Pendidikan</h6>
      </div>
   <div class="card-body">
    <div class="table-responsive">
    <table class="table table-bordered table-hover text-center" id="dataTable1" width="100%" cellspacing="0">
          <thead class="table-info">
            <tr>
               <th>Pendidikan Terakhir</th>
                <th>Jumlah</th>
                 <th>Laki-Laki</th>
                <th>Perempuan</th>
             </tr>
            </thead>  
<?php 
$totaljum=0;
$totallaki=0;
$totalperem=0;

$query="SELECT * From mst_pendidikan";
$sql=mysqli_Query($conn,$query);
while ($hasil=mysqli_fetch_array($sql)){
	$id=$hasil['id_mst_pendidikan'];
	$jenjang=$hasil['jenjang'];

	$query1="SELECT count(*) as jum FROM dtawal WHERE pendidikanakhir= '$id' AND statuspegawai='1'";
	$sql1=mysqli_query($conn,$query1);
	$hasil1=mysqli_fetch_array($sql1);
	$jum=$hasil1['jum'];

	$totaljum +=$jum;

	$query2="SELECT count(*) as jumlaki FROM dtawal WHERE pendidikanakhir= '$id' AND statuspegawai='1' AND jeniskelamin='Laki-laki'";
	$sql2=mysqli_query($conn,$query2);
	$hasil2=mysqli_fetch_array($sql2);
	$jumlaki=$hasil2['jumlaki'];

	$totallaki +=$jumlaki;

	$query3="SELECT count(*) as jumperem FROM dtawal WHERE pendidikanakhir= '$id' AND statuspegawai='1' AND jeniskelamin='Perempuan'";
	$sql3=mysqli_query($conn,$query3);
	$hasil3=mysqli_fetch_array($sql3);
	$jumperem=$hasil3['jumperem'];

	$totalperem +=$jumperem;

    echo "                   
        <tbody>
        <tr>
        <td>".$hasil['jenjang']. "</td>
         <td><a href='lpd.php?p=".$id. "'> ".$jum. " </a> </td>
         <td> ".$jumlaki."  </td>
         <td> ".$jumperem."  </td>
 </tr>";
}
echo "
<tr class='table-info'>
	<td>Total Jumlah</td>
	<td>".$totaljum. "</td>
	<td> ".$totallaki."  </td>
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
     text: 'Statistik  Pegawai Berdasarkan Pendidikan'
     },
     xAxis: {
     categories: ['Pendidikan Terakhir']
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

		$query="SELECT * From mst_pendidikan";
$sql=mysqli_Query($conn,$query);
while ($hasil=mysqli_fetch_array($sql)){
	$id=$hasil['id_mst_pendidikan'];
	$jenjang=$hasil['jenjang'];

	$query1="SELECT count(*) as jum FROM dtawal WHERE pendidikanakhir= '$id' AND statuspegawai='1'";
	$sql1=mysqli_query($conn,$query1);
	$hasil1=mysqli_fetch_array($sql1);
	$jum=$hasil1['jum'];

	$totaljum +=$jum;
      ?>
         {
			name: "<?php  echo $hasil['jenjang']; ?>",
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

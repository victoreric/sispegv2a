<?php include 'menuA.php'; 
include '../assets/cssvic/fungsi.php';
include '../link.php';?>

<div class="container-fluid">
<div class="card">
  <div class="card-header text-center bg-primary text-white">Riwayat Pangkat / Golongan Pegawai</div>
  <div class="card-body table-responsive">
  <table id="example1" class="table table-bordered table-hover bg-active">  
        <thead>  
            <tr class="bg-primary text-center"> 
               <th width="10px" style="vertical-align: middle"> No </th>	
               <th width="250px" style="vertical-align:middle">Nama / NIP </th>
               <th style="vertical-align:middle">Pangkat / Golongan </th>
               <th style="vertical-align: middle">Aksi</th>
            </tr>
           </thead>
<?php 
$no=0;
      $query="SELECT * FROM dtawal WHERE kualifikasi in('1','2')";
      $sql=mysqli_query($conn,$query);
      while ($hasil=mysqli_fetch_array($sql))
      {
          $no++;
echo "<tr>
          <td >$no</td>
          <td >".$hasil['nama']." <br> NIP. ".$hasil['nip']."</td>";
              $nip=$hasil['nip'];
              $kueri="SELECT nip, golongan, mst_golongan.id_mst_gol, mst_golongan.pangkat, mst_golongan.nama_gol 
              FROM drpangkat
              LEFT JOIN mst_golongan ON mst_golongan.id_mst_gol=drpangkat.golongan 
              WHERE nip=$nip ORDER BY tanggalsk ";
              $cari=mysqli_query($conn,$kueri);
              
              echo "
              <td>"; while ($result=mysqli_fetch_array($cari)){
                echo "<button type='button' class='btn btn-sm btn-info'>".$result['nama_gol']."</button> ";
              } 
              echo " </td>";
        echo"	
        <td><a href='rpd.php?n=".$hasil['nip']."' class='btn-sm btn-primary fas fa-eye'></a></td>
          </tr> 
        ";  
   } 
?> 
</table>
  </div>
</div>
</div>

  
    <!-- <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap.js"></script> -->

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


<?php include '../footer.php';  ?>
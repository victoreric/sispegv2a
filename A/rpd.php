<?php include 'menuA.php'; 
include '../assets/cssvic/fungsi.php';
include '../link.php';
?>

<div class="container-fluid">
<div class="card">
  <div class="card-header text-center bg-primary text-white">Data Riwayat Pangkat/ Golongan Pegawai</div>
  <div class="card-body">
<!-- <a href='drpangkat.php' class='btn-sm btn-info glyphicon glyphicon-arrow ' > Kembali  </a> <p> -->

        <table id="" class="table table-striped table-bordered table-hover bg-active">  
           <thead>  
            <tr class="bg-primary text-center"> 
               <th style="vertical-align: middle"> No </th>	
               <th style="vertical-align: middle">Nama / NIP </th>
               <th style="vertical-align: middle">Pangkat / Gol </th>
               <th style="vertical-align: middle">Ditandatangani</th>
               <th style="vertical-align: middle">Nomor SK</th>
               <th style="vertical-align: middle">Tanggal SK</th>
              <th style="vertical-align: middle">File</th>
               <th style="vertical-align: middle">Aksi</th>
            </tr>
           </thead>
<?php 
      $no=0;
      $nip=$_GET['n'];
      
      $query="SELECT * FROM dtawal WHERE nip=$nip";
      $sql=mysqli_query($conn,$query);
      while ($hasil=mysqli_fetch_array($sql))
      {
          $no++;

        echo "
          <tr>
          <td>$no </td>
          <td colspan='6'>".$hasil['gelardepan']."  ".$hasil['nama']. ", ".$hasil['gelarbelakang']." <br> NIP. ".$hasil['nip']."   </td>
         
          <td><a href='rpi.php?n=".$hasil['nip']."' class='btn-sm btn-info glyphicon glyphicon-plus-sign'> Tambah </a></td>
          </tr>
        ";
 
       $kueri="SELECT *, mst_golongan.id_mst_gol
        FROM drpangkat
        LEFT JOIN mst_golongan ON mst_golongan.id_mst_gol=drpangkat.golongan
        WHERE nip=".$hasil['nip']."
        ORDER BY id_mst_gol  ";
        
        $code=mysqli_query($conn,$kueri);
        if (mysqli_num_rows($code)>0) 
        {
          while ($nilai=mysqli_fetch_array($code))
          {
            $id=$nilai['id_drpangkat'];
            $tgl_sk=$nilai['tanggalsk'];
            $tanggal_sk = tanggal_indo($tgl_sk);

         echo "
           <tr a>
           <td colspan='2' align='right'>* </td>
           <td>".$nilai['pangkat']." ; ".$nilai['nama_gol']." </td>
           <td>".$nilai['pejabat']." </td>
           <td>".$nilai['nomorsk']." </td>
           <td>".$tanggal_sk." </td>
           <td><a href='rpsk.php?f=".$nilai['filesk'] ."' target='blank'> " .$nilai['filesk']."</a></td>
           <td><a href='rpe.php?id=$id' class='btn-sm btn-warning fas fa-edit'> </a>"; ?>

          <a href="rph.php?id=<?php echo $id ;?>" class="btn-sm btn-danger fas fa-trash-alt" onclick="javascript:return confirm('Anda Yakin Akan Menghapus Data??')"> </a> 
        <?php 
        echo "
        </td>

           </tr>
           "; 
          }
        }
      }

      ?>
       </table>
  </div>
</div>
</div>

 

<?php include '../footer.php';  ?>
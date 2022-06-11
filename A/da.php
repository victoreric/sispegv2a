<?php  include 'menuA.php'; 
  include '../assets/cssvic/fungsi.php';
  include '../link.php';
?>

<div class="container-fluid">
<div class="card">
  <div class="card-header text-center bg-primary text-white">Pengolahan Data Pegawai</div>
  <div class="card-body table-responsive">

<a href="dai.php" class="btn-sm btn-info fa fa-plus-circle">   </a>
       <p>
        <table id="example1" class="table table-striped table-bordered table-hover bg-active">  
           <thead>  
            <tr class="bg-primary text-center"> 
               <th style="vertical-align: middle"> No </th>	
               <th style="vertical-align: middle">Foto</th>	
               <th style="vertical-align: middle">Nama / NIP / Karpeg/ Jenis Kelamin/ Status</th> 
               <th style="vertical-align: middle">Tempat, Tanggal Lahir</th> 
               <th style="vertical-align: middle">Kualifikasi</th>
               
              <th style="vertical-align: middle">Alamat</th>
               <th style="vertical-align: middle">Aksi</th>
            </tr>
           </thead>

        <?php
          $no=0;
 
          $query = "SELECT *, mst_kualifikasi.id_mst_kualifikasi, mst_status.id_mst_status
          FROM dtawal 
          LEFT JOIN  mst_kualifikasi ON mst_kualifikasi.id_mst_kualifikasi=dtawal.kualifikasi
          LEFT JOIN mst_status ON mst_status.id_mst_status=dtawal.statuspegawai
          ORDER BY tanggal_lahir";
          $sql=mysqli_query($conn,$query);
          while ($hasil=mysqli_fetch_array($sql))
          {
            $no++;
            $tgl_lahir=$hasil['tanggal_lahir'];
            $tanggal_lahir = tanggal_indo($tgl_lahir);

            $tahun=date('Y');
            $thnlahir=date('Y',strtotime($tgl_lahir));
            $umur=$tahun-$thnlahir;

            echo "
	           <tr>
	             <th class=text-center>$no</th> ";
	          echo " <th> <a href='dap.php?n=".$hasil['nip']."' data-toggle='tooltip' title='Klik untuk lihat data pribadi!'> <img src='../assets/images/".$hasil['foto']."'  width='70' height='90'> </th>  </a>
              <th>".$hasil['gelardepan']." ".$hasil['nama'].". ".$hasil['gelarbelakang']." ($umur thn) <br> ".$hasil['nip']." <br> ".$hasil['karpeg']." <br> ".$hasil['jeniskelamin']. "<br>     ".$hasil['status']."   </th>
	             <th>" .$hasil['tempatlahir']. " , $tanggal_lahir</th>
               <th>" .$hasil['kualifikasi']. "  </th> 
               <th>" .$hasil['alamat']. "</th> "; 
            ?>
              <th>
                <a href="dah.php?n=<?php echo "".$hasil['nip'] ; ?>" class="btn-sm btn-danger fas fa-fas fa-trash-alt" onclick="javascript:return confirm('Anda Yakin Akan Menghapus Data??')"></a>

                <a href="dae.php?n=<?php echo "".$hasil['nip'] ; ?>" class="btn-sm btn-warning fas fa-edit mt-2"> </a>
              </th>
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



<?php include "../footer.php"; ?>
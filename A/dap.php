<?php  include 'menuA.php'; 
  include '../assets/cssvic/fungsi.php';
  include '../link.php';
?>

<div class="alert alert-warning alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Peringatan!</strong>
  Jika ada kesalahan data, segera hubungi sub bagian kepegawaian dan keuangan Fakultas Teknik, untuk dilakukan proses perbaikan.
</div>

<?php 
     $nip=$_GET['n'];
     $queri="SELECT *, mst_kualifikasi.id_mst_kualifikasi, mst_kualifikasi.kualifikasi, mst_status.id_mst_status, mst_unitkerja.id_mst_unit, mst_jabatanf.id_mst_jabatanf, mst_pendidikan.id_mst_pendidikan
               FROM dtawal
               JOIN mst_kualifikasi ON  mst_kualifikasi.id_mst_kualifikasi=dtawal.kualifikasi
               JOIN mst_status ON mst_status.id_mst_status=dtawal.statuspegawai
               JOIN mst_unitkerja ON mst_unitkerja.id_mst_unit=dtawal.unitkerja
               JOIN mst_jabatanf ON mst_jabatanf.id_mst_jabatanf=dtawal.jabatanf
               JOIN mst_pendidikan ON mst_pendidikan.id_mst_pendidikan=dtawal.pendidikanakhir
               WHERE nip='$nip'";
    $sql=mysqli_query($conn,$queri);
    $hasil=mysqli_fetch_assoc($sql);

    $tgl_lahir=$hasil['tanggal_lahir'];
    $tanggal_lahir = tanggal_indo($tgl_lahir);


?>
<div class="container-fluid mb-5">

<div class="card">
  <div class="card-header bg-primary text-white text-center">Data Pribadi</div>
  <div class="card-body">
  <div class="row">
    <div class="col-md-3 mb-2">
            <?php 
            echo " <img src='../assets/images/".$hasil['foto']."'  width='240' height='300'  > " ?>
    </div>

        <div class="col-md-9">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#pribadi">Data Pribadi</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#pendidikan">Pendidikan</a></li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#kepegawaian">Kepegawaian</a></li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#pangkat">Pangkat/ Golongan</a></li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#jabatanf">Jabatan Fungsional</a></li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#unit">Unit Kerja</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content mt-3" >
                <div class="tab-pane container active" id="pribadi">
                <table class="table table-hover table-bordered"  style="color:black">
                <tr>
                    <th>NIP</th>
                    <td><?php echo $hasil['nip'] ?></td>
                </tr>
                <tr>
                    <th>NIP Lama</th>
                    <td><?php echo $hasil['niplama'] ?></td>
                </tr>
                <tr>
                    <th>NIDN</th>
                    <td><?php echo $hasil['nidn'] ?></td>
                </tr>
                <tr>
                    <th>Nama Lengkap</th>
                    <td><?php echo $hasil['nama'] ?></td>
                </tr>
                <tr>
                    <th>Gelar Depan</th>
                    <td><?php echo $hasil['gelardepan'] ?></td>
                </tr>
                <tr>
                    <th>Gelar Belakang</th>
                    <td><?php echo $hasil['gelarbelakang'] ?></td>
                </tr>
                <tr>
                    <th>Tempat Lahir</th>
                    <td><?php echo $hasil['tempatlahir'] ?></td>
                </tr>
                <tr>
                    <th>Tanggal Lahir</th>
                    <td><?php echo $tanggal_lahir ?></td>
                </tr>
                <tr>
                    <th>Jenis Kelamin</th>
                    <td><?php echo $hasil['jeniskelamin'] ?></td>
                </tr>
                <tr>
                    <th>Agama</th>
                    <td><?php echo $hasil['agama'] ?></td>
                </tr>
                <tr>
                    <th>Status Keluarga</th>
                    <td><?php echo $hasil['statuskeluarga'] ?></td>
                </tr>
                <tr>
                    <th>NPWP</th>
                    <td><?php echo $hasil['npwp'] ?></td>
                </tr>
                
                <tr>
                    <th>Handphone</th>
                    <td><?php echo $hasil['hp'] ?></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><?php echo $hasil['email'] ?></td>
                </tr>
                <tr>
                    <th>Alamat</th>
                    <td><?php echo $hasil['alamat'] ?></td>
                </tr>
                <tr>
                    <th>Kota</th>
                    <td><?php echo $hasil['kota'] ?></td>
                </tr>
                <tr>
                    <th>Kode Pos</th>
                    <td><?php echo $hasil['kodepos'] ?></td>
                </tr>
            </table>
            </div>

            <div class="tab-pane container fade" id="pendidikan">
            <table class="table table-hover table-bordered"  style="color:black">
                <tr>
                    <th>Pendidikan Terakhir</th>
                    <td><?php echo $hasil['jenjang'] ?></td>
                </tr>
                <tr>
                    <th>Nama Institusi</th>
                    <td><?php echo $hasil['namasekolah'] ?></td>
                </tr> 
                <tr>
                    <th>Jurusan</th>
                    <td><?php echo $hasil['jurusan'] ?></td>
                </tr> 
                <tr>
                <?php
                $tahunlulus=$hasil['tahunlulus'];
                $thnlulus = tanggal_indo($tahunlulus);
                ?>
                    <th>Tahun Lulus </th>
                    <td><?php echo $thnlulus ?></td>
                </tr>
                </table>
            </div>
                
            <div class="tab-pane container fade" id="kepegawaian">
            <table class="table table-hover table-bordered"  style="color:black">
                    <tr>
                        <th>Status Pegawai</th>
                        <td><?php echo $hasil['status'] ?></td>
                    </tr>
                    <tr>
                        <th>Kualifikasi</th>
                        <td><?php echo $hasil['kualifikasi'] ?></td>
                </tr>
                <tr>
                    <th>Karpeg</th>
                    <td><?php echo $hasil['karpeg'] ?></td>
                </tr>
                 </table>
            </div>
                
            <div class="tab-pane container fade" id="pangkat">
            <table id="" class="table table-striped table-bordered table-hover table-responsive"  style="color:black">  
                <thead class="text-white">  
                    <tr class="bg-primary text-center"> 
                    <th style="vertical-align: middle"> No </th>	
                    <th style="vertical-align: middle">Pangkat / Gol </th>
                    <th style="vertical-align: middle">Ditandatangani</th>
                    <th style="vertical-align: middle">Nomor SK</th>
                    <th style="vertical-align: middle">Tanggal SK</th>
                    <th style="vertical-align: middle">File</th>
                    </tr>
                </thead>
                <?php
                $no=0;
                $kueri="SELECT *, mst_golongan.id_mst_gol
                    FROM drpangkat
                    LEFT JOIN mst_golongan ON mst_golongan.id_mst_gol=drpangkat.golongan
                    WHERE nip=$nip
                    ORDER BY id_mst_gol DESC ";
                    
                    $code=mysqli_query($conn,$kueri);
                    if (mysqli_num_rows($code)>0) 
                    {
                    while ($nilai=mysqli_fetch_array($code))
                    {
                        $no++;
                        $tanggalsk=$nilai['tanggalsk'];
                        $tglsk = tanggal_indo($tanggalsk);
                ?>
                    <tr>
                    <td><?php echo $no ?></td>
                    <td><?php echo $nilai['pangkat']." / ". $nilai['nama_gol']  ?></td>
                    <td><?php echo $nilai['pejabat']   ?></td>
                    <td><?php echo $nilai['nomorsk']  ?></td>
                    <td><?php echo $tglsk  ?></td>
                    <td><a href='rpsk.php?f=<?php echo $nilai['filesk'];?>' target='blank'> <?php echo $nilai['filesk'];?> </a></td>
                    </tr>
               <?php } } ?> 
                </table>
            </div>
            
            <div class="tab-pane container fade" id="jabatanf">
            <table class="table table-hover table-bordered"  style="color:black">
                <tr>
                    <th>Jabatan Fungsional</th>
                    <td><?php echo $hasil['nama_jabatanf'] ?></td>
                </tr>
                <?php 
                $tmtjabatanf=$hasil['tmtjabatanf'];
                $tmtjf = tanggal_indo($tmtjabatanf);
                ?>
                <tr>
                    <th>TMT Jabatan Fungsional</th>
                    <td><?php echo $tmtjf ?></td>
                </tr>
                </table>
            </div>

            <div class="tab-pane container fade" id="unit">
            <table class="table table-hover table-bordered"  style="color:black">
                <tr>
                    <th>Unit Kerja</th>
                    <td><?php echo $hasil['subunit'] ?></td>
                </tr>
                </table>
            </div>
          
            </div>
        </div>
  </div>

</div>

</div>

<!-- end Container -->
</div>

<?php  include '../footer.php' ?>



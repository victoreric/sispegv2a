<?php  include 'menuA.php'; ?>

<!-- Begin Page Content -->
    <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h5 mb-0 text-gray-800">Dashboard</h1>
        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
    </div>

    <!-- Content Row -->
    <div class="row">
    <!-- Informasi -->
     <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Informasi Umum</h6>
                        </div>
                        <div class="card-body" style="color:black">
                            <p><b>Selamat datang</b> di Sistem Informasi Kepegawaian (Sispeg) Fakultas Teknik Universitas Pattimura.</p>
                            <p class="text-justify">Sispeg awal mulanya merupakan aplikasi sederhana untuk keperluan lingkup kepegawaian saja. Seiring berjalannya waktu, kebutuhan akan data pegawai semakin rumit sehingga "Sispeg" terus dikembangkan. Sampai saat ini "Sispeg" memiliki beberapa fitur seperti:
                                <ul>
                                    <li>Pengelolaan data pokok pegawai</li>
                                    <li>Riwayat Kepangkatan</li>
                                    <li>Statistik Kepegawaian</li>
                                </ul>
                            </p>
                            <p class="mb-0 text-justify">Pengembangan aplikasi selanjutnya, direncanakan akan melengkapi "Sispeg" dengan fitur sebagai berikut : Riwayat Keluarga, Riwayat Pendidikan, Riwayat Jabatan, Riwayat Diklat, Riwayat Capaian Kinerja, Riwayat Pembinaan dan Hukuman Disiplin, Riwayat Laporan Harta Kekayaan, Notifikasi KGB, KP dan Pensiun, Arsip digital pegawai, Pengelolaan Daftar Hadir, Pemilihan Pegawai Berprestasi, Bezetting (Persediaan Pegawai), Usul Formasi, serta Support Data Aplikasi lainnya.</p>
                        </div>
                    </div>
                    </div>

                    <div class="row">

                        <!-- Pegawai aktif Card  -->
                        <?php
                        $queri="SELECT * FROM dtawal WHERE statuspegawai='1'";
                        $sql=mysqli_query($conn,$queri);
                        $jum=mysqli_num_rows($sql);
                        ?>
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Total Pegawai Aktif</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jum; ?>
                                            <small>Orang</small>
                                        </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-user-plus fa-2x text-gray-30"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pegawai Pria Card -->
                        <?php
                        $queri="SELECT * FROM dtawal WHERE statuspegawai='1' AND jeniskelamin='Laki-Laki'";
                        $sql=mysqli_query($conn,$queri);
                        $jum=mysqli_num_rows($sql);
                    ?>
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Total Pegawai Laki-Laki</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jum ?>
                                            <small>Orang</small>
                                        </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-male fa-2x text-gray-30 "></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Total Pegawai Perempuan Card -->
                        <?php
                            $queri="SELECT * FROM dtawal WHERE statuspegawai='1' AND jeniskelamin='Perempuan'";
                            $sql=mysqli_query($conn,$queri);
                            $jum=mysqli_num_rows($sql);
                        ?>
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Total Pegawai Perempuan
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo $jum ?><small> Orang</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-female fa-2x text-gray-30"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- baris ke2 -->
                    <div class="row">

                        <!-- Kependidikan aktif Card  -->
                        <?php
                            $queri="SELECT * FROM dtawal WHERE statuspegawai='1' AND kualifikasi='1'";
                            $sql=mysqli_query($conn,$queri);
                            $jum=mysqli_num_rows($sql);
                        ?>
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                Total Tenaga Kependidikan Aktif</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jum; ?>
                                            <small>Orang</small>
                                        </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-user-plus fa-2x text-gray-30"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Kependidikan Pria Card -->
                        <?php
                            $queri="SELECT * FROM dtawal WHERE statuspegawai='1' AND kualifikasi='1' AND jeniskelamin='Laki-Laki'";
                            $sql=mysqli_query($conn,$queri);
                            $jum=mysqli_num_rows($sql);
                        ?>
                        
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Total Tenaga Kependidikan Laki-Laki</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jum ?>
                                            <small>Orang</small>
                                        </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-male fa-2x text-gray-30 "></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Kependidikan Pegawai Perempuan Card -->
                        <?php
                            $queri="SELECT * FROM dtawal WHERE statuspegawai='1' AND kualifikasi='1' AND jeniskelamin='Perempuan'";
                            $sql=mysqli_query($conn,$queri);
                            $jum=mysqli_num_rows($sql);
                        ?>
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Total Tenaga Kependidikan Perempuan
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo $jum ?><small> Orang</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-female fa-2x text-gray-30"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- endBaris ke-2 -->

                     <!-- baris ke3 -->
                     <div class="row">

                    <!-- Pendidik aktif Card  -->
                    <?php
                        $queri="SELECT * FROM dtawal WHERE statuspegawai='1' AND kualifikasi='2'";
                        $sql=mysqli_query($conn,$queri);
                        $jum=mysqli_num_rows($sql);
                    ?>
                    <div class="col-xl-4 col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            Total Tenaga Pendidik Aktif</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jum; ?>
                                        <small>Orang</small>
                                    </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fa fa-user-plus fa-2x text-gray-30"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pendidik Pria Card -->
                    <?php
                        $queri="SELECT * FROM dtawal WHERE statuspegawai='1' AND kualifikasi='2' AND jeniskelamin='Laki-Laki'";
                        $sql=mysqli_query($conn,$queri);
                        $jum=mysqli_num_rows($sql);
                    ?>

                    <div class="col-xl-4 col-md-6 mb-4">
                        <div class="card border-left-danger shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                            Total Tenaga Pendidik Laki-Laki</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jum ?>
                                        <small>Orang</small>
                                    </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fa fa-male fa-2x text-gray-30 "></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pendidik Perempuan Card -->
                    <?php
                        $queri="SELECT * FROM dtawal WHERE statuspegawai='1' AND kualifikasi='2' AND jeniskelamin='Perempuan'";
                        $sql=mysqli_query($conn,$queri);
                        $jum=mysqli_num_rows($sql);
                    ?>
                    <div class="col-xl-4 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Tenaga Pendidik Perempuan
                                        </div>
                                        <div class="row no-gutters align-items-center">
                                            <div class="col-auto">
                                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo $jum ?><small> Orang</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fa fa-female fa-2x text-gray-30"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <!-- endBaris ke-3 -->

                   
    <!-- /.container-fluid -->
 </div>
            <!-- End of Main Content -->



<?php include '../footer.php'; ?>
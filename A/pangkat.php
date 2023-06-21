<?php
include '../link.php';

// tampilkan golongan akhir dari setiap nip
// $queri="SELECT min(golongan) as gol_akhir, nip 
// FROM drpangkat
// group by nip
// ";
// $sql =  mysqli_query($conn,$queri);
// while ($hasil=mysqli_fetch_array($sql)){;
// echo $hasil['gol_akhir'] ."|". $hasil['nip'] ;
// echo "<br>";
// }


// tampilkan rekap golongan akhir dari pegawai
$queri="SELECT mst_golongan.id_mst_gol, mst_golongan.nama_gol, COUNT(drpangkat.nip) AS NumberOfOrders FROM drpangkat
LEFT JOIN mst_golongan ON drpangkat.golongan = mst_golongan.id_mst_gol
GROUP BY id_mst_gol
ORDER BY id_mst_gol
";
$sql =  mysqli_query($conn,$queri);

while ($hasil=mysqli_fetch_array($sql)){
echo $hasil['nama_gol'] ."|". $hasil['NumberOfOrders'] ;
echo "<br>";
}
?>  
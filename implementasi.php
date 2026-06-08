<?php
require_once 'Kendaraan.php';

$db = new Kendaraan();

// Contoh menambah data
$db->tambah('mobil_listrik', 'BYD', 'Seal', 2026, 700000000);

// Contoh menampilkan data
$data = $db->tampilkanSemua();
while($row = $data->fetch_assoc()) {
    echo $row['brand'] . " " . $row['model'] . "<br>";
}
?>
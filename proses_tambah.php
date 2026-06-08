<?php
require_once 'Kendaraan.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $db = new Kendaraan();
    
    $jenis = $_POST['jenis_kendaraan'];
    $brand = $_POST['brand'];
    $model = $_POST['model'];
    $tahun = $_POST['tahun'];
    $harga = $_POST['harga_dasar'];

    // Memanggil fungsi tambah dari Kendaraan.php
    $sukses = $db->tambah($jenis, $brand, $model, $tahun, $harga);

    if ($sukses) {
        header("Location: index.php"); // Kembali ke halaman utama setelah sukses
    } else {
        echo "Gagal menyimpan data.";
    }
}
?>
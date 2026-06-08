<?php
require_once 'Kendaraan.php';

$db = new Kendaraan();
$data = $db->tampilkanSemua();
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Inventaris Kendaraan Showroom</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>

    <h2>Daftar Inventaris Kendaraan</h2>
    <a href="tambah.php">+ Tambah Kendaraan Baru</a>
    <br><br>

    <table>
        <tr>
            <th>ID</th>
            <th>Jenis</th>
            <th>Brand</th>
            <th>Model</th>
            <th>Tahun</th>
            <th>Harga Dasar</th>
            <th>Aksi</th>
        </tr>
        <?php while($row = $data->fetch_assoc()) : ?>
        <tr>
            <td><?= $row['id_kendaraan']; ?></td>
            <td><?= $row['jenis_kendaraan']; ?></td>
            <td><?= $row['brand']; ?></td>
            <td><?= $row['model']; ?></td>
            <td><?= $row['tahun']; ?></td>
            <td>Rp <?= number_format($row['harga_dasar'], 0, ',', '.'); ?></td>
            <td>
                <a href="edit.php?id=<?= $row['id_kendaraan']; ?>">Edit</a> | 
                <a href="hapus.php?id=<?= $row['id_kendaraan']; ?>" onclick="return confirm('Yakin hapus?')">Hapus</a>
            </td>
        </tr>
        <?php endwhile; ?>
    </table>

</body>
</html>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Tambah Kendaraan</title>
</head>
<body>
    <h2>Tambah Kendaraan Baru</h2>
    <form action="proses_tambah.php" method="POST">
        <label>Jenis Kendaraan:</label><br>
        <select name="jenis_kendaraan">
            <option value="mobil_konvensional">Mobil Konvensional</option>
            <option value="mobil_listrik">Mobil Listrik</option>
            <option value="motor_besar">Motor Besar</option>
        </select><br><br>

        <label>Brand:</label><br>
        <input type="text" name="brand" required><br>

        <label>Model:</label><br>
        <input type="text" name="model" required><br>

        <label>Tahun:</label><br>
        <input type="number" name="tahun" required><br>

        <label>Harga Dasar:</label><br>
        <input type="number" name="harga_dasar" required><br><br>

        <button type="submit">Simpan Data</button>
    </form>
</body>
</html>
<?php
require_once 'Database.php';

class Kendaraan extends Database {

    // CREATE
    public function tambah($jenis, $brand, $model, $tahun, $harga) {
        $sql = "INSERT INTO kendaraan (jenis_kendaraan, brand, model, tahun, harga_dasar) VALUES (?, ?, ?, ?, ?)";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("sssdd", $jenis, $brand, $model, $tahun, $harga);
        return $stmt->execute();
    }

    // READ
    public function tampilkanSemua() {
        $sql = "SELECT * FROM kendaraan ORDER BY id_kendaraan ASC";
        return $this->conn->query($sql);
    }

    // UPDATE
    public function update($id, $brand, $model, $harga) {
        $sql = "UPDATE kendaraan SET brand = ?, model = ?, harga_dasar = ? WHERE id_kendaraan = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ssdi", $brand, $model, $harga, $id);
        return $stmt->execute();
    }

    // DELETE
    public function hapus($id) {
        // Karena relasi CASCADE, menghapus di 'kendaraan' otomatis menghapus data spesifik di tabel lain
        $sql = "DELETE FROM kendaraan WHERE id_kendaraan = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("i", $id);
        return $stmt->execute();
    }

    // Tambahkan di dalam kelas Kendaraan.php
    public function ambilById($id) {
    $sql = "SELECT * FROM kendaraan WHERE id_kendaraan = ?";
    $stmt = $this->conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    return $stmt->get_result()->fetch_assoc();
    }

    public function hapus($id) {
    $sql = "DELETE FROM kendaraan WHERE id_kendaraan = ?";
    $stmt = $this->conn->prepare($sql);
    $stmt->bind_param("i", $id);
    if ($stmt->execute()) {
        return true; // Berhasil
    } else {
        return false; // Gagal (bisa log error di sini)
    }
    }
}  
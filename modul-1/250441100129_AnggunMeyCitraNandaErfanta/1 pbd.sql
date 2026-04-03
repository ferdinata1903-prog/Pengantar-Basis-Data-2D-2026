CREATE DATABASE perpustakaan_digital;
USE perpustakaan_digital;

CREATE TABLE koleksi_langka (
    id_buku BIGINT NOT NULL ,
    judul VARCHAR (250) NOT NULL,
    tahun_terbit YEAR,
    estimasi_harga DECIMAL (15, 2),
    PRIMARY KEY (id_buku)
);
DESCRIBE koleksi_langka

CREATE TABLE pelanggan_setia (
    id INT  PRIMARY KEY,
    nomor_identitas INT NOT NULL,
    nama VARCHAR(100)
);
DESCRIBE pelanggan_setia
ALTER TABLE pelanggan_setia
MODIFY COLUMN nomor_identitas VARCHAR(20) NOT NULL




CREATE TABLE transaksi_harian (
    id INT PRIMARY KEY,
    jumlah INT NOT NULL
);

DESCRIBE transaksi_harian
TRUNCATE TABLE transaksi_harian
DROP TABLE transaksi_harian




CREATE TABLE umpan_balik (
    id INT PRIMARY KEY,
    pengguna VARCHAR(100) NOT NULL,
    isi_komentar TEXT NOT NULL,
    tanggal TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE umpan_balik

CREATE DATABASE db_soal3;
USE db_soal3;

CREATE TABLE transaksi_harian_1 (
    id_transaksi INT,
    total DECIMAL(10,2)
);

INSERT INTO transaksi_harian_1 VALUES (1, 10000.00);
INSERT INTO transaksi_harian_1 VALUES (2, 20000.00);

SELECT * FROM transaksi_harian_1;

TRUNCATE TABLE transaksi_harian_1;

SELECT * FROM transaksi_harian_1;

CREATE TABLE transaksi_harian_2 (
    id_transaksi INT,
    total DECIMAL(10,2)
);

DROP TABLE transaksi_harian_2;

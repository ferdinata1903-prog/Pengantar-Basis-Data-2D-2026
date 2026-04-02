CREATE DATABASE db_pelanggan;
USE db_pelanggan;

CREATE TABLE pelanggan_setia (
nomor_identitas INT
);

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);
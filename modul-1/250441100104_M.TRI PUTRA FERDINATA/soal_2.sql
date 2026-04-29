CREATE DATABASE db_soal2 ;
USE db_soal2 ;

CREATE TABLE pelanggan (
	id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
	nomor_identitas INT
);
ALTER TABLE pelanggan
	MODIFY nomor_identitas VARCHAR (20) ;`koleksi_langka`

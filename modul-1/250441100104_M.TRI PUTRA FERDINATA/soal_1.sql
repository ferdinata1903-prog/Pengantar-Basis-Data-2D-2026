CREATE DATABASE db_soal1 ;
USE db_soal1 ;

CREATE TABLE koleksi_langka (
	id_buku BIGINT PRIMARY KEY ,
	judul VARCHAR (250) NOT NULL ,
	tahun_terbit YEAR NOT NULL ,
	estimasi_harga DECIMAL(15, 2)
);

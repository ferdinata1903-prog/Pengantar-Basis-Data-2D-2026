-- No.1
CREATE DATABASE db_klinik;
USE db_klinik;

CREATE TABLE dokter (
	id_dokter INT PRIMARY KEY,
	nama_dokter VARCHAR (100),
	spesialisasi VARCHAR (100)
);

CREATE TABLE pasien (
	id_pasien INT PRIMARY KEY,
	nama_pasien VARCHAR (100),
	tanggal_lahir DATE,
	no_telepon VARCHAR (15)
);

CREATE TABLE rekam_medis (
	id_rekam INT PRIMARY KEY,
	id_pasien INT,
	id_dokter INT,
	tanggal_periksa DATE,
	diagnosis TEXT,
	FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
	FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);


-- No.2
INSERT INTO dokter VALUES 
	(1, 'Dr. Andi', 'Umum'),
	(2, 'Dr. Budi', 'Gigi');

INSERT INTO pasien VALUES 
	(1, 'Ferdi', '2006-03-19', '089680513691'),
	(2, 'Putri', '2005-05-30', '085176843691');

INSERT INTO rekam_medis VALUES 
	(1, 1, 1, '2026-01-01', 'Demam'),
	(2, 2, 2, '2026-01-02', 'Sakit Gigi');
	
INSERT INTO rekam_medis VALUES
	(3,1,99, '2026-02-03', 'Flu');
DESCRIBE dokter;
DESCRIBE pasien;
DESCRIBE rekam_medis;

-- No.3
UPDATE pasien 
SET no_telepon = '0812345678'
WHERE id_pasien = 1;

UPDATE dokter 
SET spesialisasi = 'Spesialis Dukun'
WHERE id_dokter = 1;

DELETE FROM rekam_medis 
WHERE id_rekam = 1;

-- No.4
CREATE TABLE rekam_medis_cascade (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);

INSERT INTO rekam_medis_cascade VALUES 
	(1, 1, 1, '2026-03-01', 'Demam'),
	(2, 2, 1, '2026-03-02', 'Flu');

DELETE FROM dokter
WHERE id_dokter = 1;

SELECT * FROM rekam_medis_cascade;


-- No.5
CREATE TABLE rekam_medis_restrict (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);

INSERT INTO rekam_medis_restrict VALUES 
(1, 1, 1, '2024-01-01', 'Demam'),
(2, 2, 2, '2024-01-02', 'Flu');

TRUNCATE TABLE rekam_medis_restrict;
TRUNCATE TABLE pasien;



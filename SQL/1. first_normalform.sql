-- Active: 1690037820527@@127.0.0.1@5432@kalbe_nutsde@public

-- 1NF Dataset

DROP TABLE IF EXISTS data_normalization;
CREATE TABLE data_normalization (
    kode_opname character varying(20) NOT NULL,
    tanggal_cek  DATE NOT NULL,
    id_produk character varying(50),
    nama_produk character varying(50),
    harga INT,
    jumlah_stok INT
);

--import CSV
COPY data_normalization
FROM '/Users/masendhy/Documents/rakamin/VIX/Kalbe Nutritionals Data Engineer/Kalbe_Nuts_DE/dataset/normalization.csv' DELIMITER ','
CSV HEADER;

--show table VALUES
SELECT * FROM data_normalization;

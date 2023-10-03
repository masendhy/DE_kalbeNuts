--create opname TABLE

DROP Table if EXISTS opname;
CREATE TABLE opname as
SELECT kode_opname, tanggal_cek, id_produk, jumlah_stok
FROM data_normalization;

SELECT * FROM opname;


--create obat TABLE
DROP TABLE IF EXISTS obat;

CREATE TABLE obat as
SELECT id_produk, nama_produk, harga
FROM data_normalization;

SELECT * FROM obat;
--create opname_stok TABLE

DROP TABLE IF EXISTS opname_stok;
CREATE TABLE opname_stok as
select kode_opname,id_produk,jumlah_stok from data_normalization

SELECT * FROM opname_stok

--CREATE tanggal_opname TABLE

DROP TABLE IF EXISTS tanggal_opname;
CREATE TABLE tanggal_opname as
select kode_opname,tanggal_cek from data_normalization
GROUP BY 1,2
ORDER BY 1;

SELECT * FROM tanggal_opname;
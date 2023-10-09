DROP TABLE IF EXISTS transaksi_penjualan;

CREATE TABLE transaksi_penjualan (
    id_transaksi VARCHAR(20) PRIMARY KEY NOT NULL,
    id_produk VARCHAR(20) NOT NULL,
    id_tanggal VARCHAR(20) NOT NULL,
    id_lokasi VARCHAR(20) NOT NULL,
    id_pelanggan VARCHAR(20) NOT NULL,
    nilai_transaksi INT NOT NULL,
    jumlah_transaksi INT NOT NULL
);

DROP TABLE IF EXISTS produk;

CREATE TABLE produk (
    id_produk VARCHAR(20) PRIMARY KEY NOT NULL,
    nama_obat VARCHAR(50) NOT NULL,
    deskripsi VARCHAR(50) NOT NULL,
    dibuat_oleh VARCHAR(50) NOT NULL
)

DROP TABLE IF EXISTS tanggal_produksi;

CREATE TABLE tanggal_produksi (
    id_tanggal VARCHAR(20) PRIMARY KEY NOT NULL,
    tanggal INT NOT NULL,
    bulan INT NOT NULL,
    tahun INT NOT NULL
)

DROP TABLE IF EXISTS lokasi;

CREATE TABLE lokasi (
    id_lokasi VARCHAR(20) PRIMARY KEY NOT NULL,
    toko VARCHAR(100) NOT NULL,
    kota VARCHAR(50) NOT NULL,
    provinsi VARCHAR(50) NOT NULL
)

DROP TABLE IF EXISTS pelanggan;

CREATE TABLE pelanggan (
    id_pelanggan VARCHAR(20) PRIMARY KEY NOT NULL,
    nama_pelanggan VARCHAR(50) NOT NULL,
    alamat VARCHAR(255) NOT NULL
)

--SET FOREIGN KEY
ALTER TABLE transaksi_penjualan ADD FOREIGN KEY (id_produk) REFERENCES produk(id_produk);
ALTER TABLE transaksi_penjualan ADD FOREIGN KEY (id_tanggal) REFERENCES tanggal_produksi(id_tanggal);
ALTER TABLE transaksi_penjualan ADD FOREIGN KEY (id_lokasi) REFERENCES lokasi(id_lokasi);
ALTER TABLE transaksi_penjualan ADD FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan);

DROP TABLE IF EXISTS Inventori;

CREATE TABLE Inventori (
    id_transaksi VARCHAR(20) PRIMARY KEY NOT NULL,
    id_produk VARCHAR(20) NOT NULL,
    id_tanggal VARCHAR(20)  NOT NULL,
    id_lokasi VARCHAR(20) NOT NULL,
    jumlah_stok INT NOT NULL
);
---set FOREIGN KEY
ALTER TABLE Inventori ADD FOREIGN KEY (id_produk) REFERENCES produk(id_produk);
ALTER TABLE Inventori ADD FOREIGN KEY (id_tanggal) REFERENCES tanggal_produksi(id_tanggal);
ALTER TABLE Inventori ADD FOREIGN KEY (id_lokasi) REFERENCES lokasi(id_lokasi);
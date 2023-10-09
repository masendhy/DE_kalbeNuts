--create select_product PROCEDURE

DROP PROCEDURE IF EXISTS show3nf;

CREATE PROCEDURE show3nf(produk_id text,produk_name text,produk_price integer)
LANGUAGE SQL
AS $$
INSERT INTO obat VALUES(produk_id,produk_name,produk_price);

$$ ;


CALL show3nf('KLBF200','Antangin',8000);

SELECT * FROM obat;
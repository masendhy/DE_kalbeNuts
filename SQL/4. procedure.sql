--create select_product PROCEDURE

DROP PROCEDURE IF EXISTS select_product;
CREATE PROCEDURE select_product()
    LANGUAGE sql
AS $$
        SELECT 
                *
        FROM data_normalization;
$$
CALL select_product();
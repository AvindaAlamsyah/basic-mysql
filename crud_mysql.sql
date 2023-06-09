# Recreate table products
DROP TABLE products;

CREATE TABLE products (
    id INT UNSIGNED NOT NULL,
    name VARCHAR(100),
    price INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)  ENGINE=INNODB;
# END recreate table products

# Add data
INSERT INTO products(id, name, price) 
VALUES (1, 'Laptop Dell i5', 6850000);
INSERT INTO products(id, name, price) 
VALUES (2, 'Laptop Huawei Matebook i7', 8500000), 
(3, 'Printer Canon MF244DW', 4500000);
SELECT 
    *
FROM
    products;
# END add data

# Add primary key
ALTER TABLE products ADD PRIMARY KEY (id);
SELECT 
    *
FROM
    products;
UPDATE products 
SET 
    price = 7000000
WHERE
    id = 1;
UPDATE products 
SET 
    price = price + 350000
WHERE
    id = 2;
DELETE FROM products 
WHERE
    id = 3;
    
SELECT 
    prod.*
FROM
    products AS prod;
SELECT 
    prod.name AS 'NAMA BARANG', prod.price AS 'HARGA BARANG'
FROM
    products AS prod;
ALTER TABLE products ADD COLUMN category VARCHAR(50) NOT NULL AFTER name;
UPDATE products 
SET 
    category = 'LAPTOP'
WHERE
    id IN (1 , 2);
SELECT 
    *
FROM
    products
WHERE
    category = 'LAPTOP'
        AND price > 7000000;
SELECT 
    *
FROM
    products
WHERE
    name LIKE '%dell%';
SELECT 
    *
FROM
    products
WHERE
    updated_at IS NULL;
# END alias and where operator

# Order by and limit
INSERT INTO products (id, name, price, category)
VALUES (3, 'Printer Canon MF244DW', 4250000, 'PRINTER'),
(4, 'Router TP-Link WR840N', 400000, 'ROUTER');
SELECT 
    *
FROM
    products
ORDER BY price ASC
LIMIT 2;
# END order by and limit

# Add auto increment on table
ALTER TABLE products MODIFY COLUMN id INT UNSIGNED AUTO_INCREMENT;
# END add auto increment on table

# Flow control function
SELECT 
    name,
    CASE category
        WHEN 'LAPTOP' THEN 'VALUABLE'
        ELSE 'NOT VALUABLE'
    END AS type
FROM
    products;
    
SELECT 
    name,
    price,
    IF(price <= 1000000,
        'MURAH',
        IF(price <= 5000000,
            'MAHAL',
            'TERLALU MAHAL')) AS tag
FROM
    products;
# END flow control function

# Group by and having clause
SELECT 
    category, COUNT(id) AS total, SUM(price) AS total_harga
FROM
    products
GROUP BY category
HAVING total > 1;
# END group by and having clause

# Add constraint
ALTER TABLE products ADD CONSTRAINT name_unique UNIQUE (name);
SELECT 
    *
FROM
    products;
INSERT INTO products(name, category, price) VALUES('Laptop Dell i5', 'LAPTOP', 9000000);
# END constraint
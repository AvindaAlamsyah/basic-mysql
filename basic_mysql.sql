# Show all databases
SHOW DATABASES;

# Create new database
CREATE DATABASE learn_basic;

# Select database to use
USE learn_basic;

# Create new table
CREATE TABLE barang (
    id INT,
    nama VARCHAR(100),
    harga INT,
    jumlah INT
)  ENGINE=INNODB;
DESCRIBE barang;
SHOW CREATE TABLE barang;
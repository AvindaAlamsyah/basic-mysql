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
# End create new table

# Edit created table
ALTER TABLE barang ADD COLUMN deskripsi TEXT;
ALTER TABLE barang ADD COLUMN test TEXT;
ALTER TABLE barang DROP COLUMN test;
ALTER TABLE barang MODIFY id INT NOT NULL;
ALTER TABLE barang MODIFY nama VARCHAR(200) NOT NULL;
ALTER TABLE barang MODIFY harga INT NOT NULL DEFAULT 0;
#End edit create table
# Show all databases
SHOW DATABASES;

# Create new database
CREATE DATABASE inventory_v1;

# Select database to use
USE inventory_v1;

CREATE TABLE products (
    id INT,
    name VARCHAR(50),
    price INT
)  ENGINE=INNODB;
DESCRIBE products;
SHOW CREATE TABLE products;
# End create new table

# Edit created table
ALTER TABLE products ADD COLUMN description TEXT;
ALTER TABLE products ADD COLUMN test TEXT;
ALTER TABLE products DROP COLUMN test;
ALTER TABLE products MODIFY id INT NOT NULL;
ALTER TABLE products MODIFY name VARCHAR(100) NOT NULL;
ALTER TABLE products MODIFY price INT DEFAULT 0;
#End edit create table
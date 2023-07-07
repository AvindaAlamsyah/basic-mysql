# Show all databases
SHOW DATABASES;

# Create new database
CREATE DATABASE it_ticket_v1;

# Select database to use
USE it_ticket_v1;

# Create new table
CREATE TABLE tickets (
    id INT,
    subject VARCHAR(200),
    content TEXT
)  ENGINE=INNODB;
DESCRIBE tickets;
SHOW CREATE TABLE tickets;
# End create new table

# Edit created table
ALTER TABLE tickets ADD COLUMN status VARCHAR(50);
ALTER TABLE tickets ADD COLUMN test TEXT;
ALTER TABLE tickets DROP COLUMN test;
ALTER TABLE tickets MODIFY id INT NOT NULL;
ALTER TABLE tickets MODIFY subject VARCHAR(200) NOT NULL;
ALTER TABLE tickets MODIFY content TEXT NOT NULL;
ALTER TABLE tickets MODIFY status VARCHAR(50) NOT NULL DEFAULT 'PENDING';
#End edit create table
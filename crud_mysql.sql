# Recreate table tickets
DROP TABLE tickets;
CREATE TABLE tickets (
    id INT UNSIGNED,
    subject VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    status ENUM('PENDING', 'PROCESS', 'COMPLETED') DEFAULT 'PENDING',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)  ENGINE=INNODB;
# END recreate table ticket

# Add data
INSERT INTO tickets(id, subject, content) 
VALUES (1, 'Membuat Fitur Filter', 'Mohon tambahkan fitur filter pada menu tiket');
INSERT INTO tickets(id, subject, content) 
VALUES (2, 'Membuat Fitur Search', 'Mohon tambahkan fitur search pada menu tiket'), 
(3, 'Menghilangkan Kolom Update At', 'Mohon hilangkan kolom update at pada menu tiket');
SELECT 
    *
FROM
    tickets;
# END add data
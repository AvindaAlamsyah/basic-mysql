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

# Add primary key
ALTER TABLE tickets ADD PRIMARY KEY (id);
SELECT 
    *
FROM
    tickets;
UPDATE tickets 
SET 
    status = 'PROCESS'
WHERE
    id = 1;
UPDATE tickets 
SET 
    content = CONCAT(content, '. Tepatnya pada halaman awal.')
WHERE
    id = 1;
DELETE FROM tickets 
WHERE
    id = 3;
    
# Alias and where operator
SELECT 
    tix.*
FROM
    tickets AS tix;
SELECT 
    tix.subject AS Judul, tix.content AS Detail
FROM
    tickets AS tix;
SELECT 
    *
FROM
    tickets
WHERE
    status <> 'PENDING'
        OR created_at <= NOW();
SELECT 
    *
FROM
    tickets
WHERE
    content LIKE '%search%';
SELECT 
    *
FROM
    tickets
WHERE
    updated_at IS NULL;
# END alias and where operator

# Order by and limit
INSERT INTO tickets (id, subject, content)
VALUES (4, 'Server Down', 'Mohon cek apakah server saat ini sedang down'),
(5, 'Tambahkan Email', 'Mohon buat email baru dengan alamat admin@example.com');
UPDATE tickets 
SET 
    status = 'COMPLETED'
WHERE
    id = 4;
SELECT 
    *
FROM
    tickets
ORDER BY status DESC
LIMIT 2;
# END order by and limit
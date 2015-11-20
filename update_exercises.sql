USE codeup_test_db;

SELECT name AS 'All albums in my table' FROM albums;

SELECT name AS 'Title', release_date AS 'All albums released before 1980' 
FROM albums 
WHERE release_date < 1980;

SELECT name AS 'All albums by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET sales = sales * 10;
SELECT name as 'Title', sales AS 'New Sales' 
FROM albums;

ALTER TABLE albums
MODIFY COLUMN release_date INT;

UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;
SELECT name AS 'Title', release_date AS 'Now Released'
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist AS 'New Jackson'
FROM albums
WHERE artist = 'Peter Jackson';


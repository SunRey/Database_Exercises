USE codeup_test_db;

SELECT name AS 'Albums released after 1991'
FROM albums 
WHERE release_date > 1991;

SELECT name AS 'Albums with the disco'
FROM albums
WHERE genre like '%disco%';

SELECT name AS 'Albums by the artist Pink Floyd'
FROM albums
WHERE artist = 'Pink Floyd';

DELETE FROM albums
WHERE release_date > 1991;
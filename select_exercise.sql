USE codeup_test_db;

SELECT 'Album' AS 'Pink Floyd:';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'In 1977' AS 'Albums released:';
SELECT * FROM albums WHERE release_date = 1977;

SELECT 'IS' AS 'Fleetwood Mac''s';
SELECT genre FROM albums WHERE name = 'Rumors';

SELECT 'Records sold' AS 'Millions of';
SELECT * FROM albums WHERE sales > 20;

SELECT 'In the 90''s' AS 'Albums sold';
SELECT * FROM albums WHERE release_date BETWEEN 1990 and 1999;

SELECT 'Rock Albums' AS 'All the';
SELECT * FROM albums WHERE genre LIKE '%rock%';


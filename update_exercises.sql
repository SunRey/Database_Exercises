USE codeup_test_db;

SELECT name AS 'All albums in my table' FROM albums;

SELECT name AS 'Title', release_date AS 'All albums released before 1980' 
FROM albums 
WHERE release_date < 1980;

SELECT name AS 'All albums by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';




USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums( artist, name, release_date, sales, genre )
VALUES ( 'Michael Jackson', 'Thriller', 1982, 43.3, 'Pop, rock, R&B'),
    ( 'AC/DC', 'Back in Black', 1980, 25.9, 'Hard Rock'),
    ( 'Pink Floyd', 'The Dark Side of the Moon', 1973, 22.7, 'Progressive Rock'),
    ( 'Whitney Houston', 'The Bodyguard', 1992, 27.4, 'R&B, soul, pop'),
    ( 'Meat Loaf', 'Bat Out of Hell', 1977, 20.6, 'Hard rock'),
    ( 'Eagles', 'Their Greatest Hits', 1976, 32.2, 'Rock, soft rock'),
    ( 'Bee Gees', 'Saturday Night Fever', 1977, 19.0, 'Disco'),
    ( 'Fleetwood Mac', 'Rumors', 1977, 27.9, 'Soft rock');
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(75) NOT NULL,
    name VARCHAR(100) NOT NULL, 
    release_date YEAR(4) NOT NULL,
    sales DOUBLE,
    genre VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);
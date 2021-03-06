DROP DATABASE IF EXISTS movie_db:
CREATE DATABASE movie_db;

USE movie_db;

CREATE TABLE reviews(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rating VARCHAR(100) NOT NULL
);

CREATE TABLE movies (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_name VARCHAR(30) NOT NULL,
    review INT,
    FOREIGN KEY (review)
    REFERENCES reviews(id)
    ON DELETE SET NULL
);
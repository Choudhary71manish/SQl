CREATE DATABASE BOOK ;

/* USE BOOK; */

CREATE TABLE bookS (
  book_id INT PRIMARY KEY AUTO_INCREMENT,  /* Auto-incrementing integer for unique ID */
  title VARCHAR(255) NOT NULL,
  isbn VARCHAR(13) UNIQUE,  /* Unique identifier for each book */
  publication_year INT,
  author_id INT,  /* Foreign key referencing the Author table */
  FOREIGN KEY (author_id) REFERENCES author(author_id)
);

CREATE TABLE author (
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  /* Additional columns for author information (optional) */
  /*  e.g., email VARCHAR(100), biography TEXT */
);

/* ITS WRITE AT LOCAL SYSTEM 
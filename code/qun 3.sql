 CREATE TABLE Series (
     series_id INT PRIMARY KEY,
     title VARCHAR(255),
     genre VARCHAR(100)
 );

 CREATE TABLE Episodes (
     episode_id INT PRIMARY KEY,
     series_id INT,
     episode_number INT,
     title VARCHAR(255),
     FOREIGN KEY (series_id) REFERENCES Series(series_id)
 );

 CREATE TABLE Actors (
     actor_id INT PRIMARY KEY,
     actor_name VARCHAR(255),
     dob DATE
 );
 CREATE TABLE Directors (
     director_id INT PRIMARY KEY,
     director_name VARCHAR(255),
     nationality VARCHAR(100)
 );

 INSERT INTO Series(series_id, title, genre)
 VALUES
       (1, 'UNRATE', 'crime'),
       (2, 'GNPCA', 'mistery'),
      (3, 'GST', 'adventure');

 INSERT INTO Episodes(episode_id, series_id, episode_number, title)
 VALUES
       (1, 1, 101, 'MEET IN LOVE'),
       (2, 2, 102, 'Making the case'),
       (3, 3, 111, 'Driving miss Hazy');

 INSERT INTO Actors(actor_id, actor_name, dob)
 VALUES
       (1, 'MEET', '1987-02-05'),
      (2, 'JOHN', '1890-05-08'),
      (3, 'JAMES', '1980-09-10');

INSERT INTO Directors(director_id, director_name, nationality)
VALUES
      (1, 'JOHN STEVENS', 'CANADIAN'),
      (2, 'JAMES GRANT', 'USA'),
      (3, 'TAAKA ESTHER', 'UK');

SELECT
      Series.series_id,
      Episodes.title AS episode_title,
      Series.genre
FROM
    Series
INNER JOIN Episodes
     ON Series.series_id = Episodes.series_id;
A primary key is a unique identifier for each record (row) in a database table
A foreign key is a column or a set of columns in a database table that establishes a relationship with a primary key or a unique key in another table.

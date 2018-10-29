DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);


INSERT INTO people (name) VALUES ('Alexander Clements');
INSERT INTO people (name) VALUES ('Graeme Congreve');
INSERT INTO people (name) VALUES ('Christina Davies');
INSERT INTO people (name) VALUES ('Rebekah Dixon');
INSERT INTO people (name) VALUES ('Malcolm Finlayson');
INSERT INTO people (name) VALUES ('Catriona Ford');
INSERT INTO people (name) VALUES ('Ernest Fraiman');
INSERT INTO people (name) VALUES ('David Fulton');
INSERT INTO people (name) VALUES ('Ray Greenan');
INSERT INTO people (name) VALUES ('Ross Hancock');
INSERT INTO people (name) VALUES ('Chris Jennings');
INSERT INTO people (name) VALUES ('Steven Kay');
INSERT INTO people (name) VALUES ('Laura Manson');
INSERT INTO people (name) VALUES ('Nick Fury');
INSERT INTO people (name) VALUES ('Borna Maticic');
INSERT INTO people (name) VALUES ('Kevin McEwan');
INSERT INTO people (name) VALUES ('Thomas McPhee');
INSERT INTO people (name) VALUES ('Christopher Milligan');
INSERT INTO people (name) VALUES ('James Mundie');
INSERT INTO people (name) VALUES ('Jake Thwaites');
INSERT INTO people (name) VALUES ('Robin Willson');
INSERT INTO people (name) VALUES ('Paul Wishart');


INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '23:20');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '20:35');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '16:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '21:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '13:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '14:55');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '21:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '12:50');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '12:30');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:05');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:10');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '13:50');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '18:35');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '20:15');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '17:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '18:20');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '20:10');





--1. Return ALL the data in the 'movies' table.
--SELECT * FROM movies;

--2. Return ONLY the name column from the 'people' table
--SELECT name FROM people;

--3. Oops! Someone at CodeClan spelled Rob's name wrong! Change it to reflect the proper spelling ('Robin Willson' should be 'Rob Wilson').
--UPDATE people SET name = 'Rob Wilson' WHERE  name = 'Robin Willson';

--4. Return ONLY your name from the 'people' table.
--SELECT name FROM people WHERE name = 'Ray Greenan';

--5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
--DELETE FROM movies WHERE title = 'Batman Begins';

--6. Create a new entry in the 'people' table with the name of one of the instructors.
--INSERT INTO people ( name ) VALUES ( 'Pawel Orzechowski');

--7. Nick Fury has decided to hijack our movie evening, Remove him from the table of people.
--DELETE FROM people WHERE name = 'Nick Fury';

--8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.
--INSERT INTO movies ( title, year, show_time ) VALUES ( 'Avengers: Infinity War', 2018, '00:00' );

--9. The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
--INSERT INTO movies ( title, year, show_time ) VALUES ( 'Guardians of the Galaxy 2', 2018, '14:30' );


--ext. Research how to delete multiple entries from your table in a single command.
--DELETE FROM characters;   --deletes all characters
--DELETE FROM movies WHERE year <= 2014;  --deletes all movies with 'year' less than 2014

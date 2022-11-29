DROP DATABASE my_projects;
CREATE DATABASE my_projects;
USE my_projects;

CREATE TABLE clients (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(15),
  surname varchar(25),
  sizeLash double,
  countVisits int,
  discount int,
  PRIMARY KEY (id)
) ;

INSERT INTO my_projects.clients (name, surname, sizeLash, countVisits, discount)
VALUES
	('Olga', 'Eliseeva', 2.5, 1, 1),
	('Yuliya', 'Martova', 3.0, 4, 4),
	('Irina', 'Pochueva', 1.5, 10, 10);
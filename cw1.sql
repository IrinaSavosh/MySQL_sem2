-- Создание таблицы(сущности) со столбцами (атрибутами)
CREATE TABLE movies(
	id INT UNIQUE auto_increment,
	title varchar(45) not null,
	title_eng varchar(45) null,
    year_movie INT not null,
    count_min int,
    storyline text);


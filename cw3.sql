-- Операции с таблицами. Задачи
RENAME TABLE movies TO cinema;

-- Добавить сущности cinema новый атрибут status_active (тип BIT) и атрибут genre_id после атрибута title_eng.
ALTER TABLE cinema
ADD COLUMN status_active BIT,
ADD COLUMN genre_id INT AFTER title_eng;

-- Удалить атрибут status_active сущности cinema. 
ALTER TABLE cinema
DROP COLUMN status_active;

CREATE TABLE if not exists actors (
id INT UNIQUE auto_increment,
title varchar(45) not null,
title_eng varchar(45),
year_movie int not null,
count_min int null,
storyline text);
-- Удалить сущность actors из базы данных
DROP TABLE actors;

-- Добавить внешний ключ на атрибут genre_id сущности cinema и направить его на атрибут id сущности genres.
CREATE TABLE if not exists genres (
id INT PRIMARY KEY auto_increment,
name varchar(45) not null
);

ALTER TABLE cinema
ADD foreign key (genre_id) REFERENCES genres(id);

-- Очистить сущность genres от данных и обнулить автоинкрементное  поле.
TRUNCATE TABLE genres;
-- Задача 3. Выведите id, название фильма 
-- и категорию фильма, согласно следующего 
-- перечня:
select id "Номер",
title "Название фильма",
case
	WHEN year_movie BETWEEN 2000 AND 2009
		THEN "2000-е"
	WHEN year_movie BETWEEN 1990 AND 1999
		THEN "1990-е"
	WHEN year_movie BETWEEN 1980 AND 1989
		THEN "1980-е"
END as "Эпоха"
from cinema;
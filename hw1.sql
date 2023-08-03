-- Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
CREATE TABLE sales(
	id INT UNIQUE auto_increment,
	order_date date not null,
	count_product int not null);

insert into sales (order_date, count_product) values 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

select * from sales;
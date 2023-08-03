-- Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE

CREATE TABLE orders(
	id INT UNIQUE auto_increment,
	emploee_id varchar(45) not null,
	amount decimal(5,2) not null,
    order_status varchar(45) not null);

insert into orders (emploee_id, amount, order_status) values 
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

SELECT id, order_status,
    CASE
    WHEN order_status = "OPEN"
    THEN "Order is in open state."
    WHEN order_status = "CLOSED"
    THEN "Order is closed."
    ELSE "Order is cancelled."
    END AS full_status
    FROM orders;
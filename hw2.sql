-- Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.

select id "Номер",
IF (count_product < 100, "Маленький заказ", 
IF (count_product >= 100 AND count_product < 300, "Средний заказ", "Большой заказ")) as "Order_type"
FROM sales;
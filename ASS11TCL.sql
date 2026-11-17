create table lab_products (
product_sku varchar(50)primary key, 
product_serial_code varchar(100) not null,
wholesale_cost decimal(10,2)
);
insert into lab_products
(product_sku, product_serial_code, wholesale_cost)
values
('SKU-100', 'SER-999-AAA', 45.00),
('SKU-200', 'SER-888-BBB', 120.50);
select * from lab_products;
create index idx_products_serial
on lab_products(product_serial_code);
SELECT *
FROM lab_products
WHERE product_serial_code = 'SER-888-BBB';

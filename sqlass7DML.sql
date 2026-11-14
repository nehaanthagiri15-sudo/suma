create table inventory_target (
item_id int primary key,
item_name varchar(50),
stock_qty int
);
insert into inventory_target
values
(1, 'Ergonomic Keyboard', 150),
(2, 'Bluetooth Mouse', 300),
(3, 'USB Hub', 80),
(4,'Wireless Mouse',200),
(5,'Gaming Keyboard',100);
select * from inventory_target
-------------LIKE=PATTERN(case sensitive matching)--------
select * from inventory_target
where item_name like '%USB';
select * from inventory_target
where item_name like '%Mouse';
select * from inventory_target
where item_name like '%Keyboard%';

--------ILIKE=(case insensitive matching)------
select * from inventory_target
where item_name ilike '%keyboard%';

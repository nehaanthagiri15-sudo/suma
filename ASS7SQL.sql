CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  country VARCHAR(50)
);
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  price DECIMAL(10,2)
);
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT, -- Note: Contains NULLs for guest checkouts
  product_id INT,
  order_date DATE
);
INSERT INTO customers
VALUES 
(1,'ALICE SMITH','USA'),
(2,'Bob jones','canada'),
(3,'charlie brown','UK'),
(4,'Diana prince','USA');

INSERT INTO products VALUES
(101,'LAPTOP',1200.00),
(102,'Smartphone',800.00),
(103,'wireless headphones',150.00),
(104,'Tablet',400.00);

INSERT INTO orders VALUES
(5001,1,101,'2026-06-01'),
(5002,2,'102','2026-06-02'),
(5003,1,'103','2026-06-04');

--inner join—--excludes guest checkouts and understand prodducts, returning only matched orders.

select 
orders.order_id,
customers.customer_name,
products.product_name,
products.product_id,
customers.customer_id
from
customers
inner join orders
on customers.customer_id=orders.customer_id
inner join products
on products.product_id=orders.product_id;
select * from orders;
select * from customers;
select * from products;


---left join---keeps all register customers even if they have not placed any orders 
 
select 
customers.customer_name,
orders.order_id
from
customers
left join orders
on orders.customer_id=customers.customer_id;

--right join—includes all products even if they never been ordered by any customer

select 
products.product_name,
orders.order_id
from products
right join orders
on orders.product_id=products.product_id;

--full outer join—---retrives all records from both tables, showing unmatched customers and guest checkouts.

SELECT
customers.customer_id,
customers.customer_name,
orders.order_id
FROM customers
FULL OUTER JOIN
orders
ON customers.customer_id = orders.customer_id;

----cross join—--generates a cartesian product combining every customer with every product without conditions.

select 
customers.customer_id,
products.product_id
from customers 
cross join products;



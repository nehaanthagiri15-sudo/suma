CREATE TABLE LAB_TRANSACTIONS(
   tx_id INT PRIMARY KEY,
   account_holder VARCHAR(50),
   tx_amount DECIMAL(8,2)
);
 SELECT * FROM LAB_TRANSACTIONS;
 INSERT INTO LAB_TRANSACTIONS VALUES
 (1, 'Alice', 1200.00),
(2, 'Bob', 150.00),
(3, 'Charlie', 3100.00),
(4, 'David', 450.00);

------Extract accounts whose transactions are above the average transaction value.-------
----(subqurey)------
SELECT account_holder, tx_amount
from LAB_TRANSACTIONS
WHERE tx_amount>(
    select avg(tx_amount)
from lab_transactions);
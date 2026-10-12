CREATE TABLE lab_staff (
    staff_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    staff_name VARCHAR(50),
    performance_score INT
);
INSERT INTO lab_staff VALUES
(101, 'Sales', 'Arjun', 95),
(102, 'Sales', 'Priya', 95),
(103, 'Sales', 'Rahul', 88),
(104, 'Support', 'Sneha', 92);

select
staff_id,dept_name,staff_name,performance_score,
rank() over (partition by dept_name order by performance_score desc) as rnk,
dense_rank() over (partition by dept_name order by performance_score desc)as dnrk
from lab_staff;
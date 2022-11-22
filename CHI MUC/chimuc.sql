#[Thực hành] Chỉ mục trong MySql
USE classicmodels;
explain select * 
from customers 
where customerName = "Land of Toys Inc.";

ALTER TABLE customers ADD INDEX idx_customerName(customerName);
EXPLAIN SELECT * 
FROM customers
WHERE customerName = "Land of Toys Inc.";

ALTER TABLE customers ADD INDEX idx_fullname(contactFirstName, contactLastName);
EXPLAIN SELECT * FROM customers WHERE contactFirstName = "Jean" or contactFirstName = "King";

ALTER TABLE customers DROP INDEX idx_fullname;
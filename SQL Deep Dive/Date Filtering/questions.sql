/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT * FROM employees
  WHERE EXTRACT(YEAR FROM AGE(birt_date)) > 60;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT COUNT(employee_id) FROM employees
  WHERE EXTRACT(MONTH FROM AGE(hired)) = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT COUNT(employee_id) FROM employees
  WHERE EXTRACT(MONTH FROM AGE(birth_date)) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT MAX(EXTRACT(YEAR FROM AGE(birth_date))) FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT COUNT(order_id) FROM orders
  WHERE TO_CHAR(date_order, 'MM-YYYY') = '01-2004';


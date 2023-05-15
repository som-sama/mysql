CREATE TABLE Employee(
    emp_name VARCHAR(30),
    emp_id int primary key,
    emp_address VARCHAR(10),
    DOJ DATE,
    emp_dept VARCHAR(50),
    salary FLOAT
);



-- i. Insert atleast 10 records of your own choice.


INSERT INTO Employee () VALUES
('Akshay', 1, 'Delhi', '2005-05-12', 'Sales', 20000),
('Amit', 2, 'Mumbai', '2007-08-20', 'Sales', 25000),
('Rajesh', 3, 'Bangalore', '2010-03-06', 'Sales', 30000),
('Sneha', 4, 'Chennai', '2012-09-14', 'HR', 35000),
('Aarti', 5, 'Hyderabad', '2014-11-02', 'Sales', 40000),
('Nikhil', 6, 'Silchar', '2015-06-22', 'IT', 45000),
('Amitabh', 7, 'Masimpur', '2017-02-11', 'Finance', 5000),
('Shreya', 8, 'Karimganj', '2018-09-09', 'Sales', 55000),
('Vijay', 9, 'Mohanpur', '2019-07-04', 'Finance', 60000),
('Kavita', 10, 'Silchar', '2022-01-01', 'Sales', 65000);



-- ii. Display the all information of employee.

SELECT * from employee;

-- Output: 

# emp_name	emp_id	emp_address	DOJ	emp_dept	salary
'Akshay'	1	'Delhi'	'2005-05-12'	'Sales'	'20000'
'Amit'	2	'Mumbai'	'2007-08-20'	'Sales'	'25000'
'Rajesh'	3	'Bangalore'	'2010-03-06'	'Sales'	'30000'
'Sneha'	4	'Chennai'	'2012-09-14'	'HR'	'35000'
'Aarti'	5	'Hyderabad'	'2014-11-02'	'Sales'	'40000'
'Nikhil'	6	'Silchar'	'2015-06-22'	'IT'	'45000'
'Amitabh'	7	'Masimpur'	'2017-02-11'	'Finance'	'5000'
'Shreya'	8	'Karimganj'	'2018-09-09'	'Sales'	'55000'
'Vijay'	9	'Mohanpur'	'2019-07-04'	'Finance'	'60000'
'Kavita'	10	'Silchar'	'2022-01-01'	'Sales'	'65000'


-- iii. Display the name and data of joining of all the employees.

SELECT emp_name,DOJ from employee;


-- Output: 

# emp_name	DOJ
'Akshay'	'2005-05-12'
'Amit'	'2007-08-20'
'Rajesh'	'2010-03-06'
'Sneha'	'2012-09-14'
'Aarti'	'2014-11-02'
'Nikhil'	'2015-06-22'
'Amitabh'	'2017-02-11'
'Shreya'	'2018-09-09'
'Vijay'	'2019-07-04'
'Kavita'	'2022-01-01'



-- iv. Display the information of employees who joined before 2010.

SELECT * from employee
WHERE YEAR(DOJ) < 2010;

-- Output: 

# emp_name	emp_id	emp_address	DOJ	emp_dept	salary
'Akshay'	1	'Delhi'	'2005-05-12'	'Sales'	'20000'
'Amit'	2	'Mumbai'	'2007-08-20'	'Sales'	'25000'



-- v. Delete the information of employee who lives in ‘Mohanpur’.


DELETE FROM employee 
WHERE emp_address = 'Mohanpur';

-- Output: 


# emp_name	emp_id	emp_address	DOJ	emp_dept	salary
'Akshay'	1	'Delhi'	'2005-05-12'	'Sales'	'20000'
'Amit'	2	'Mumbai'	'2007-08-20'	'Sales'	'25000'
'Rajesh'	3	'Bangalore'	'2010-03-06'	'Sales'	'30000'
'Sneha'	4	'Chennai'	'2012-09-14'	'HR'	'35000'
'Aarti'	5	'Hyderabad'	'2014-11-02'	'Sales'	'40000'
'Nikhil'	6	'Silchar'	'2015-06-22'	'IT'	'45000'
'Amitabh'	7	'Masimpur'	'2017-02-11'	'Finance'	'5000'
'Shreya'	8	'Karimganj'	'2018-09-09'	'Sales'	'55000'
'Kavita'	10	'Silchar'	'2022-01-01'	'Sales'	'65000'



-- vi. Show the details of the employee whose name starts with s.


select * FROM  employee 
where emp_name like 's%';

-- Output: 


# emp_name	emp_id	emp_address	DOJ	emp_dept	salary
'Sneha'	4	'Chennai'	'2012-09-14'	'HR'	'35000'
'Shreya'	8	'Karimganj'	'2018-09-09'	'Sales'	'55000'



-- vii. Arrange the employee table in ascending of their salary.


SELECT *  from employee ORDER BY Salary ASC;

-- Output: 


# emp_name	emp_id	emp_address	DOJ	emp_dept	salary
'Amitabh'	7	'Masimpur'	'2017-02-11'	'Finance'	'5000'
'Akshay'	1	'Delhi'	'2005-05-12'	'Sales'	'20000'
'Amit'	2	'Mumbai'	'2007-08-20'	'Sales'	'25000'
'Rajesh'	3	'Bangalore'	'2010-03-06'	'Sales'	'30000'
'Sneha'	4	'Chennai'	'2012-09-14'	'HR'	'35000'
'Aarti'	5	'Hyderabad'	'2014-11-02'	'Sales'	'40000'
'Nikhil'	6	'Silchar'	'2015-06-22'	'IT'	'45000'
'Shreya'	8	'Karimganj'	'2018-09-09'	'Sales'	'55000'
'Kavita'	10	'Silchar'	'2022-01-01'	'Sales'	'65000'


-- viii.Display the name and id of the employee whose salary is in between 20,000 and
30,000.



SELECT emp_name,emp_id FROM employee
WHERE Salary BETWEEN 20000 and 30000;

-- Output: 


# emp_name	emp_id
'Akshay'	1
'Amit'	2
'Rajesh'	3


-- ix. Show the average salary of the employee.

select FORMAT( AVG(salary),2) as avg_salary from employee;  

-- Output: 


# avg_salary
'35,555.56'



-- x. Find the details of the employee who received highest salary

select *  from employee 
where Salary = (select MAX(salary) from employee); 

-- Output: 


# emp_name	emp_id	emp_address	DOJ	emp_dept	salary
'Kavita'	10	'Silchar'	'2022-01-01'	'Sales'	'65000'


-- xi. Find the number of employees of each department.

SELECT emp_dept, COUNT(*) as num_employees
FROM employee
GROUP BY emp_dept;


-- Output: 


# emp_dept	num_employees
'Sales'	6
'HR'	1
'IT'	1
'Finance'	1


-- xii. Display departments with more than 5 employees


SELECT emp_dept, COUNT(*) as num_employees
from employee
GROUP BY  emp_dept
HAVING num_employees > 5;


-- Output: 


# emp_dept	num_employees
'Sales'	6

1. Write a query to list all the employees who are working as clerk?
 >SELECT ename,empno, job
FROM EMP
WHERE JOB LIKE '%CLERK%';

2.Write a query to list the employees who are working as clerks or manager? 
>SELECT ename,empno, job
FROM EMP
WHERE JOB IN ('CLERK','MANAGER');

3.Write a query to get the current date? 
>SELECT CURRENT_DATE( );

4.Write a query to list the employees whose salaries are within the range of 500 and 1000?
>SELECT ename, empno, sal 
FROM emp
WHERE sal BETWEEN 500 AND 
1000;

5.Write a query to list the employees who have joined in the month of December?
>SELECT ename, empno, hiredate
FROM emp
WHERE MONTH(hiredate)=12;

6.Write a query to list the employees whose salaries are not within  the range of 1000 and 2500? 
>SELECT ename, empno, sal, comm 
FROM emp
WHERE sal NOT IN (1000,2500);

7.Write a query who are getting 800, 950, 3000,5000?
>SELECT ename, empno, sal, comm 
FROM emp
WHERE sal IN (800,950,3000,5000);

8.To list all the employees whose names are having ‘L’ as second character ?
>SELECT ename, sal, job
FROM EMP
WHERE ename LIKE '_L%';

9.To list all the employees whose names are having ‘D’ as last character ?
>SELECT ename, sal, job
FROM EMP
WHERE ename LIKE '%D';

10.To list all the employees whose names are having just 5 characters as length?
>SELECT ename
FROM EMP
WHERE ename LIKE '_____';

11. To list all the employees whose names are starting with ‘T’ and ending with ‘R’ ?
>SELECT ename
FROM EMP
WHERE ename LIKE 'T%R' ;

12. Display those employees who's name contains "A"?
>SELECT ename
FROM EMP
WHERE ename LIKE '%A%' ;

13. Display those employee who joined the company before 19th of the month?
>SELECT ename, empno, hiredate
FROM emp
WHERE DAY(hiredate)<19;

14. What is the employee number of 'James' .
 >SELECT ename, empno
  FROM emp
 WHERE ename = 'JAMES';

15.What is the salary of 'king'?
>SELECT ename, sal
FROM emp
WHERE ename = 'KING';

16.Who is the President for organization?
>SELECT ename, empno, job
FROM emp
WHERE job = 'PRESIDENT';

17. List all details of all the managers?
>SELECT ename, empno, job, sal, hiredate, comm
FROM emp
WHERE job ='MANAGER';

18.Give employee details for employees drawing commission?
>SELECT ename, empno, job, sal, hiredate, comm
FROM emp
WHERE comm IS NOT NULL;

19.List employees who joined before april-1981?
>SELECT job, COUNT(job)
FROM emp
WHERE hiredate<'1981-04-01'
GROUP BY job;

20.What is the salary of following: 
21.King, Blake, Ford, Smith
>SELECT ename, sal
FROM emp
WHERE ename = 'KING' OR ename = 'SMITH' OR ename= 'FORD' OR ename = 'BLAKE'; 

22.Who is drawing salary less than 3500
>SELECT ename, sal
FROM emp
WHERE sal<3500;

23.List the details of all the clerks?
>SELECT ename, empno, job, sal, hiredate, comm
FROM emp
WHERE job ='CLERK';

24.what is the annual salary for each the employees?
>SELECT ename, empno, sal*12 AS 'ANNUALSAL'
FROM emp;

25.if there is a hike in monthly salary by 20% for ford, what will be his annual Salary?
>SELECT ((sal*20)/100+sal)*12 AS 'ANNUALSAL'
FROM emp;

26.What is the total salary for each department?
>SELECT deptno, SUM(sal) AS 'TOTALSAL'
FROM emp
GROUP BY deptno;

27.Who is drawing the lowest salary in dept 10?
>SELECT ename, deptno, sal
FROM emp
WHERE deptno = 10
ORDER BY sal;

28.What is the average salary for Managers?
>SELECT job, AVG(sal) AS 'AVERAGE SAL'
FROM emp
WHERE job = 'MANAGER'
GROUP BY job;

29.What is the total salary for salesman?
>SELECT job, SUM(sal) AS 'TOTAL SAL'
FROM emp
WHERE job = 'SALESMAN'
GROUP BY job;

30.Which department is having the lowest average salary?
>SELECT job, AVG(sal) AS 'LOWEST AVG SAL'
FROM emp
GROUP BY sal, job
ORDER BY sal;

31.How many persons are in each role?
>SELECT job, COUNT(job) 
FROM emp
GROUP BY job;

32.What is the highest salary among analyst?
>SELECT job, 
MAX(sal) AS 'HIGHESTSAL'
FROM emp
WHERE job = 'ANALYST'
GROUP BY job;

33.What is the highest commission paid?
>SELECT MAX(comm) AS 'HIGHESTCOMM'
FROM emp;

34.How many departments are there?
>SELECT COUNT(dname) AS 'DEPTS'
FROM dept;

35.List the names in which 3rd  character is L?
>SELECT ename
FROM EMP
WHERE ename LIKE '__L%';



1.List the department without any employees in it?
SELECT D.DNAME, D.DEPTNO
FROM EMP E
RIGHT JOIN  DEPT D
ON E.DEPTNO  =D.DEPTNO;

2.List the name and job of the employees who does not report to anybody?
SELECT E.ENAME , E.JOB
  FROM  EMP E , DEPT D
  WHERE E.DEPTNO=D.DEPTNO and MGR IS NULL; 

3.Write a query that will give you the names and jobs of all employees in New York with a commission above 1000?
SELECT E.ENAME , E.JOB, E.COMM
  FROM  EMP E , DEPT D
  WHERE E.DEPTNO=D.DEPTNO AND COMM>1000  AND loc='NEWYORK';

4.How many employees work in Chicago?
SELECT  COUNT(E.ENAME)AS EMPLOYEE_COUNT
  FROM EMP E, DEPT D
  WHERE E.DEPTNO=D.DEPTNO and loc='CHICAGO';

5.Which employees work in Chicago?
SELECT E.ENAME
  FROM EMP E, DEPT D
  WHERE E.DEPTNO=D.DEPTNO and loc='CHICAGO';

6.List the employeesâ€™ names and cities in which they work. Order the list by city?
SELECT E.ENAME, D.LOC
  FROM EMP E, DEPT D
  WHERE E.DEPTNO=D.DEPTNO
  ORDER BY LOC;

7.Find the number of employees and number of departments.?
 SELECT  COUNT(E.ENAME)AS EMPLOYEE_COUNT, COUNT( DISTINCT D.DEPTNO) AS DEPT_COUNT
  FROM EMP E
  RIGHT JOIN  DEPT D
  ON E.DEPTNO=D.DEPTNO;

8.Display the employees who were hired before their managers?
SELECT E.ENAME, M.ENAME 'MANAGER', M.HIREDATE 'MANAGER HIREDATE', 'E.HIREDATE'
FROM EMP E, EMP M
WHERE E.MGR=M.EMPNO AND E.HIREDATE<M.HIREDATE

9.Determine the number of managers without listing them?
SELECT  COUNT(E.ENAME) AS MANAGER_COUNT
   FROM EMP E
   WHERE JOB='MANAGER';

10.Display the name and title of all employees who do not have a manager? 
SELECT ENAME, JOB 
   FROM EMP
    WHERE MGR IS NULL;

11.Create a query to display the employee name and department number for employee SMITH?
SELECT ENAME , DEPTNO
FROM EMP 
WHERE ENAME='SMITH';

12. Display the salesmen who are not in Boston?
SELECT E.ENAME 
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO and JOB='SALESMAN'and LOC <>'BOSTON';

13.List the details of the employees along with their location?
SELECT  E.EMPNO	, E.ENAME, E.JOB,E.MGR, E.HIREDATE,E.SAL,E.COMM,E.DEPTNO, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO;

14.List the salesmen who are drawing salary less than Miller?
SELECT ENAME 
    FROM EMP
    WHERE JOB='SALESMAN' AND SAL<
        (SELECT SAL 
        FROM EMP
        WHERE ENAME='MILLER');

15.Display the details of the employee working in Chicago?
 SELECT  E.EMPNO, E.ENAME, E.JOB,E.MGR,E.HIREDATE,E.SAL, E.COMM,E.DEPTNO, D.LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO and D.LOC='CHICAGO';

16.Find the names of all employees whose salaries are greater than the minimum salary for the Manager?
SELECT ENAME
     FROM EMP
     WHERE SAL>
           (SELECT MIN(SAL) AS MIN_SAL
           FROM EMP 
           WHERE JOB='MANAGER');

17.Select the last name and job id from all employees whose department id is equal to Accounting?
SELECT ENAME,JOB 
FROM EMP
WHERE DEPTNO=
            (SELECT DEPTNO
			FROM DEPT
			WHERE DNAME='ACCOUNTING'); 


18.Display those emp who are working as manager?
SELECT ENAME
   FROM EMP
   WHERE JOB='MANAGER';

19.write a subquery using case statement to display non sales if department is not sales?
SELECT DNAME,
    CASE
        WHEN DNAME='SALES' THEN 'SALES_DEPARTMENT'
        ELSE 'NON_SALES'
    END AS DEPARTMENT_STATUS
    FROM EMP 
    join DEPT on EMP.DEPTNO=DEPT.DEPTNO;

20.If salary of an employee is more than 1000, then display salary otherwise display 1000?
SELECT SAL,
   CASE
       WHEN SAL>1000 THEN SAL
   ELSE 1000
   END AS NEW_SALARY
   FROM EMP ;

21.Display salary as low, medium high based on salary range
Less than 1000 less
1000 to 2500 medium
More than 2500 high ?
SELECT SAL,
    CASE
        WHEN SAL<1000 THEN 'LESS'
	WHEN SAL BETWEEN 1000  and 2500 THEN 'MEDIUM'
    ELSE 'HIGH'
    END AS SALARY_STATUS
    FROM EMP ;

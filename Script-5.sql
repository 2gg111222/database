SELECT * FROM hr.emp

SELECT UPPER(ENAME) FROM hr.EMP;

SELECT LENGTH(ENAME) FROM HR.EMP

SELECT LENGTH(ENAME) FROM HR.EMP WHERE JOB = 'MANAGER'

SELECT ENAME, JOB FROM HR.EMP WHERE COMM IS NULL

SELECT ENAME, JOB FROM HR.EMP WHERE COMM IS NOT NULL

SELECT SUBSTR(ENAME, 2) FROM HR.EMP

SELECT SUBSTR(ENAME,1,3) FROM HR.EMP

SELECT REPLACE(ENAME,'K','P') FROM HR.EMP

SELECT EMPNO || '번은 ' || ENAME || '입니다' FROM HR.EMP 

SELECT HIREDATE,
TO_CHAR(SYSDATE, 'MM') AS MM, TO_CHAR(SYSDATE, 'DAY') AS DAY FROM HR.EMP

SELECT JOB, 
CASE JOB
	WHEN 'MANAGER' THEN 'LEVEL1'
	WHEN 'SALESMAM' THEN 'LEVEL2'
	ELSE 'LEVEL3'
	END AS LEVEL_RESULT 
	FROM HR.EMP
	
SELECT COUNT(*)
FROM HR.EMP

SELECT COUNT(*), SUM(SAL), AVG(SAL), MIN(SAL), MAX(SAL)
FROM HR.EMP
WHERE JOB = 'SALESMAN'	

SELECT JOB, COUNT(*), SUM(SAL), AVG(SAL), MIN(SAL), MAX(SAL)
FROM HR.EMP
GROUP BY JOB	
HAVING COUNT(SAL) >=4 -- 그룹을 지어서 검색 후, 필터링을 하고자 하는 경우
ORDER BY JOB DESC -- 이미 모든 검색이 다 끝난 후, 그 결과를 정렬하고자 하는 경우, 맨 끝에 




-------------------------------------

SELECT COUNT(*) FROM HR.EMP

SELECT DEPTNO, MGR FROM HR.EMP WHERE DEPTNO = 20 OR MGR <= 7700

SELECT MIN(SAL) FROM HR.EMP WHERE DEPTNO = 10 OR DEPTNO = 20  

SELECT JOB,MIN(SAL), MAX(SAL), AVG(SAL) FROM HR.EMP
GROUP BY JOB


SELECT DEPTNO, AVG(SAL) FROM HR.EMP
GROUP BY DEPTNO

SELECT DEPTNO, SUM(SAL) FROM HR.EMP
GROUP BY DEPTNO
ORDER BY DEPTNO

SELECT DEPTNO, AVG(SAL) FROM HR.EMP
GROUP BY DEPTNO
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO DESC

SELECT JOB, COUNT(JOB), AVG(SAL) FROM HR.EMP e 
WHERE JOB = 'MANAGER'
GROUP BY JOB

SELECT COUNT(*) FROM HR.EMP WHERE ENAME LIKE '%S%'

SELECT COUNT(*) FROM HR.EMP WHERE COMM IS NOT NULL AND SAL >= 3000
ORDER BY SAL DESC 

---------------------------------------
SELECT *
FROM HR."MEMBER" m , HR.BBS b
WHERE m.ID = b.WRITER 

SELECT  b."no", b.title, NAME 
FROM HR."MEMBER" m , HR.BBS b
WHERE m.ID = b.WRITER 

SELECT e.DEPTNO, e.ENAME, e.JOB, d.DEPTNO, d.LOC  
FROM HR.EMP e  , HR.DEPT d 
WHERE e.DEPTNO =d.DEPTNO 


SELECT *
FROM hr."MEMBER" m 
LEFT OUTER JOIN hr.BBS b 
on (m.ID = b.WRITER)


SELECT *
FROM hr."MEMBER" m 
right OUTER JOIN hr.BBS b 
on (m.ID = b.WRITER)

--1. emp테이블의 정보는 다보이게 하고 싶음, dept는 맞는 것만 오른쪽에 붙여주고 싶음.
SELECT *
FROM hr.EMP e 
LEFT OUTER JOIN hr.DEPT d  
on (e.DEPTNO  = d.DEPTNO)



--2. dept테이블의 정보는 다보이게 하고 싶음, emp는 맞는 것만 오른쪽에 붙여주고 싶음.
SELECT *
FROM hr.DEPT d  
RIGHT OUTER JOIN  HR.EMP e  
on (e.DEPTNO  = d.DEPTNO)

----------------------------

-----------innrt join : 조인조건이 공통적인 것만 검색
SELECT *
FROM HR."MEMBER" m ,HR.BBS b 
WHERE M.ID = B.WRITER 


------------outer join(left,right)

----------- left join : member 왼쪽 bbs 오른쪽, 왼쪽만 보이게
-- 그래서 HR."MEMBER"에 속한 kiwi는 보이고 HR.BBS에 속한 best는 안보임

SELECT m.ID , m.NAME , b.TITLE , b.CONTENT 
FROM HR."MEMBER" m 
LEFT OUTER JOIN HR.BBS b 
ON (M.ID = B.WRITER)

----------- right join : member 왼쪽, bbs 오른쪽, 오른쪽만 보이게
-- 그래서 HR.BBS에 속한 best는 보이고 HR."MEMBER" 에 속한 kiwi는 안보임

SELECT *
FROM HR."MEMBER" m 
RIGHT OUTER JOIN HR.BBS b 
ON (M.ID = B.WRITER)


create TABLE HR.company(
	id varchar2(200) PRIMARY KEY,
	name varchar2(200),
	addr varchar2(200),
	tel varchar2(200)
)

INSERT INTO HR.company VALUES ('c100', 'good', 'seoul', '011')

INSERT INTO HR.company VALUES ('c200', 'joa', 'busan', '012')

INSERT INTO HR.company VALUES ('c300', 'maria', 'ulsan', '013')

INSERT INTO HR.company VALUES ('c400', 'my', 'kwangju', '014')

SELECT * FROM HR.company

--INNER
SELECT * FROM HR.PRODUCT p, HR.COMPANY c 
WHERE p.COMPANY = c.ID

--LEFT
SELECT *
FROM HR.PRODUCT p 
LEFT OUTER JOIN HR.COMPANY c 
ON (P.COMPANY  = C.ID)

--RIGHT
SELECT * 
FROM HR.PRODUCT p 
RIGHT OUTER JOIN HR.COMPANY c 
ON (P.COMPANY  = C.ID)

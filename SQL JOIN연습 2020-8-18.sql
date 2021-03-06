-- 어떤 테이블이 있는지 볼 수 있음
SELECT TABLE_NAME
FROM USER_TABLES;   


-- CROSS JOIN : 저건없이 병합시키는 내용임.
SELECT * FROM STUDENT;
SELECT * FROM ENROL;

SELECT STUDENT.*, ENROL.*
FROM STUDENT
CROSS JOIN ENROL;


-- EQUL 조인  -- 공통분모가 있을때 가능함
SELECT * FROM STUDENT;
SELECT * FROM ENROL;

SELECT STUDENT.STU_NO, STU_NAME, STU_DEPT, ENR_GRADE
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO;


-- NATURAL JOIN
SELECT STU_NO, STU_NAME, STU_DEPT, ENR_GRADE
FROM STUDENT NATURAL JOIN ENROL;


-- JOIN-USING
SELECT STU_NO, STU_NAME, STU_DEPT, ENR_GRADE
FROM STUDENT JOIN ENROL USING(STU_NO);


-- JOIN-ON
SELECT STUDENT.STU_NO, STU_NAME, STU_DEPT, ENR_GRADE
FROM STUDENT JOIN ENROL ON STUDENT.STU_NO = ENROL.STU_NO;


-- 101번과목을 수강하는 학생들의 학번과 이름을 검색하라
SELECT STUDENT.STU_NO, STU_NAME
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO
AND SUB_NO = 101;


-- 과목번호 101 또는 102를 수강하는 학생의 학번과 이름을 검색하라
SELECT STUDENT.STU_NO, STU_NAME
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO
AND (SUB_NO = 101 OR SUB_NO = 102);  -- 괄호를 하지 않으면 AND가 우선순위이므로 먼저 실행됨


-- '컴퓨터개론'과목을 수강하는 학생들의 학번과 이름, 과목이름을 검색하라
SELECT * FROM STUDENT;
SELECT * FROM ENROL;
SELECT * FROM SUBJECT;

SELECT STUDENT.STU_NO, STU_NAME, SUB_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO 
AND ENROL.SUB_NO = SUBJECT.SUB_NO
AND SUB_NAME = '컴퓨터개론';


-- NON-EQUL 조인
SELECT * FROM EMP;
SELECT * FROM SALGRADE;

SELECT EMPNO, ENAME, SAL, GRADE
FROM EMP,SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL;


-- SELF JOIN
-- EMP테이블에서 자신의 상급자를 검색하라
SELECT * FROM EMP;

SELECT A.EMPNO AS 사원번호, A.ENAME AS 사원이름, B.ENAME AS 상급자번호, B.ENAME AS 상급자이름
FROM EMP A, EMP B
WHERE A.MGR = B.EMPNO;  -- MGR : MANAGER


-- OUTER JOIN
SELECT * FROM ENROL;
SELECT * FROM SUBJECT;

SELECT A.*, SUB_NAME
FROM ENROL A RIGHT OUTER JOIN SUBJECT B
ON A.SUB_NO=B.SUB_NO
ORDER BY 1;

SELECT A.EMPNO AS 사원번호, A.ENAME AS 사원이름, B.EMPNO AS 상급자사원번호, B.ENAME AS 상급자이름
FROM EMP A LEFT OUTER JOIN EMP B ON A.MGR = B.EMPNO;


-- SUBQUERY (부질의) ... SELECT-SELECT...???
-- 옥성우 학생보다 신장이 큰 학생들의 학번, 이름, 신장을 검색하시오
SELECT STU_HEIGHT
FROM STUDENT
WHERE STU_NAME = '옥성우';

SELECT STU_NO, STU_NAME, STU_HEIGHT
FROM STUDENT
WHERE STU_HEIGHT >= 172;

SELECT STU_NO, STU_NAME, STU_HEIGHT
FROM STUDENT
WHERE STU_HEIGHT >= (SELECT STU_HEIGHT
                    FROM STUDENT
                    WHERE STU_NAME = '옥성우')
AND STU_NAME <> '옥성우';


-- 단일일부질의라 함
-- 학생테이블에서 박희철학생과 같은 체중을 가진 학생의 정보를 구하라
SELECT *
FROM STUDENT
WHERE STU_WEIGHT = (SELECT STU_WEIGHT 
                    FROM STUDENT
                    WHERE STU_NAME = '박희철')
AND STU_NAME != '박희철';


-- 학생테이블에서 컴퓨터정보학과와 같은 반인 다른학과의 학생정보를 구하라
SELECT *
FROM STUDENT
WHERE STU_CLASS IN (SELECT STU_CLASS
                    FROM STUDENT
                    WHERE STU_DEPT = '컴퓨터정보')
AND STU_DEPT <> '컴퓨터정보';


-- 신장이 전체학생들의 평균신장보다 큰학생을 구하라
SELECT *
FROM STUDENT
WHERE STU_HEIGHT > (SELECT AVG(STU_HEIGHT)
                    FROM STUDENT);
                    

-- 신장이 모든 학과들의 평균신장보다 큰학생을 구하라
SELECT *
FROM STUDENT
WHERE STU_HEIGHT > ALL (SELECT AVG(STU_HEIGHT)
                        FROM STUDENT
                        GROUP BY STU_DEPT);

SELECT *
FROM STUDENT
WHERE STU_HEIGHT > (SELECT MAX(AVG(STU_HEIGHT))
                    FROM STUDENT
                    GROUP BY STU_DEPT);


-- 컴퓨터정보과의 최소신장과 비교하여 최소신장이 더 큰 학과의 학과명과 최소신장을 구하라
SELECT STU_DEPT, MIN(STU_HEIGHT)
FROM STUDENT
GROUP BY STU_DEPT HAVING MIN(STU_HEIGHT) > ( SELECT MIN(STU_HEIGHT)
                                            FROM STUDENT
                                            WHERE STU_DEPT = '컴퓨터정보');
                                            

-- 복수열부질의
-- 기존테이블에서 사용테이블을 만들고자 할때 
CREATE TABLE TEST(EMPNO, ENAME, SAL, COMM, DEPTNO)
AS
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO
FROM EMP
WHERE DEPTNO = 1;

SELECT * FROM EMP;

DESC TEST;

INSERT INTO TEST VALUES(11, 'APPLE', 1000, NULL, 30);
INSERT INTO TEST VALUES(12, 'BANANA', 2000, 100, 30);
INSERT INTO TEST VALUES(13, 'CHEESE', 1000, 0, 10);
INSERT INTO TEST VALUES(14, 'DOG', 2000, NULL, 20);
INSERT INTO TEST VALUES(15, 'EGG', 1000, 100, 20);

SELECT * 
FROM TEST;




CREATE TABLE A_STUDENT
AS
SELECT *
FROM STUDENT
WHERE STU_DEPT IN ('기계', '전기전자');

CREATE TABLE B_STUDENT
AS 
SELECT *
FROM STUDENT
WHERE STU_DEPT IN ('전기전자', '컴퓨터정보');

SELECT * 
FROM A_STUDENT;

SELECT * 
FROM B_STUDENT;


-- 집합연산자
--UNION/ UNION ALL/ INTERSECT/MINUS

-- UNION GASE 

SELECT * FROM A_STUDENT
UNION ALL
SELECT * FROM B_STUDENT;

SELECT * FROM A_STUDENT
INTERSECT
SELECT * FROM B_STUDENT;

SELECT * FROM A_STUDENT
MINUS
SELECT * FROM B_STUDENT;





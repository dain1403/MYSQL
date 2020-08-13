-- Q2) 실습에 사용될 과목 테이블의 구조를 검색하라.
DESC SUBJECT;

-- Q4) 실습에 사용될 수강 테이블의 모든 데이터를 검색하라.
SELECT *
FROM STUDENT;

-- Q6) 과목들의 과목번호와 과목이름을 검색하라.
SELECT SUB_NO, SUB_NAME
FROM SUBJECT;

-- Q7) 학생들의 학번과 이름, 성별을 검색하라.
SELECT STU_NO, STU_NAME, STU_GENDER
FROM STUDENT;

-- Q9) 학생들의 학번과 이름, 학년, 반을 검색하라.
SELECT STU_NO, STU_NAME, STU_GRADE, STU_CLASS
FROM STUDENT;

-- Q11) 과목번호, 학번, 점수를 검색하라.
SELECT *
FROM ENROL;

-- Q14) 학생들의 성별 중복을 제거하고 검색하라.
SELECT DISTINCT(STU_GENDER)
FROM STUDENT;

--Q16) 학생들의 학과, 학년 중복을 제거하고 검색하라.
SELECT DISTINCT STU_DEPT, STU_GRADE
FROM STUDENT;

-- Q17) 학생들의 학과, 반 중복을 제거하고 검색하라.
SELECT DISTINCT STU_DEPT, STU_CLASS
FROM STUDENT;

-- Q18) 학생들의 키를 5만큼씩 증가시킨 값을 검색하라.(null값은 0)
SELECT NVL2(STU_HEIGHT, STU_HEIGHT+5, 0) AS STU_HEIGHT
FROM STUDENT;

-- Q20) 학생들의 학번과 이름을 별칭을 “학번”과 “이름” 으로 부여하여 검색하라.
SELECT STU_NO AS 학번, STU_NAME AS 이름
FROM STUDENT;

--Q21) 수강 테이블의 모든 정보를 검색하라. 단 별칭을 한글로 부여하여 검색하라.
SELECT STU_NO 학번, STU_NAME 이름, STU_DEPT 학과, STU_GRADE 학년, STU_CLASS 반, STU_GENDER 성별, STU_HEIGHT 키, STU_WEIGHT 몸무게
FROM STUDENT;

--Q22) 과목 테이블에서 과목이름과 교수명을 머리(heading)은 한글로 검색하라.   
SELECT SUB_NAME AS 과목이름, SUB_PROF AS 교수명
FROM SUBJECT;

--Q23) 학생 테이블에서 학과명과 이름을 합쳐서 검색하라.
SELECT STU_DEPT||STU_NAME 
FROM STUDENT;

--Q24) 학생의 이름과 학과를 ‘컴퓨터정보과 옥한빛입니다.’ 식으로 검색하라.
SELECT STU_DEPT||'과 '||STU_NAME||'입니다'
FROM STUDENT;

--Q27) 전기전자과 학생들을 검색하라.
SELECT *
FROM STUDENT
WHERE STU_DEPT = '전기전자';

--Q28) 신장이 170 이상인 학생들을 검색하라.
SELECT *
FROM STUDENT
WHERE STU_HEIGHT >= 170;

--Q29) 체중이 65 이상인 학생들을 검색하라.
SELECT *
FROM STUDENT
WHERE STU_WEIGHT >= 65;

--Q33) 남학생의 이름을 검색하라.
SELECT STU_NAME
FROM STUDENT
WHERE STU_GENDER = 'M';

-- Q37) 점수가 80점이상인 학생들의 학번을 검색하라.
SELECT STU_NO
FROM ENROL
WHERE ENR_GRADE >= 80;

-- Q38) ‘김인중’ 학생의 모든 정보를 검색하라.
SELECT *
FROM STUDENT
WHERE STU_NAME = '김인중';

-- Q39) ‘컴퓨터정보’과 학생 중 1학년 학생을 모두 검색하라.
SELECT *
FROM STUDENT
WHERE STU_DEPT='컴퓨터정보' AND STU_GRADE = 1;

-- Q40) ‘기계’ 과 이면서 2학년 학생들의 모든 정보를 검색하라.
SELECT *
FROM STUDENT
WHERE STU_DEPT='기계' AND STU_GRADE = 2;

-- Q41) 성별이 여학생이며, 체중이 60이하인 학생을 모두 검색하라.
SELECT *
FROM STUDENT
WHERE STU_GENDER = 'F' AND STU_WEIGHT >= 60;

-- Q42) ‘컴퓨터정보’ 과 외에 1학년 학생들의 이름을 검색하라.
SELECT STU_NAME
FROM STUDENT
WHERE STU_DEPT != '컴퓨터정보'AND STU_GRADE =1;

-- Q44) 컴퓨터정보과 2학년 A반 학생의 이름을 검색하라.
SELECT STU_NAME
FROM STUDENT
WHERE STU_GRADE = 2 AND STU_CLASS = 'A';

-- Q44) 컴퓨터정보과 2학년 A반 학생의 이름을 검색하라.
SELECT STU_NAME
FROM STUDENT
WHERE STU_DEPT = '컴퓨터정보' AND STU_GRADE = 2 AND STU_CLASS = 'A';

-- Q46) 2013학번인 학생의 학번과 이름, 학과를 검색하라.
SELECT STU_NO, STU_NAME, STU_DEPT
FROM STUDENT
WHERE STU_NO LIKE '2013%';

-- Q47) 1,3학년 학생들의 모든 정보를 검색하라.
SELECT *
FROM STUDENT
WHERE STU_GRADE IN (1,3);

-- Q49) 학번이 XXXX20XX인 학생의 모든정보를 검색하라.
SELECT *
FROM STUDENT
WHERE STU_NO LIKE '____20%';

--Q52) 신장이 null 인 학생의 이름을 검색하라.
SELECT STU_NAME
FROM STUDENT
WHERE STU_HEIGHT IS NULL;

--Q53) 신장이 null이 아닌 학생의 학번, 이름을 검색하라.
SELECT STU_NO,STU_NAME
FROM STUDENT
WHERE STU_HEIGHT IS NOT NULL;

-- Q56) 학생들의 학번, 이름을 학번 순으로 검색하라.
SELECT STU_NO,STU_NAME
FROM STUDENT
ORDER BY STU_NO;


























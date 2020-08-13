-- Q57. 학생들의 학번, 이름을 이름순으로 검색하라.
SELECT STU_NO, STU_NAME
FROM STUDENT
ORDER BY STU_NAME;

-- Q58. 학생들의 학번, 이름, 학과를 학과별 이름순으로 검색하라.
SELECT STU_NO, STU_NAME, STU_DEPT
FROM STUDENT
ORDER BY STU_DEPT, STU_NAME; 

--Q59. 학생들의 정보를 학과별 학년이 높은 순으로 검색하라.
SELECT *
FROM STUDENT
ORDER BY STU_DEPT, STU_GRADE DESC;

--Q60. 학생들의 정보를 학과별 반 순으로 검색하라.
SELECT *
FROM STUDENT
ORDER BY STU_DEPT, STU_CLASS;

--Q61. 학생들의 학번, 이름을 학과별, 성별, 학년으로 검색하여라
SELECT STU_NO, STU_NAME
FROM STUDENT
ORDER BY STU_DEPT, STU_GENDER, STU_GRADE;

--Q62. 학생들의 성별을 소문자로 검색하라.
SELECT LOWER(STU_GENDER)
FROM STUDENT;

-- Q63. 학생들의 성별을 대문자로 검색하라.
SELECT UPPER(STU_GENDER)
FROM STUDENT;

--Q65. 학생들의 학과, 학년, 이름을 연결하여 검색하라( --과 ?학년 ?입니다)
SELECT STU_DEPT||'과 '||STU_GRADE||'학년 '||STU_NAME||'입니다'
FROM STUDENT;

--Q66. 학생들의 이름과 이름의 첫 2글자를 검색하라.
SELECT STU_NAME, SUBSTR(STU_NAME, 1,2) 
FROM STUDENT;

--Q67. 학생들의 이름, 학과 그리고 학과의 두 번째로부터 1자리를 검색하라.
SELECT STU_NAME, STU_DEPT, SUBSTR(STU_DEPT, 2,1) 
FROM STUDENT;

--Q69. 학생들의 학과와 학과명의 길이를 검색하라.
SELECT STU_DEPT, LENGTH(STU_DEPT)
FROM STUDENT;

--Q70. 학생들의 이름에 ‘김’이 몇번째 있는지 검색하라.
SELECT INSTR(STU_NAME, '김')
FROM STUDENT;

--Q71. 학생들의 학과에 ‘기’가 몇번째 있는지 검색하라.
SELECT INSTR(STU_DEPT, '기')
FROM STUDENT;

--Q73. 학생들의 학과를 20자리로 하고, 앞에 ‘%’를 채워 검색하라.
SELECT LPAD(STU_DEPT, 20, '%')  
FROM STUDENT;

--Q74. 학생의 학번, 이름, 신장을 검색하라.(신장은 첫째 자리에서 반올림)
SELECT STU_NO, STU_NAME,ROUND(STU_HEIGHT,-1)
FROM STUDENT;

--Q75. 학생의 학번, 이름, 신장을 검색하라.(신장은 두번째 자리에서 절삭함.)
SELECT STU_NO, STU_NAME,TRUNC(STU_HEIGHT,-2)
FROM STUDENT;

--76. 체중을 30으로 나눈 나머지를 검색하라.
SELECT MOD(STU_WEIGHT, 30)
FROM STUDENT;

--Q77. 신장열의 값이 null 인 학생의 경우 ‘미기록’ 으로 검색하라.
SELECT NVL(TO_CHAR(STU_HEIGHT),'미기록')
FROM STUDENT;

--Q78. 신장과 체중을 합한 값을 학번, 이름과 함께 검색하여라.(nvl 사용)
SELECT STU_NO, STU_NAME, NVL(STU_HEIGHT + STU_WEIGHT,0)
FROM STUDENT;

---Q79. 신장에서 체중을 뺀 값을 학번, 이름과 함께 검색하여라.(nvl 사용)
SELECT STU_NO, STU_NAME, NVL(STU_HEIGHT - STU_WEIGHT,0)
FROM STUDENT;

--Q80. 신장이 null 인경우 ‘입력요망’으로 바꾸어 학번,이름을 검색하여라.
SELECT STU_NO, STU_NAME, NVL(TO_CHAR(STU_HEIGHT),'입력요망')
FROM STUDENT;

--Q82. 학생의 성별을 nullif로 비교하여, 남학생인 경우 성별과 null을 검색하라. 
SELECT STU_GENDER ,NVL(NULLIF(STU_GENDER,'M'),'널값')
FROM STUDENT;

--Q85. 학생 중 키가 가장 큰 학생의 신장을 검색하라.
SELECT MAX(STU_HEIGHT)
FROM STUDENT;

---Q86. 학생 중 키가 가장 작은 신장을 검색하라.
SELECT MIN(STU_HEIGHT)
FROM STUDENT;

--Q88. 학생의 이름 중 max 와 min 값을 검색하라.
SELECT MAX(STU_NAME),MIN(STU_NAME)
FROM STUDENT;

--Q89. 전체 학생의 체중, 신장의 max와 min 값을 검색하라..
SELECT MAX(STU_WEIGHT),MIN(STU_WEIGHT), MAX(STU_HEIGHT), MIN(STU_HEIGHT)
FROM STUDENT;

---Q92. 학생들의 성씨의 수를 검색하라.
SELECT SUBSTR(STU_NAME, 1,1) AS FIRST_NAME, COUNT(*)
FROM STUDENT
GROUP BY SUBSTR(STU_NAME, 1,1);


--Q93. 학생 테이블의 레코드 수를 검색하라.
SELECT COUNT(*)
FROM STUDENT;

--Q96. 학과별 학생들의 인원수를 인원수가 많은 순으로 검색하라.
SELECT COUNT(*)
FROM STUDENT
GROUP BY STU_DEPT
ORDER BY STU_DEPT DESC;

--Q97. 학년별 학생들의 인원수를 검색하라.
SELECT STU_GRADE,COUNT(*)
FROM STUDENT
GROUP BY STU_GRADE;

--Q99. 학과별 학생들의 평균 신장을 검색하라.
SELECT STU_DEPT,AVG(STU_WEIGHT)
FROM STUDENT
GROUP BY STU_DEPT;

--Q101. 학과별, 학년별 학생들의 평균 신장을 학과별 학년별로 검색(null제외, 자리수맞춤)
SELECT RPAD(AVG(STU_HEIGHT), 5, '.0')
FROM STUDENT
WHERE  STU_HEIGHT IS NOT NULL
GROUP BY STU_DEPT,STU_GRADE;

--Q104. 학과별 학생들의 인원수를 인원수가 많은 순으로 검색하라.
SELECT STU_DEPT, COUNT(*)
FROM STUDENT
GROUP BY STU_DEPT
ORDER BY STU_DEPT DESC;

--Q105. 학과별 학생들의 평균 신장을 평균 신장 순으로 검색하여라.
SELECT STU_DEPT, AVG(STU_HEIGHT)
FROM STUDENT
GROUP BY STU_DEPT;

--Q106. 학과별 학년별 학생들의 평균 체중을 평균 체중 많은 순으로 검색하여라.
SELECT STU_DEPT, STU_GRADE, AVG(STU_WEIGHT)
FROM STUDENT
GROUP BY STU_DEPT, STU_GRADE
ORDER BY AVG(STU_WEIGHT) DESC;

--Q107. 학과별 학생들의 평균 신장을 평균 신장이 높은 순으로 검색하여라.
SELECT STU_DEPT, AVG(STU_HEIGHT)
FROM STUDENT
GROUP BY STU_DEPT
ORDER BY AVG(STU_HEIGHT) DESC;

--Q108. 학과별 학생들의 평균 신장이 170 이상인 학과를 평균이 낮은 순으로 검색하여라.
SELECT STU_DEPT
FROM STUDENT
GROUP BY STU_DEPT 
HAVING AVG(STU_HEIGHT) >= 170
ORDER BY AVG(STU_HEIGHT);




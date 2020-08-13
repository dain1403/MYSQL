-- Q57. �л����� �й�, �̸��� �̸������� �˻��϶�.
SELECT STU_NO, STU_NAME
FROM STUDENT
ORDER BY STU_NAME;

-- Q58. �л����� �й�, �̸�, �а��� �а��� �̸������� �˻��϶�.
SELECT STU_NO, STU_NAME, STU_DEPT
FROM STUDENT
ORDER BY STU_DEPT, STU_NAME; 

--Q59. �л����� ������ �а��� �г��� ���� ������ �˻��϶�.
SELECT *
FROM STUDENT
ORDER BY STU_DEPT, STU_GRADE DESC;

--Q60. �л����� ������ �а��� �� ������ �˻��϶�.
SELECT *
FROM STUDENT
ORDER BY STU_DEPT, STU_CLASS;

--Q61. �л����� �й�, �̸��� �а���, ����, �г����� �˻��Ͽ���
SELECT STU_NO, STU_NAME
FROM STUDENT
ORDER BY STU_DEPT, STU_GENDER, STU_GRADE;

--Q62. �л����� ������ �ҹ��ڷ� �˻��϶�.
SELECT LOWER(STU_GENDER)
FROM STUDENT;

-- Q63. �л����� ������ �빮�ڷ� �˻��϶�.
SELECT UPPER(STU_GENDER)
FROM STUDENT;

--Q65. �л����� �а�, �г�, �̸��� �����Ͽ� �˻��϶�( --�� ?�г� ?�Դϴ�)
SELECT STU_DEPT||'�� '||STU_GRADE||'�г� '||STU_NAME||'�Դϴ�'
FROM STUDENT;

--Q66. �л����� �̸��� �̸��� ù 2���ڸ� �˻��϶�.
SELECT STU_NAME, SUBSTR(STU_NAME, 1,2) 
FROM STUDENT;

--Q67. �л����� �̸�, �а� �׸��� �а��� �� ��°�κ��� 1�ڸ��� �˻��϶�.
SELECT STU_NAME, STU_DEPT, SUBSTR(STU_DEPT, 2,1) 
FROM STUDENT;

--Q69. �л����� �а��� �а����� ���̸� �˻��϶�.
SELECT STU_DEPT, LENGTH(STU_DEPT)
FROM STUDENT;

--Q70. �л����� �̸��� ���衯�� ���° �ִ��� �˻��϶�.
SELECT INSTR(STU_NAME, '��')
FROM STUDENT;

--Q71. �л����� �а��� ���⡯�� ���° �ִ��� �˻��϶�.
SELECT INSTR(STU_DEPT, '��')
FROM STUDENT;

--Q73. �л����� �а��� 20�ڸ��� �ϰ�, �տ� ��%���� ä�� �˻��϶�.
SELECT LPAD(STU_DEPT, 20, '%')  
FROM STUDENT;

--Q74. �л��� �й�, �̸�, ������ �˻��϶�.(������ ù° �ڸ����� �ݿø�)
SELECT STU_NO, STU_NAME,ROUND(STU_HEIGHT,-1)
FROM STUDENT;

--Q75. �л��� �й�, �̸�, ������ �˻��϶�.(������ �ι�° �ڸ����� ������.)
SELECT STU_NO, STU_NAME,TRUNC(STU_HEIGHT,-2)
FROM STUDENT;

--76. ü���� 30���� ���� �������� �˻��϶�.
SELECT MOD(STU_WEIGHT, 30)
FROM STUDENT;

--Q77. ���忭�� ���� null �� �л��� ��� ���̱�ϡ� ���� �˻��϶�.
SELECT NVL(TO_CHAR(STU_HEIGHT),'�̱��')
FROM STUDENT;

--Q78. ����� ü���� ���� ���� �й�, �̸��� �Բ� �˻��Ͽ���.(nvl ���)
SELECT STU_NO, STU_NAME, NVL(STU_HEIGHT + STU_WEIGHT,0)
FROM STUDENT;

---Q79. ���忡�� ü���� �� ���� �й�, �̸��� �Բ� �˻��Ͽ���.(nvl ���)
SELECT STU_NO, STU_NAME, NVL(STU_HEIGHT - STU_WEIGHT,0)
FROM STUDENT;

--Q80. ������ null �ΰ�� ���Է¿�������� �ٲپ� �й�,�̸��� �˻��Ͽ���.
SELECT STU_NO, STU_NAME, NVL(TO_CHAR(STU_HEIGHT),'�Է¿��')
FROM STUDENT;

--Q82. �л��� ������ nullif�� ���Ͽ�, ���л��� ��� ������ null�� �˻��϶�. 
SELECT STU_GENDER ,NVL(NULLIF(STU_GENDER,'M'),'�ΰ�')
FROM STUDENT;

--Q85. �л� �� Ű�� ���� ū �л��� ������ �˻��϶�.
SELECT MAX(STU_HEIGHT)
FROM STUDENT;

---Q86. �л� �� Ű�� ���� ���� ������ �˻��϶�.
SELECT MIN(STU_HEIGHT)
FROM STUDENT;

--Q88. �л��� �̸� �� max �� min ���� �˻��϶�.
SELECT MAX(STU_NAME),MIN(STU_NAME)
FROM STUDENT;

--Q89. ��ü �л��� ü��, ������ max�� min ���� �˻��϶�..
SELECT MAX(STU_WEIGHT),MIN(STU_WEIGHT), MAX(STU_HEIGHT), MIN(STU_HEIGHT)
FROM STUDENT;

---Q92. �л����� ������ ���� �˻��϶�.
SELECT SUBSTR(STU_NAME, 1,1) AS FIRST_NAME, COUNT(*)
FROM STUDENT
GROUP BY SUBSTR(STU_NAME, 1,1);


--Q93. �л� ���̺��� ���ڵ� ���� �˻��϶�.
SELECT COUNT(*)
FROM STUDENT;

--Q96. �а��� �л����� �ο����� �ο����� ���� ������ �˻��϶�.
SELECT COUNT(*)
FROM STUDENT
GROUP BY STU_DEPT
ORDER BY STU_DEPT DESC;

--Q97. �г⺰ �л����� �ο����� �˻��϶�.
SELECT STU_GRADE,COUNT(*)
FROM STUDENT
GROUP BY STU_GRADE;

--Q99. �а��� �л����� ��� ������ �˻��϶�.
SELECT STU_DEPT,AVG(STU_WEIGHT)
FROM STUDENT
GROUP BY STU_DEPT;

--Q101. �а���, �г⺰ �л����� ��� ������ �а��� �г⺰�� �˻�(null����, �ڸ�������)
SELECT RPAD(AVG(STU_HEIGHT), 5, '.0')
FROM STUDENT
WHERE  STU_HEIGHT IS NOT NULL
GROUP BY STU_DEPT,STU_GRADE;

--Q104. �а��� �л����� �ο����� �ο����� ���� ������ �˻��϶�.
SELECT STU_DEPT, COUNT(*)
FROM STUDENT
GROUP BY STU_DEPT
ORDER BY STU_DEPT DESC;

--Q105. �а��� �л����� ��� ������ ��� ���� ������ �˻��Ͽ���.
SELECT STU_DEPT, AVG(STU_HEIGHT)
FROM STUDENT
GROUP BY STU_DEPT;

--Q106. �а��� �г⺰ �л����� ��� ü���� ��� ü�� ���� ������ �˻��Ͽ���.
SELECT STU_DEPT, STU_GRADE, AVG(STU_WEIGHT)
FROM STUDENT
GROUP BY STU_DEPT, STU_GRADE
ORDER BY AVG(STU_WEIGHT) DESC;

--Q107. �а��� �л����� ��� ������ ��� ������ ���� ������ �˻��Ͽ���.
SELECT STU_DEPT, AVG(STU_HEIGHT)
FROM STUDENT
GROUP BY STU_DEPT
ORDER BY AVG(STU_HEIGHT) DESC;

--Q108. �а��� �л����� ��� ������ 170 �̻��� �а��� ����� ���� ������ �˻��Ͽ���.
SELECT STU_DEPT
FROM STUDENT
GROUP BY STU_DEPT 
HAVING AVG(STU_HEIGHT) >= 170
ORDER BY AVG(STU_HEIGHT);




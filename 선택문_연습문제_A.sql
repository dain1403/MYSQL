-- Q2) �ǽ��� ���� ���� ���̺��� ������ �˻��϶�.
DESC SUBJECT;

-- Q4) �ǽ��� ���� ���� ���̺��� ��� �����͸� �˻��϶�.
SELECT *
FROM STUDENT;

-- Q6) ������� �����ȣ�� �����̸��� �˻��϶�.
SELECT SUB_NO, SUB_NAME
FROM SUBJECT;

-- Q7) �л����� �й��� �̸�, ������ �˻��϶�.
SELECT STU_NO, STU_NAME, STU_GENDER
FROM STUDENT;

-- Q9) �л����� �й��� �̸�, �г�, ���� �˻��϶�.
SELECT STU_NO, STU_NAME, STU_GRADE, STU_CLASS
FROM STUDENT;

-- Q11) �����ȣ, �й�, ������ �˻��϶�.
SELECT *
FROM ENROL;

-- Q14) �л����� ���� �ߺ��� �����ϰ� �˻��϶�.
SELECT DISTINCT(STU_GENDER)
FROM STUDENT;

--Q16) �л����� �а�, �г� �ߺ��� �����ϰ� �˻��϶�.
SELECT DISTINCT STU_DEPT, STU_GRADE
FROM STUDENT;

-- Q17) �л����� �а�, �� �ߺ��� �����ϰ� �˻��϶�.
SELECT DISTINCT STU_DEPT, STU_CLASS
FROM STUDENT;

-- Q18) �л����� Ű�� 5��ŭ�� ������Ų ���� �˻��϶�.(null���� 0)
SELECT NVL2(STU_HEIGHT, STU_HEIGHT+5, 0) AS STU_HEIGHT
FROM STUDENT;

-- Q20) �л����� �й��� �̸��� ��Ī�� ���й����� ���̸��� ���� �ο��Ͽ� �˻��϶�.
SELECT STU_NO AS �й�, STU_NAME AS �̸�
FROM STUDENT;

--Q21) ���� ���̺��� ��� ������ �˻��϶�. �� ��Ī�� �ѱ۷� �ο��Ͽ� �˻��϶�.
SELECT STU_NO �й�, STU_NAME �̸�, STU_DEPT �а�, STU_GRADE �г�, STU_CLASS ��, STU_GENDER ����, STU_HEIGHT Ű, STU_WEIGHT ������
FROM STUDENT;

--Q22) ���� ���̺��� �����̸��� �������� �Ӹ�(heading)�� �ѱ۷� �˻��϶�.   
SELECT SUB_NAME AS �����̸�, SUB_PROF AS ������
FROM SUBJECT;

--Q23) �л� ���̺��� �а���� �̸��� ���ļ� �˻��϶�.
SELECT STU_DEPT||STU_NAME 
FROM STUDENT;

--Q24) �л��� �̸��� �а��� ����ǻ�������� ���Ѻ��Դϴ�.�� ������ �˻��϶�.
SELECT STU_DEPT||'�� '||STU_NAME||'�Դϴ�'
FROM STUDENT;

--Q27) �������ڰ� �л����� �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_DEPT = '��������';

--Q28) ������ 170 �̻��� �л����� �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_HEIGHT >= 170;

--Q29) ü���� 65 �̻��� �л����� �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_WEIGHT >= 65;

--Q33) ���л��� �̸��� �˻��϶�.
SELECT STU_NAME
FROM STUDENT
WHERE STU_GENDER = 'M';

-- Q37) ������ 80���̻��� �л����� �й��� �˻��϶�.
SELECT STU_NO
FROM ENROL
WHERE ENR_GRADE >= 80;

-- Q38) �������ߡ� �л��� ��� ������ �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_NAME = '������';

-- Q39) ����ǻ���������� �л� �� 1�г� �л��� ��� �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_DEPT='��ǻ������' AND STU_GRADE = 1;

-- Q40) ����衯 �� �̸鼭 2�г� �л����� ��� ������ �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_DEPT='���' AND STU_GRADE = 2;

-- Q41) ������ ���л��̸�, ü���� 60������ �л��� ��� �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_GENDER = 'F' AND STU_WEIGHT >= 60;

-- Q42) ����ǻ�������� �� �ܿ� 1�г� �л����� �̸��� �˻��϶�.
SELECT STU_NAME
FROM STUDENT
WHERE STU_DEPT != '��ǻ������'AND STU_GRADE =1;

-- Q44) ��ǻ�������� 2�г� A�� �л��� �̸��� �˻��϶�.
SELECT STU_NAME
FROM STUDENT
WHERE STU_GRADE = 2 AND STU_CLASS = 'A';

-- Q44) ��ǻ�������� 2�г� A�� �л��� �̸��� �˻��϶�.
SELECT STU_NAME
FROM STUDENT
WHERE STU_DEPT = '��ǻ������' AND STU_GRADE = 2 AND STU_CLASS = 'A';

-- Q46) 2013�й��� �л��� �й��� �̸�, �а��� �˻��϶�.
SELECT STU_NO, STU_NAME, STU_DEPT
FROM STUDENT
WHERE STU_NO LIKE '2013%';

-- Q47) 1,3�г� �л����� ��� ������ �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_GRADE IN (1,3);

-- Q49) �й��� XXXX20XX�� �л��� ��������� �˻��϶�.
SELECT *
FROM STUDENT
WHERE STU_NO LIKE '____20%';

--Q52) ������ null �� �л��� �̸��� �˻��϶�.
SELECT STU_NAME
FROM STUDENT
WHERE STU_HEIGHT IS NULL;

--Q53) ������ null�� �ƴ� �л��� �й�, �̸��� �˻��϶�.
SELECT STU_NO,STU_NAME
FROM STUDENT
WHERE STU_HEIGHT IS NOT NULL;

-- Q56) �л����� �й�, �̸��� �й� ������ �˻��϶�.
SELECT STU_NO,STU_NAME
FROM STUDENT
ORDER BY STU_NO;


























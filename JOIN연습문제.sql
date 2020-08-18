 SELECT * FROM STUDENT;
 SELECT * FROM ENROL;
 SELECT * FROM SUBJECT;
 
 --no1. �л�(student) ���̺�� ����(enrol) ���̺��� natural join �϶�
SELECT *
FROM STUDENT NATURAL JOIN ENROL;

 --no2. �й�, �̸�, �����̸�, ������ �˻��϶�.(equi join)
SELECT STUDENT.STU_NO, STU_NAME, SUB_NAME, ENR_GRADE 
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO;
 
 --no3. �����̸��� �й�, ������ �˻��϶�.(natural join)
SELECT SUB_NAME, STU_NO, ENR_GRADE
FROM SUBJECT NATURAL JOIN ENROL;
 
 --no4. �����̸��� �й�, ������ �˻��϶�.(join ~ using)
SELECT SUB_NAME, STU_NO, ENR_GRADE
FROM ENROL JOIN SUBJECT USING(SUB_NO);
 
 --no5. ������ 70�� �̻��� �л� �̸��� �˻��϶�.(equi join)
SELECT STU_NAME
FROM STUDENT, ENROL,SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO
AND ENR_GRADE >= 70;
 
 --no6. ������ 60�� �̻��� �л� �̸��� �˻��϶�.(join ~ using)
SELECT STU_NAME
FROM STUDENT JOIN ENROL USING(STU_NO) JOIN SUBJECT USING(SUB_NO)
WHERE ENR_GRADE >= 60;
 
 --no7. ������ 70�� ������ �л� �̸��� �˻��϶�.(natural join)
SELECT STU_NAME
FROM STUDENT NATURAL JOIN ENROL NATURAL JOIN SUBJECT
WHERE ENR_GRADE <= 70;
 
 --no8. ������ �л��� �����ϴ� �����̸��� ���� ������ �˻��϶�.(equi join)
SELECT SUB_NAME, SUB_PROF
FROM STUDENT, ENROL,SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO
AND STUDENT.STU_NO = (SELECT STU_NO
                     FROM STUDENT
                     WHERE STU_NAME = '������');
 
 --no9. ������ �л��� �����ϴ� �����̸��� ���� ������ �˻��϶�.(natural join)
SELECT SUB_NAME, SUB_PROF
FROM STUDENT NATURAL JOIN ENROL NATURAL JOIN SUBJECT
WHERE STU_NO = (SELECT STU_NO
                     FROM STUDENT
                     WHERE STU_NAME = '������');
 
 --no10. ������ �л��� �����ϴ� �����̸��� ���� ������ �˻��϶�.(join ~ using)
SELECT SUB_NAME, SUB_PROF
FROM STUDENT JOIN ENROL USING(STU_NO) JOIN SUBJECT USING(SUB_NO)
WHERE STU_NO = (SELECT STU_NO
                     FROM STUDENT
                     WHERE STU_NAME = '������');
 
 --no11. ������ ������ �����ϴ� ������ �����ϴ� �л��� �̸��� �˻��϶�.
SELECT STUDENT.STU_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO
AND SUB_PROF = '������';
 
 --no12. ��ǻ�Ͱ����� �����ϴ� �л����� �й��� �̸��� �˻��϶�.
SELECT STUDENT.STU_NO,STU_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO
AND SUB_NAME = '��ǻ�Ͱ���';
 
 --no13. �ý��ۺм�����, ����Ʈ��������� �����ϴ� �л����� �й�, �̸��� �й� ������ �˻��϶�.
SELECT STUDENT.STU_NO,STU_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO
AND ( SUB_NAME = '�ý��ۺм�����' OR SUB_NAME = '����Ʈ�������');
 
 --no14. ������ 1�г� �����̰ų�, ��ǻ���������� ������ ������ ��� �� ������� �����ϴ� �л����� �й��� �̸��� �˻��϶�.
SELECT STUDENT.STU_NO,STU_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO
AND ( SUB_GRADE = 1 OR SUB_DEPT = '��ǻ������');
 
 --no15. �����۹�, �������ڽ����� �����ϴ� �л����� �й�, �̸��� �й� ������ �˻��϶�(natural join).
SELECT STU_NO,STU_NAME
FROM STUDENT NATURAL JOIN ENROL NATURAL JOIN SUBJECT
WHERE SUB_NAME = '�����۹�' OR SUB_NAME = '�������ڽ���';

 --no16. ���¿� ����, ������ ������ �����ϴ� ������ �����ϴ� �л��� �й��� �˻��϶�(join ~ using).
 SELECT STU_NO,STU_NAME
 FROM STUDENT JOIN ENROL USING(STU_NO) JOIN SUBJECT USING(SUB_NO)
 WHERE SUB_PROF = '���¿�' OR SUB_PROF = '������';
 
 --no17. �л��� �̸��� ������ �˻��϶�.
SELECT STU_NAME,ENR_GRADE
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO;
 
 --no18. �̸��� '���Ѻ�'�� �л��� �����ϴ� �����̸��� �˻��϶�.
SELECT SUB_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO 
AND STUDENT.STU_NAME = '���Ѻ�';
 
--no19. ���л��� �������� ������ �����̸��� ��� �˻��϶�.
SELECT SUB_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO 
AND STU_GENDER = 'F';
 
 --no20. ü���� 60�̻��� �л��� �����ϴ� ������ �����̸��� ��� �˻��϶�.  
SELECT DISTINCT SUB_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO 
AND STU_WEIGHT >= 60;
 
 --no21. ��ǻ���������� ������ ������ �����ϴ� ��� �л��� �й��� �̸��� �˻��϶�.
SELECT DISTINCT STUDENT.STU_NO, STU_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO 
AND SUB_DEPT = '��ǻ������';

 --no22. ������ 70�� �̻��� �л� ���� �˻��϶�.
SELECT COUNT(DISTINCT STUDENT.STU_NO)
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO  
AND ENR_GRADE >= 70;
 
 --no23. ���л��̸鼭, ������ ������ ������ �����ϴ� �л��� �̸��� �˻��϶�.
SELECT STU_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO 
AND STU_GENDER = 'F' AND SUB_PROF = '������';

 --no24. ������ �л��� ��� �������� ���� ������ ���� �л��� �й��� �̸��� �˻��϶�.
SELECT STUDENT.STU_NO, STU_NAME
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO 
AND ENR_GRADE > (SELECT AVG(ENR_GRADE)
                FROM STUDENT, ENROL
                WHERE STUDENT.STU_NO = ENROL.STU_NO AND STU_NAME = '������');
                
 --no25. ������ �л��� ����������� ���� ������ ���� �л��� �й��� �̸��� �˻��϶�.
SELECT DISTINCT STUDENT.STU_NO, STU_NAME
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO 
AND ENR_GRADE < (SELECT AVG(ENR_GRADE)
                FROM STUDENT, ENROL
                WHERE STUDENT.STU_NO = ENROL.STU_NO AND STU_NAME = '������');

 --no26. ��ü �л��� ����������� ������ ���� �л��� �й�, �̸�, ���� �̸�, ������ �˻��϶�?
SELECT STUDENT.STU_NO, STU_NAME, SUB_NAME, ENR_GRADE
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO
AND ENR_GRADE > (SELECT AVG(ENR_GRADE)
                FROM ENROL) ;

 --no.27. ������ �� �а� �л����� ����������� ���� �л��� �й��� �˻��϶�?
SELECT STUDENT.STU_NO
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO 
AND ENR_GRADE > ALL(SELECT AVG(ENR_GRADE)
                FROM STUDENT, ENROL
                WHERE STUDENT.STU_NO = ENROL.STU_NO
                GROUP BY STU_DEPT) ;
 
 --no28. ������ �ְ����� �л����� �ְ� ������ ���� �а��� �а� ��� ������ �˻��϶�?
SELECT STU_DEPT,ENR_GRADE
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENR_GRADE > ( SELECT MAX(ENR_GRADE)
                                                FROM STUDENT, ENROL
                                                WHERE STUDENT.STU_NO = ENROL.STU_NO
                                                AND STU_DEPT = '���');
                                                
--no.29. ��ǻ���������� �л��� ��������� ���� �л����� �й��� �̸� ��������� ���������� �˻��϶�?
SELECT STUDENT.STU_NO, STU_NAME, AVG(ENR_GRADE)
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO AND STU_DEPT = '��ǻ������'
GROUP BY STUDENT.STU_NO, STU_NAME
ORDER BY AVG(ENR_GRADE);

--no30. �ý��ۺм���������� �����ϴ� �л����� �й�, �̸�, ������ ���������� �˻��϶�?
SELECT STUDENT.STU_NO, STU_NAME, ENR_GRADE
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO AND SUB_NAME = '�ý��ۺм�����'
ORDER BY ENR_GRADE;

--no31. 2���� �̻� ������ �л����� �й�, �̸�, ����������� ���� ������ ���� ������ �˻��϶�?
SELECT STUDENT.STU_NO, STU_NAME
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO
GROUP BY STUDENT.STU_NO, STU_NAME HAVING COUNT(ENROL.STU_NO) >= 2
ORDER BY COUNT(ENROL.STU_NO) DESC;

--no32. 1������ ������ �л����� �й� �̸��� �а��� �й� ������ �˻��϶�?
SELECT STUDENT.STU_NO
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO
GROUP BY  STUDENT.STU_NO,STUDENT.STU_DEPT HAVING COUNT(ENROL.STU_NO) = 1
ORDER BY STUDENT.STU_NO;

--no33. ��ǻ�������� �л��� �� ��������� �ְ��� �л��� �й�, �̸�, ��������� �˻��϶�?
SELECT STUDENT.STU_NO,STU_NAME, AVG(ENR_GRADE)
FROM STUDENT, ENROL
WHERE STUDENT.STU_NO = ENROL.STU_NO
AND STU_DEPT = '��ǻ������'
AND ENR_GRADE = (SELECT MAX(AVG(ENR_GRADE))
                FROM STUDENT,ENROL
                WHERE STUDENT.STU_NO = ENROL.STU_NO
                GROUP BY STU_DEPT,STUDENT.STU_NO)
GROUP BY STUDENT.STU_NO, STU_NAME;

--no34. ��ǻ�Ͱ��а� �ý��ۺм� ���� ������ �����ϴ� �л��� �й�, �̸��� �й� ������ �˻��϶�?
SELECT STUDENT.STU_NO, STU_NAME
FROM STUDENT, ENROL, SUBJECT
WHERE STUDENT.STU_NO = ENROL.STU_NO AND ENROL.SUB_NO = SUBJECT.SUB_NO
AND ENROL.SUB_NO = (SELECT SUB_NO
                 FROM SUBJECT
                 WHERE SUB_NAME = '��ǻ�Ͱ���' OR SUB_NAME = '�ý��ۺм�')
ORDER BY STUDENT.STU_NO;

 
 
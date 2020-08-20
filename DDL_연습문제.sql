-- 1. product ���̺� ����
CREATE TABLE PRODUCT(
P_CODE CHAR(3) NOT NULL,
P_NAME VARCHAR2(30),
P_COST NUMBER,
P_GROUP VARCHAR2(30),
CONSTRAINT P_CODE_PRI PRIMARY KEY(P_CODE));

-- 2. PRODUCT ���̺� ���� �˻�
DESC PRODUCT;

-- 3.��ǰ����(PRODUCT)���̺� ������ ���� ��ǰ ���� ����
INSERT INTO PRODUCT
VALUES ('101','19��ġ �����',150000,'�����') ;
INSERT INTO PRODUCT
VALUES ('102','22��ġ �����',200000,'�����') ;
INSERT INTO PRODUCT
VALUES('103','25��ġ �����',260000,'�����') ;
INSERT INTO PRODUCT
VALUES ('201','�������콺',7000,'���콺') ;
INSERT INTO PRODUCT
VALUES ('202','�������콺',18000,'���콺') ;
INSERT INTO PRODUCT
VALUES ('301','����Ű����',8000,'Ű����') ;
INSERT INTO PRODUCT
VALUES ('302','����Ű����',22000,'Ű����') ;
INSERT INTO PRODUCT
VALUES ('401','2ä�� ����Ŀ',10000,'����Ŀ') ;
INSERT INTO PRODUCT
VALUES ('402','5.1ä�� ����Ŀ',120000,'����Ŀ') ;

--4.PRODUCT ���̺��� ��� ������ �˻�
SELECT *
FROM PRODUCT;

--5. �ŷ�����(TRADE)���̺� ����
CREATE TABLE TRADE(
T_SEQ NUMBER NOT NULL,
P_CODE CHAR(3),
C_CODE VARCHAR2(4),
T_DATE DATE,
T_QTY NUMBER,
T_COST NUMBER,
T_TAX NUMBER,
CONSTRAINT T_SEQ_PRI PRIMARY KEY (T_SEQ));

--6.TRADE ���̺� ���� ���
DESC TRADE;

-- 7. TRADE ���̺� ������ ���� �ŷ����� ������ ����
INSERT INTO TRADE
VALUES (61,'131','101',to_date('2016-04-01','yyyy-mm-dd'),10,150000,150000) ;
INSERT INTO TRADE
VALUES (5,'102','102',to_date('2016-04-26','yyyy-mm-dd'),8,200000,160000) ;
INSERT INTO TRADE
VALUES (8,'103','101',to_date('2016-05-20','yyyy-mm-dd'),2,260000,52000) ;
INSERT INTO TRADE
VALUES (3,'201','103',to_date('2016-04-13','yyyy-mm-dd'),7,7000,4900) ;
INSERT INTO TRADE
VALUES (2,'201','101',to_date('2016-04-12','yyyy-mm-dd'),5,7000,3500) ;
INSERT INTO TRADE
VALUES (9,'202','104',to_date('2016-06-02','yyyy-mm-dd'),8,18000,14400) ;
INSERT INTO TRADE
VALUES (6,'301','103',to_date('2016-05-02','yyyy-mm-dd'),12,8000,9600) ;
INSERT INTO TRADE
VALUES (10,'302','103',to_date('2016-0-6-09','yyyy-mm-dd'),9,22000,19800) ;
INSERT INTO TRADE
VALUES (4,'401','104',to_date('2016-04-20','yyyy-mm-dd'),15,10000,15000) ;
INSERT INTO TRADE
VALUES (11,'401','105',to_date('2016-06-15','yyyy-mm-dd'),20,10000,20000) ;
INSERT INTO TRADE
VALUES (7,'402','102',to_date('2016-05-08','yyyy-mm-dd'),5,120000,60000) ;

--8. TRADE ���̺��� ��� �����͸� �˻�
SELECT *
FROM TRADE;

-- 9.CUSTOMER ���̺� ����
CREATE TABLE CUSTOMER (
C_CODE VARCHAR2(4) NOT NULL,
C_NAME VARCHAR2(30),
C_CEO VARCHAR2(12),
C_ADDR VARCHAR(100),
C_PHONE VARCHAR(13),
CONSTRAINT C_CODE_PRI PRIMARY KEY(C_CODE));

-- 10. �ŷ�ó ����(CUSTOMER) ���̺� ���� �˻�
DESC CUSTOMER;

--11. �ŷ�ó ����(CUSTOMER)���̺� ������ ���� ������ ����
INSERT INTO CUSTOMER 
VALUES ('101','��Ǫ��ȸ��','�����','��⵵ �Ȼ��','010-1234-5678');
INSERT INTO CUSTOMER
VALUES ('102','������ٴ�','�ڳ���','��⵵ ���ý�','010-1122-3344');
INSERT INTO CUSTOMER
VALUES ('103','����ȸ��','�̹μ�','����� ���α�', '010-3785-8809');
INSERT INTO CUSTOMER
VALUES ('104','�Ͼ����','������','���ϵ� ���׽�','010-8569-3468');
INSERT INTO CUSTOMER
VALUES ('105','�Ѹ����Ѷ�','�Ϲο�','��õ�� ������','010-9455-6033');

-- 12. CUSTOMER ���̺� ��� �˻�
SELECT *
FROM CUSTOMER;

--13. ���(STOCK)���̺� ����
CREATE TABLE STOCK(
P_CODE CHAR(3) NOT NULL,
S_QTY NUMBER NOT NULL,
S_LASTDATE DATE,
CONSTRAINT PRI_K PRIMARY KEY (P_CODE,S_QTY));

-- 14. STOCK ���̺� ���� �˻�
DESC STOCK;

-- 15.STOCK ���̺� ������ ���� ��ǰ ��� ������ ����
INSERT INTO STOCK
VALUES ('101',50,TO_DATE('2016-04-01','yyyy-mm-dd'));
INSERT INTO STOCK
VALUES ('102',20,TO_DATE('2016-04-26','yyyy-mm-dd'));
INSERT INTO STOCK
VALUES ('103',5,TO_DATE('2016-05-20','yyyy-mm-dd'));
INSERT INTO STOCK
VALUES ('201',2,TO_DATE('2016-04-13','yyyy-mm-dd'));
INSERT INTO STOCK
VALUES ('202',15,TO_DATE('2016-06-02','yyyy-mm-dd'));
INSERT INTO STOCK
VALUES ('301',0,TO_DATE('2016-05-02','yyyy-mm-dd'));
INSERT INTO STOCK
VALUES ('302',20,TO_DATE('2016-06-09','yyyy-mm-dd'));
INSERT INTO STOCK
VALUES ('401',10,TO_DATE('2016-06-15','yyyy-mm-dd'));
INSERT INTO STOCK
VALUES ('402',7,TO_DATE('2016-05-08','yyyy-mm-dd'));

-- 16. STOCK ���̺��� ��� ������ �˻�
SELECT *
FROM STOCK;

-- 17. PRODUCT ���̺� ��� ���� �����϶�
ALTER TABLE PRODUCT
ADD (��� VARCHAR2(20));

-- 18. ���ο� ���� ��ǰ����(PRODUCT)���̺� ���ԵǾ��ִ��� Ȯ��
SELECT * FROM PRODUCT;

-- 19. PRODUCT ���̺� ��� ���� ������ ����
ALTER TABLE PRODUCT 
MODIFY (��� VARCHAR(25));

-- 20. ����� ��� ���� ������ �˻�
DESC PRODUCT;

--23.PRODUCT ���̺��� �̸��� PRODUCT1�� �����϶�
RENAME PRODUCT TO PRODUCT1;

-- 24. PRODUCT ���̺��� �̸��� ����Ǿ����� Ȯ��
 SELECT *
 FROM USER_TABLES
 WHERE TABLE_NAME = 'PRODUCT1';

-- 26. Ȯ���� ���� ����(product)���̺��� ���� �˻�
SELECT *
FROM PRODUCT;

-- 28. ��ǰ����(PRODUCT)���̺� ����� Ȯ���϶�
SELECT *
FROM PRODUCT1;

--29. ��ǰ(PRODUCT)�� �⺻Ű�� ��ǰ ���(STOCK)���̺� �ܷ�Ű ���ष������ �����ϴ� ���̴�
--    ����� Ȯ���϶�

ALTER TABLE PRODUCT1
ADD CONSTRAINT P_P_CODE PRIMARY KEY(P_CODE);

ALTER TABLE STOCK
ADD CONSTRAINT F_P_CODE FOREIGN KEY (P_CODE)
REFERENCES PRODUCT1 (P_CODE);

SELECT OWNER, CONSTRAINT_NAME, TABLE_NAME
FROM USER_CONSTRAINTS
WHERE TABLE_NAME IN ('PRODUCT1','STOCK');

-- 30. ��ǰ�ڵ� 401�� ���� �ŷ����� ��(V_TRADE)�� ������
CREATE VIEW V_TRADE
AS
SELECT *
FROM TRADE
WHERE P_CODE = 401;

SELECT * 
FROM V_TRADE;

-- 31. ��ǰ�ڵ� 401�� ���� �ŷ����� ���� ������ Ȯ��
SELECT * 
FROM V_TRADE
WHERE P_CODE = 401;

-- 32. ��ǰ ����(product)���̺� ���� �ֱٿ� ���� �ŷ�ó �ڵ� ������ �˻��϶�
SELECT *
FROM PRODUCT1;
SELECT  *
FROM TRADE;

SELECT C_CODE
FROM TRADE
WHERE T_DATE = (SELECT MAX(T_DATE)
                FROM TRADE);



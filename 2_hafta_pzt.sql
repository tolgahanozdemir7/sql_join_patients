--**************************************************
CREATE OR REPLACE FUNCTION FUNC_4(DEGIS NUMBER)
RETURN VARCHAR2
IS
    DEGIS_DOC_NAME VARCHAR2(100); 
    DEGIS_EX EXCEPTION;
BEGIN
    
    DECLARE
        DEGIS_AMO VARCHAR2(100); 
    BEGIN
        SELECT DOC_NAME INTO DEGIS_AMO
        FROM BILL
        WHERE AMOUNT = DEGIS;

        IF DEGIS_AMO = 'Dr. Praveen Gupta' THEN
            RAISE DEGIS_EX;
        END IF;

        DEGIS_DOC_NAME := DEGIS_AMO || '**';
        RETURN DEGIS_DOC_NAME;

    EXCEPTION 
        WHEN DEGIS_EX THEN
            DBMS_OUTPUT.PUT_LINE('Dr. Praveen Gupta sahte doktordur');
            RETURN NULL;
    END;
END;
/

SELECT *FROM BILL

BEGIN   
    DBMS_OUTPUT.PUT_LINE(FUNC_4(5000));
END;

SELECT *FROM BILL;

--***********************************************

CREATE OR REPLACE FUNCTION FUNC_KAREKOK(SAYI NUMBER)
RETURN NUMBER 
IS

BEGIN

    RETURN POWER(SAYI,2); 
END;
/
SELECT FUNC_KAREKOK(5) SONUC FROM DUAL;

BEGIN   
    DBMS_OUTPUT.PUT_LINE(FUNC_KAREKOK(5));
END;

--***********************************************

SELECT PAT_ID FROM PATIENTTT
MINUS
SELECT DOC_ID FROM DOCTORT
-- UNION UNION ALL INTERSECT MINUS --

CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID NUMBER PRIMARY KEY,
    EMPLOYEE_NAME VARCHAR2(50),
    DEPARTMENT_ID NUMBER
);

INSERT INTO EMPLOYEES VALUES (1, 'John Doe', 10);
INSERT INTO EMPLOYEES VALUES (2, 'Jane Smith', 20);
INSERT INTO EMPLOYEES VALUES (3, 'Emily Davis', 30);
INSERT INTO EMPLOYEES VALUES (4, 'Michael Brown', 20);
INSERT INTO EMPLOYEES VALUES (5, 'Jessica Wilson', 10);

CREATE TABLE DEPARTMENTS (
    DEPARTMENT_ID NUMBER PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR2(50)
);

INSERT INTO DEPARTMENTS VALUES (10, 'Human Resources');
INSERT INTO DEPARTMENTS VALUES (20, 'Finance');
INSERT INTO DEPARTMENTS VALUES (30, 'Engineering');
INSERT INTO DEPARTMENTS VALUES (40, 'Marketing');

--UNION
SELECT DEPARTMENT_ID FROM EMPLOYEES
UNION 
SELECT DEPARTMENT_ID FROM DEPARTMENTS

--UNION ALL
SELECT DEPARTMENT_ID FROM EMPLOYEES
UNION ALL
SELECT DEPARTMENT_ID FROM DEPARTMENTS

--INTERSECT 
SELECT DEPARTMENT_ID FROM EMPLOYEES
INTERSECT
SELECT DEPARTMENT_ID FROM DEPARTMENTS

--MINUS
SELECT DEPARTMENT_ID FROM EMPLOYEES
MINUS
SELECT DEPARTMENT_ID FROM DEPARTMENTS


-- PROCEDURE
CREATE OR REPLACE PROCEDURE SAYI_EKLEME
(
    SAYI_1 IN VARCHAR,
    SAYI_SONUC OUT VARCHAR 
)
AS
BEGIN
    SAYI_SONUC:=SAYI_1||SAYI_1;
    EXCEPTION 
        WHEN  VALUE_ERROR THEN
            DBMS_OUTPUT.PUT_LINE('DEGERLEDEBIR HATA VAR');
END;

DECLARE
    V_SONUC VARCHAR2(100);
BEGIN
    SAYI_EKLEME('5', V_SONUC);
    DBMS_OUTPUT.PUT_LINE('Sonu�: ' || V_SONUC);
END;
/

SELECT *FROM EMPLOYEES INNER JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID

--***************************************************

create or replace procedure procedure_5
(
    E_I_C IN NUMBER,
    E_N_C OUT VARCHAR2(20)
)
AS
BEGIN   
    SELECT EMPLOYEE_NAME INTO E_N_C
    FROM EMPLOYES
    WHERE EMPLOYEE_ID=E_I_C;
END PROCEDURE_5;
/
--***************************************************

SELECT *FROM EMPLOYEES;
SELECT *FROM DEPARTMENTS;
DESCRIBE EMPLOYEES;

DESCRIBE EMPLOYEES;

CREATE OR REPLACE FUNCTION FUNC_5(F_E_N VARCHAR2)
RETURN NUMBER
IS
    F_D_I NUMBER;
    F_EX EXCEPTION;
BEGIN 
    DECLARE 
        D_D_I NUMBER;
    BEGIN
        SELECT DEPARTMENT_ID INTO D_D_I
        FROM EMPLOYEES
        WHERE EMPLOYEE_NAME = F_E_N;
    
        IF D_D_I > 29 THEN 
            RAISE F_EX;
        END IF;
    
        F_D_I := (D_D_I * 10);
    
        RETURN F_D_I;
    
    EXCEPTION 
        WHEN F_EX THEN
            DBMS_OUTPUT.PUT_LINE('DEPARTMAN ID 30 DAN BUYUK');
            RETURN NULL;         
    END;
END;
/

BEGIN 
    DBMS_OUTPUT.PUT_LINE(FUNC_5('John Doe'));
END;
/
--**********************************************

CREATE OR REPLACE TRIGGER TRIG__NAME_5
BEFORE INSERT














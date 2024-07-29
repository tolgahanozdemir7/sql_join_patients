SELECT *FROM TABLO_1
INNER JOIN TABLO_2 ON TABLO_1.SUTUN_1=TABLO_2.SUTUN_2;

--USING

SELECT *FROM HASTA
LEFT OUTER JOIN MUAYNE ON HASTA.HASTA_ID_NUMBER=MUAYNE.HASTA_ID
WHERE MUAYNE.HASTA_ID IS NULL;

SELECT *FROM HASTA
FULL OUTER JOIN MUAYNE ON HASTA.HASTA_ID_NUMBER=MUAYNE.HASTA_ID


--UNION,UNION ALL,INTERSECT,MINUS

 CREATE TABLE patienttt (
    pat_id VARCHAR2(10),
    pat_name VARCHAR2(60),
    pat_gender VARCHAR2(2),
    pat_address VARCHAR2(100),
    pat_number NUMBER(11, 0),
    pat_doc_code VARCHAR2(10),
    CONSTRAINT pkk_patient PRIMARY KEY (pat_id),
    CONSTRAINT uqq_doc_code UNIQUE (pat_doc_code)
);

CREATE TABLE doctort(
    doc_id VARCHAR2(10),
    doc_name VARCHAR2(60),
    doc_specialty VARCHAR2(100)
);



INSERT INTO patienttt VALUES ('P001', 'Raghav Sharma', 'M', '#33, Sec 22, Gurugram', 1111111111, 'D001');
INSERT INTO patienttt VALUES ('P002', 'Shivam Kumar', 'M', '#2789, Udhyog Vihar P-2, Gurugram', 2222222222, 'D004');
INSERT INTO patienttt VALUES ('P003', 'Kiran', 'F', '#3672, Sec 37D, Chandigarh', 3333333333, 'D003');
INSERT INTO patienttt VALUES ('P004', 'Akshay Chauchan', 'M', '#4534, Sec 57C, Delhi', 4444444444, 'D005');
INSERT INTO patienttt VALUES ('P005', 'Karan Chaudary', 'M', 'Tamil Nadu', 5555555555, 'D002');
INSERT INTO patienttt VALUES ('P006', 'Karab Chaudary', 'M', 'Tamile Nadu', 6666666666, 'D006');

INSERT INTO doctort VALUES ('D001', 'Dr. A', 'Cardiology');
INSERT INTO doctort VALUES ('D002', 'Dr. B', 'Neurology');
INSERT INTO doctort VALUES ('D003', 'Dr. C', 'Orthopedics');
INSERT INTO doctort VALUES ('D004', 'Dr. D', 'Pediatrics');
INSERT INTO doctort VALUES ('D005', 'Dr. E', 'General Medicine');
INSERT INTO doctort VALUES ('D006', 'Dr. F', 'Dermatology');


SELECT * FROM patienttt;
select *from doctort;

--UNION
SELECT pat_id, pat_name FROM patienttt
UNION
SELECT doc_id, doc_name FROM doctort;

--UNION ALL
SELECT pat_id, pat_name FROM patienttt
UNION ALL
SELECT doc_id, doc_name FROM doctort;

--INTERSECT
SELECT pat_name FROM patienttt
INTERSECT
SELECT doc_name FROM doctort;

--MINUS
SELECT pat_name FROM patientt
MINUS
SELECT doc_name FROM doctort;


select * from bill


CREATE OR REPLACE FUNCTION ornek_func(pat_isim VARCHAR2)
RETURN NUMBER 
IS
    amount_deger NUMBER(19,2);
BEGIN 
    DECLARE 
        deger NUMBER(19,2);
    BEGIN 
        SELECT amount INTO deger
        FROM bill
        WHERE pat_name = pat_isim;
        
        amount_deger := deger + 50;
        RETURN amount_deger;
    END;
END;
/

begin
    dbms_output.put_line(ornek_func('Akshay Chauchan'));
end;         
    
--*******************************************************
    --EXPECTION
CREATE OR REPLACE FUNCTION ORNEK_FUNC_2(EX_CONT VARCHAR2)
RETURN NUMBER 
IS
    EX_AMOUNT NUMBER (19,2);
    DMG_HATA EXCEPTION; 
BEGIN
    DECLARE
        EX_DEGER NUMBER(19,2);
    BEGIN 
        SELECT AMOUNT INTO EX_DEGER
        FROM BILL
        WHERE PAT_NAME = EX_CONT;
        
        IF (EX_DEGER > 3000) THEN
            RAISE DMG_HATA; 
        END IF;
        
        EX_AMOUNT := EX_DEGER; 
        RETURN EX_AMOUNT;
    EXCEPTION
        WHEN DMG_HATA THEN
            DBMS_OUTPUT.PUT_LINE('3000 DEN BUYUK HATASI ALDINIZ');
            RETURN NULL; 
    END;
END;                    
/
   
BEGIN
    DBMS_OUTPUT.PUT_LINE(ORNEK_FUNC_2('Kiran'));
END;
/

SELECT ORNEK_FUNC_2('Raghav Sharma') SONUC FROM DUAL; --RETURN TO_CHAR(EX_AMOUNT);

SELECT *FROM BILL

--*******************************************************************
-- PROCEDUR
create or replace procedure prok_ornek_1
(
gender in varchar2,
doc_namet out varchar2
)
as

begin
    select doc_name into doc_namet
    from bill
    where pat_gender=gender;
END prok_ornek_1;


VARIABLE output VARCHAR2(100);
BEGIN

prok_ornek_1('F', :output);
END;
/

PRINT output;
--**********************************************************************

SELECT *FROM PATIENTT;
SELECT *FROM BILL;
DESCRIBE BILL;

CREATE OR REPLACE FUNCTION FUNC_3(pat_name_3 VARCHAR2) 
RETURN NUMBER 
IS
    amount_3 NUMBER;
    DMG_3 EXCEPTION;
BEGIN
    DECLARE 
        TEMP_3 NUMBER;
    BEGIN
        SELECT AMOUNT INTO TEMP_3
        FROM BILL
        WHERE PAT_NAME = pat_name_3;
        
        IF TEMP_3 < 3000 THEN
            RAISE DMG_3;
        END IF;
        
        amount_3 := TEMP_3 + 100;
        RETURN amount_3;
    EXCEPTION 
        WHEN DMG_3 THEN
            DBMS_OUTPUT.PUT_LINE('Deger 3000den kucuktur hatasi');
            RETURN NULL;         
    END;
END ;
/

SELECT TO_CHAR(FUNC_3('Kiran')) sonuc from dual;

begin
    DBMS_OUTPUT.PUT_LINE(func_3('Kiran'));
end;


create or replace procedure prcedur_3
(
p_n_1 in varchar2,
p_n_2 out varchar2
)
as
BEGIN 
    
    SELECT DOC_NAME INTO P_N_2
    FROM BILL
    WHERE PAT_NAME=P_N_1;  
END prcedur_3;
/
--****************************************************************










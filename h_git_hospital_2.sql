--Drop table patient if already existing
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE PATIENT CASCADE CONSTRAINT PURGE';
    EXCEPTION
    WHEN OTHERS THEN
    NULL;
END;
/
--Create table patient
create table patientt (
pat_id varchar2(10),
pat_name varchar2(60),
pat_gender varchar2(2),
pat_address varchar2(100),
pat_number number(11,0),
pat_doc_code varchar2(10),
constraint pk_patient primary key (pat_id),
constraint uq_doc_code unique (pat_doc_code)
);
/
SELECT* FROM PATIENTT

drop table patientt


--Drop table patient_diagnosis if already existing
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE PATIENT_DIAGNOSIS CASCADE CONSTRAINT PURGE';
    EXCEPTION
    WHEN OTHERS THEN
    NULL;
END;
/
--Create table patient_diagnosis
create table patient_diagnosis(
Diag_ID varchar2(10 CHAR),
diag_details varchar2(200 CHAR),
diag_remarks varchar2(200 CHAR),
diag_date date,
pat_id varchar2(10 CHAR),
constraint pk_patient_diagnosis primary key  (diag_id),
constraint fk_pat_id foreign key (pat_id)
references patientt(pat_id)
);
/

--Drop table doctor if already existing
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE DOCTOR CASCADE CONSTRAINT PURGE';
    EXCEPTION
    WHEN OTHERS THEN
    NULL;
END;
/
--create table doctor
create table doctor(
doc_code varchar2(10 CHAR),
doc_name varchar2(60 CHAR),
doc_gender varchar2(2 CHAR),
doc_address varchar2(200 CHAR),
doc_designation varchar2(30 CHAR),
doc_number number(11,0),
constraint pk_doctor primary key (doc_code),
constraint fk_doc_code foreign key (doc_code)
references patientt(pat_doc_code)
);
/

--Drop table bill if already existing
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE BILL CASCADE CONSTRAINT PURGE';
    EXCEPTION
    WHEN OTHERS THEN
    NULL;
END;
/
--create table bill
create table bill(
bill_no integer,
pat_id varchar2(10 CHAR),
pat_name varchar2(60 CHAR),
pat_gender varchar2(2 CHAR),
pat_address varchar2(100 CHAR),
doc_name varchar2(60 CHAR),
amount NUMBER(19,9),
constraint pk_bill primary key (bill_no),
constraint fk_bill_pat_id foreign key (pat_id)
references patientt(pat_id)
);
/

--PATIENT ENTRIES:
INSERT INTO PATIENTT VALUES ('P001','Raghav Sharma','M','#33, Sec 22, Gurugram',1111111111,'D001');
INSERT INTO PATIENTT VALUES ('P002','Shivam Kumar','M','#2789, Udhyog Vihar P-2, Gurugram',2222222222,'D004');
INSERT INTO PATIENTT VALUES ('P003','Kiran','F','#3672, Sec 37D, Chandigarh',3333333333,'D003');
INSERT INTO PATIENTT VALUES ('P004','Akshay Chauchan','M','#4534, Sec 57C, Delhi',4444444444,'D005');
INSERT INTO PATIENTT VALUES ('P005','Karan Chaudary','M','Tamil Nadu',5555555555,'D002');
INSERT INTO PATIENTT VALUES ('P006','Karab Chaudary','M','Tamile Nadu',6666666666,'D006');

select *from patientt



--Patient_diagnosis ENTRIES:
INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG001','Suffering from asthma','Need to use rescue inhalers',sysdate,'P001');
INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG002','Suffering from heart diseases','Treatments vary widely and can include lifestyle changes, medication, surgery, stents, pacemakers and ablation.',sysdate,'P002');
INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG003','Suffering from skin diseases','Use anti-fungal sprays/creams to treat the skin infection',sysdate,'P003');
INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG004','Suffering from mouth diseases','Need to use pain relievers',sysdate,'P004');
INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG005','Suffering from migrane','Avoid stress, improve sleep habit and have a balanced diet',sysdate,'P005');

select *from PATIENT_DIAGNOSIS


--DOCTOR Entries:
INSERT INTO DOCTOR VALUES ('D001','Dr P R Goyal','M','H1/10, Hauz Khas, New Delhi, Delhi','Allergist',9810506571);
INSERT INTO DOCTOR VALUES ('D002','Dr Jagmeet Soin','M','94/4, GNH Hospital, Opposite Govt. Girls College, Near Sector 14, Gurugram, Haryana 122001','Cardiologist',8800188336);
INSERT INTO DOCTOR VALUES ('D003','Dr Priyanka Yadav','F','CLACS, GNH Hospital, MG Road, Opp. Govt Girls College, Anamika Enclave, Gurugram, Haryana 122001','Dermatologist',7042795770);
INSERT INTO DOCTOR VALUES ('D004','Dr Kaushal Yadav','M','Sector 14, Gurugram, Haryana','Oral Surgeon',8800188336);
INSERT INTO DOCTOR VALUES ('D005','Dr. Praveen Gupta','M','Fortis Memorial Research Institute Sector 44, Opposite HUDA City Centre Metro Station, Gurugram, Haryana 122002','Neurologist',9990766036);

SELECT *FROM DOCTOR


BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE BILL_NO_SEQ';
    EXCEPTION
        WHEN OTHERS THEN
            IF SQLCODE!= -2289 THEN
            RAISE;
            END IF;
END;
/

CREATE SEQUENCE BILL_NO_SEQ
  MINVALUE 1
  MAXVALUE 100000
  START WITH 1
  INCREMENT BY 1;
/ 


CREATE OR REPLACE TRIGGER BILL_TRG
BEFORE INSERT ON BILL
FOR EACH ROW
DECLARE
DOC_ID VARCHAR(10 CHAR);
BEGIN
IF :NEW.BILL_NO IS NULL THEN
     SELECT BILL_NO_SEQ.NEXTVAL INTO :NEW.BILL_NO FROM DUAL;
END IF;
IF :NEW.PAT_NAME IS NULL THEN
     SELECT PAT_NAME INTO :NEW.PAT_NAME FROM PATIENTT WHERE PAT_ID=:NEW.PAT_ID;
END IF;
IF :NEW.PAT_GENDER IS NULL THEN
     SELECT PAT_GENDER INTO :NEW.PAT_GENDER FROM PATIENTT WHERE PAT_ID=:NEW.PAT_ID;
END IF;
IF :NEW.PAT_ADDRESS IS NULL THEN
     SELECT PAT_ADDRESS INTO :NEW.PAT_ADDRESS FROM PATIENTT WHERE PAT_ID=:NEW.PAT_ID;
END IF;
IF :NEW.DOC_NAME IS NULL THEN
     SELECT PAT_DOC_CODE INTO DOC_ID FROM PATIENTT WHERE PAT_ID=:NEW.PAT_ID;
	 SELECT DOC_NAME INTO :NEW.DOC_NAME FROM DOCTOR WHERE DOC_CODE = DOC_ID;
END IF;
END;
/

SELECT * FROM BILL


--Bill (To be inserted after trigger creation)
INSERT INTO BILL (PAT_ID,AMOUNT) values ('P001',3000.4);
INSERT INTO BILL (PAT_ID,AMOUNT) values ('P002',50000.5);
INSERT INTO BILL (PAT_ID,AMOUNT) values ('P003',2500.5);
INSERT INTO BILL (PAT_ID,AMOUNT) values ('P004',5000);
INSERT INTO BILL (PAT_ID,AMOUNT) values ('P005',16000.7);


SELECT* FROM PATIENTT

SELECT *FROM patient_diagnosis

SELECT *FROM DOCTOR

SELECT *FROM BILL



--*******************************************



CREATE OR REPLACE FUNCTION xor_encrypt(p_text IN VARCHAR2, p_key IN VARCHAR2) RETURN VARCHAR2 IS
    l_encrypted VARCHAR2(32767);
    l_char      CHAR(1);
    l_key_len   PLS_INTEGER := LENGTH(p_key);
BEGIN
    l_encrypted := '';
    FOR i IN 1..LENGTH(p_text) LOOP
        l_char := CHR(BITAND(ASCII(SUBSTR(p_text, i, 1)) + ASCII(SUBSTR(p_key, MOD(i-1, l_key_len)+1, 1)), 255));
        l_encrypted := l_encrypted || l_char;
    END LOOP;
    RETURN l_encrypted;
END;
/


CREATE OR REPLACE FUNCTION raw_to_hex(p_raw IN VARCHAR2) RETURN VARCHAR2 IS
    l_hex VARCHAR2(32767);
BEGIN
    FOR i IN 1..LENGTH(p_raw) LOOP
        l_hex := l_hex || TO_CHAR(ASCII(SUBSTR(p_raw, i, 1)), 'FMXX');
    END LOOP;
    RETURN l_hex;
END;
/

DECLARE
    v_key VARCHAR2(200) := 'mysecretkey'; -- Þifreleme anahtarý
    v_pat_name VARCHAR2(60) := 'yusuf'; -- Þifrelemek istediðiniz isim
    v_encrypted_name VARCHAR2(32767);
    v_encrypted_hex VARCHAR2(32767);
BEGIN
    -- Þifreleme iþlemi
    v_encrypted_name := xor_encrypt(v_pat_name, v_key);
    
    -- Þifrelenmiþ metni hexadecimal formatta dönüþtür
    v_encrypted_hex := raw_to_hex(v_encrypted_name);

    DBMS_OUTPUT.PUT_LINE('Original Name: ' || v_pat_name);
    DBMS_OUTPUT.PUT_LINE('Encrypted Name (Hex): ' || v_encrypted_hex);
END;
/
--********************************************************************
-- XOR þifreleme fonksiyonunu oluþturun
CREATE OR REPLACE FUNCTION caesar_encrypt(p_text IN VARCHAR2, p_shift IN INTEGER) RETURN VARCHAR2 IS
    l_encrypted VARCHAR2(32767);
    l_char      CHAR(1);
    l_new_char  CHAR(1);
    l_ascii     INTEGER;
BEGIN
    l_encrypted := '';
    FOR i IN 1..LENGTH(p_text) LOOP
        l_char := SUBSTR(p_text, i, 1);
        
        IF REGEXP_LIKE(l_char, '[A-Za-z]') THEN
            l_ascii := ASCII(l_char) + p_shift;

            -- Normalize ASCII value to stay within A-Z or a-z range
            IF l_char BETWEEN 'A' AND 'Z' THEN
                l_new_char := CHR(MOD(l_ascii - ASCII('A'), 26) + ASCII('A'));
            ELSIF l_char BETWEEN 'a' AND 'z' THEN
                l_new_char := CHR(MOD(l_ascii - ASCII('a'), 26) + ASCII('a'));
            END IF;

            l_encrypted := l_encrypted || l_new_char;
        ELSE
            l_encrypted := l_encrypted || l_char;
        END IF;
    END LOOP;
    RETURN l_encrypted;
END;
/




DECLARE
    v_key VARCHAR2(200) := 'mysecretkey'; -- Þifreleme anahtarý
    v_pat_name VARCHAR2(60) := 'yusuf'; -- Þifrelemek istediðiniz isim
    v_encrypted_raw RAW(32767);
    v_encrypted_hex VARCHAR2(32767);
BEGIN
    -- Þifreleme iþlemi
    v_encrypted_raw := xor_encrypt(v_pat_name, v_key);
    
    -- Þifrelenmiþ metni hexadecimal formatta dönüþtür
    v_encrypted_hex := RAWTOHEX(v_encrypted_raw);

    DBMS_OUTPUT.PUT_LINE('Original Name: ' || v_pat_name);
    DBMS_OUTPUT.PUT_LINE('Encrypted Name (Hex): ' || v_encrypted_hex);
END;
/


--************************************************
--CEASAR 
CREATE OR REPLACE FUNCTION caesar_encrypt(p_text IN VARCHAR2, p_shift IN INTEGER) RETURN VARCHAR2 IS
    l_encrypted VARCHAR2(32767);
    l_char      CHAR(1);
    l_new_char  CHAR(1);
    l_ascii     INTEGER;
BEGIN
    l_encrypted := '';
    FOR i IN 1..LENGTH(p_text) LOOP
        l_char := SUBSTR(p_text, i, 1);
        
        IF REGEXP_LIKE(l_char, '[A-Za-z]') THEN
            l_ascii := ASCII(l_char) + p_shift;

            -- Normalize ASCII value to stay within A-Z or a-z range
            IF l_char BETWEEN 'A' AND 'Z' THEN
                l_new_char := CHR(MOD(l_ascii - ASCII('A'), 26) + ASCII('A'));
            ELSIF l_char BETWEEN 'a' AND 'z' THEN
                l_new_char := CHR(MOD(l_ascii - ASCII('a'), 26) + ASCII('a'));
            END IF;

            l_encrypted := l_encrypted || l_new_char;
        ELSE
            l_encrypted := l_encrypted || l_char;
        END IF;
    END LOOP;
    RETURN l_encrypted;
END;
/

DECLARE
    v_text VARCHAR2(200) := 'yusuf';
    v_shift INTEGER := 3; -- Kaydýrma miktarý
    v_encrypted VARCHAR2(32767);
BEGIN
    v_encrypted := caesar_encrypt(v_text, v_shift);
    DBMS_OUTPUT.PUT_LINE('Original Text: ' || v_text);
    DBMS_OUTPUT.PUT_LINE('Encrypted Text: ' || v_encrypted);
END;
/

--************************************************************************************
--ROT13 SIFRELMESI

CREATE OR REPLACE FUNCTION rot13_encrypt(p_text IN VARCHAR2) RETURN VARCHAR2 IS
    l_encrypted VARCHAR2(32767) := '';
    l_char      CHAR(1);
    l_new_char  CHAR(1);
    l_ascii     INTEGER;
BEGIN
    FOR i IN 1..LENGTH(p_text) LOOP
        l_char := SUBSTR(p_text, i, 1);

        IF REGEXP_LIKE(l_char, '[A-Za-z]') THEN
            l_ascii := ASCII(l_char) + 13;

            -- Normalize ASCII value to stay within A-Z or a-z range
            IF l_char BETWEEN 'A' AND 'Z' THEN
                l_new_char := CHR(MOD(l_ascii - ASCII('A'), 26) + ASCII('A'));
            ELSIF l_char BETWEEN 'a' AND 'z' THEN
                l_new_char := CHR(MOD(l_ascii - ASCII('a'), 26) + ASCII('a'));
            END IF;

            l_encrypted := l_encrypted || l_new_char;
        ELSE
            l_encrypted := l_encrypted || l_char;
        END IF;
    END LOOP;

    RETURN l_encrypted;
END;
/


DECLARE
    v_text VARCHAR2(200) := 'Hello World';
    v_encrypted VARCHAR2(32767);
BEGIN
    v_encrypted := rot13_encrypt(v_text);
    DBMS_OUTPUT.PUT_LINE('Original Text: ' || v_text);
    DBMS_OUTPUT.PUT_LINE('Encrypted Text: ' || v_encrypted);
END;
/



GRANT EXECUTE ON SYS.DBMS_CRYPTO TO SYSTEM;

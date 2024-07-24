CREATE TABLE HASTA (
    hasta_id_number NUMBER(20) NOT NULL ,
    hasta_name VARCHAR2(50),
    hasta_fullname VARCHAR2(50),
    hasta_date DATE,
    hasta_cinsiyet VARCHAR2(1),
    hasta_telefon_numarasi VARCHAR2(15),
    hasta_kan_grubu VARCHAR2(3),
    hasta_email VARCHAR2(50),
    hasta_adres VARCHAR2(50),
    hasta_sikayet VARCHAR2(50),
    CONSTRAINT h_i_n primary key (hasta_id_number)
);

INSERT ALL
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (1, 'Ali', 'Ali Yýlmaz', TO_DATE('1980-01-01', 'YYYY-MM-DD'), 'E', '05551234567', 'A+', 'ali1@example.com', 'Ýstanbul', 'Baþ aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (2, 'Ayþe', 'Ayþe Kaya', TO_DATE('1990-05-10', 'YYYY-MM-DD'), 'K', '05557654321', 'B+', 'ayse2@example.com', 'Ankara', 'Karýn aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (3, 'Mehmet', 'Mehmet Demir', TO_DATE('1975-12-20', 'YYYY-MM-DD'), 'E', '05559876543', '0-', 'mehmet3@example.com', 'Ýzmir', 'Öksürük')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (4, 'Zeynep', 'Zeynep Arslan', TO_DATE('1985-08-15', 'YYYY-MM-DD'), 'K', '05552345678', 'AB+', 'zeynep4@example.com', 'Bursa', 'Baþ aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (5, 'Hasan', 'Hasan Çelik', TO_DATE('1992-11-25', 'YYYY-MM-DD'), 'E', '05553456789', 'A-', 'hasan5@example.com', 'Konya', 'Karýn aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (6, 'Elif', 'Elif Yurt', TO_DATE('1995-03-30', 'YYYY-MM-DD'), 'K', '05554567890', 'B-', 'elif6@example.com', 'Kayseri', 'Öksürük')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (7, 'Ahmet', 'Ahmet Kuru', TO_DATE('1983-07-22', 'YYYY-MM-DD'), 'E', '05555678901', '0+', 'ahmet7@example.com', 'Gaziantep', 'Baþ aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (8, 'Fatma', 'Fatma Aydýn', TO_DATE('1989-09-05', 'YYYY-MM-DD'), 'K', '05556789012', 'AB-', 'fatma8@example.com', 'Adana', 'Karýn aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (9, 'Mehmet', 'Mehmet Koç', TO_DATE('1978-06-17', 'YYYY-MM-DD'), 'E', '05557890123', 'A+', 'mehmet9@example.com', 'Mersin', 'Öksürük')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (10, 'Emine', 'Emine Yýlmaz', TO_DATE('2000-12-01', 'YYYY-MM-DD'), 'K', '05558901234', 'B+', 'emine10@example.com', 'Ordu', 'Baþ aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (11, 'Ali', 'Ali Demirtaþ', TO_DATE('1993-04-10', 'YYYY-MM-DD'), 'E', '05559123456', '0-', 'ali11@example.com', 'Samsun', 'Karýn aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (12, 'Seda', 'Seda Çakýr', TO_DATE('1987-10-23', 'YYYY-MM-DD'), 'K', '05550234567', 'A+', 'seda12@example.com', 'Kocaeli', 'Öksürük')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (13, 'Burak', 'Burak Yýldýz', TO_DATE('1982-11-30', 'YYYY-MM-DD'), 'E', '05551345678', 'B-', 'burak13@example.com', 'Mugla', 'Baþ aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (14, 'Nihan', 'Nihan Yüksel', TO_DATE('1991-06-15', 'YYYY-MM-DD'), 'K', '05552456789', 'AB+', 'nihan14@example.com', 'Tekirdað', 'Karýn aðrýsý')
    INTO HASTA (hasta_id_number, hasta_name, hasta_fullname, hasta_date, hasta_cinsiyet, hasta_telefon_numarasi, hasta_kan_grubu, hasta_email, hasta_adres, hasta_sikayet)
    VALUES (15, 'Oðuz', 'Oðuz Karaca', TO_DATE('1984-05-25', 'YYYY-MM-DD'), 'E', '05553567890', 'A-', 'oguz15@example.com', 'Eskiþehir', 'Öksürük')
SELECT * FROM DUAL;

SELECT * FROM HASTA

--***************************************

CREATE TABLE MUAYNE (
    muayne_id NUMBER NOT NULL PRIMARY KEY,
    hasta_id NUMBER NOT NULL,                     -- Muayenenin ait olduðu hastanýn kimlik numarasý
    muayne_doktor_id NUMBER NOT NULL,                    
    muayne_tarihi DATE,                 
    muayne_tipi VARCHAR2(50),            
    muayne_sikayeti VARCHAR2(255),       
    muayne_sonucu VARCHAR2(255),        
    muayne_ucreti NUMBER,               
    muayne_odeme_tipi VARCHAR2(50),
    muayne_sirasi NUMBER(10) NOT NULL,
    muayne_notlari VARCHAR2(200),
    FOREIGN KEY (hasta_id) REFERENCES HASTA(hasta_id_number)
);

INSERT ALL
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (1, 1, 101, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 'Klinik', 'Baþ aðrýsý', 'Tansiyon yüksek', 150, 'Nakit', 1, 'Genel kontrol yapýldý')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (2, 2, 102, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'Acil', 'Karýn aðrýsý', 'Sindirim problemi', 200, 'Kredi Kartý', 2, 'Acil müdahale gerekli')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (3, 3, 103, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Rutin', 'Öksürük', 'Soðuk algýnlýðý', 120, 'Nakit', 3, 'Ýlaç reçetesi verildi')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (4, 4, 104, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 'Klinik', 'Baþ aðrýsý', 'Migren belirtisi', 160, 'Kredi Kartý', 4, 'Baþ aðrýsý için tedavi planý oluþturuldu')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (5, 5, 105, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 'Acil', 'Karýn aðrýsý', 'Apandisit', 250, 'Nakit', 5, 'Acil cerrahi müdahale gerekli')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (6, 6, 106, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'Rutin', 'Öksürük', 'Bronþit', 140, 'Kredi Kartý', 6, 'Reçete düzenlendi')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (7, 7, 107, TO_DATE('2024-07-10', 'YYYY-MM-DD'), 'Klinik', 'Baþ aðrýsý', 'Tansiyon kontrolü', 130, 'Nakit', 7, 'Yüksek tansiyon kontrolü yapýldý')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (8, 8, 108, TO_DATE('2024-08-20', 'YYYY-MM-DD'), 'Acil', 'Karýn aðrýsý', 'Ülser belirtisi', 220, 'Kredi Kartý', 8, 'Acil tedavi gereklidir')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (9, 9, 109, TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'Rutin', 'Öksürük', 'Soðuk algýnlýðý', 130, 'Nakit', 9, 'Ýlaç reçetesi verildi')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (10, 10, 110, TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'Klinik', 'Baþ aðrýsý', 'Gerilim tipi baþ aðrýsý', 170, 'Kredi Kartý', 10, 'Tedavi planý oluþturuldu')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (11, 11, 111, TO_DATE('2024-11-20', 'YYYY-MM-DD'), 'Acil', 'Karýn aðrýsý', 'Apandisit belirtisi', 230, 'Nakit', 11, 'Acil müdahale gerekli')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (12, 12, 112, TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'Rutin', 'Öksürük', 'Astým', 150, 'Kredi Kartý', 12, 'Tedavi ve ilaç reçetesi verildi')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (13, 13, 113, TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'Klinik', 'Baþ aðrýsý', 'Migren', 140, 'Nakit', 13, 'Migren için tedavi planý oluþturuldu')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (14, 14, 114, TO_DATE('2025-02-20', 'YYYY-MM-DD'), 'Acil', 'Karýn aðrýsý', 'Sindirim sorunlarý', 210, 'Kredi Kartý', 14, 'Acil tedavi yapýldý')
    INTO MUAYNE (muayne_id, hasta_id, muayne_doktor_id, muayne_tarihi, muayne_tipi, muayne_sikayeti, muayne_sonucu, muayne_ucreti, muayne_odeme_tipi, muayne_sirasi, muayne_notlari)
    VALUES (15, 15, 115, TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'Rutin', 'Öksürük', 'Soðuk algýnlýðý', 160, 'Nakit', 15, 'Ýlaç reçetesi ve öneriler verildi')
SELECT * FROM DUAL;

SELECT * FROM MUAYNE

--*************************************

CREATE TABLE ILAC (
    ilac_id NUMBER NOT NULL PRIMARY KEY,
    muayne_id NUMBER NOT NULL,  -- Bu sütun eklenmeli, hangi muayeneye ait olduðu belirlenir
    ilac_adi VARCHAR2(100),                
    ilac_dozaj VARCHAR2(50),                    
    ilac_tipi VARCHAR2(50),                
    ilac_firmasi VARCHAR2(100),            
    ilac_recete_tarihi DATE,                    
    ilac_son_kullanma_tarihi DATE,              
    yan_etkiler VARCHAR2(4000),
    ilac_kullanim_talimatlari VARCHAR2(100),       
    ilac_miktar NUMBER,
    FOREIGN KEY (muayne_id) REFERENCES MUAYNE(muayne_id)  -- Yabancý anahtar tanýmý
);

SELECT * FROM ILAC
DROP TABLE ILAC


INSERT ALL
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (1, 1, 'Parol', '500 mg', 'Aðrý Kesici', 'XYZ Pharma', TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2025-01-10', 'YYYY-MM-DD'), 'Nefes darlýðý, baþ dönmesi', 'Günde 3 kez 1 tablet', 30)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (2, 2, 'Aspirin', '100 mg', 'Kan Sulandýrýcý', 'ABC Pharma', TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2025-02-15', 'YYYY-MM-DD'), 'Mide bulantýsý, kanama', 'Günde 1 kez 1 tablet', 20)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (3, 3, 'Amoxicillin', '250 mg', 'Antibiyotik', 'DEF Pharma', TO_DATE('2024-03-20', 'YYYY-MM-DD'), TO_DATE('2025-03-20', 'YYYY-MM-DD'), 'Alerjik reaksiyonlar', 'Günde 3 kez 1 kapsül', 60)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (4, 4, 'Atorvastatin', '20 mg', 'Kolesterol Ýlaçý', 'GHI Pharma', TO_DATE('2024-04-25', 'YYYY-MM-DD'), TO_DATE('2025-04-25', 'YYYY-MM-DD'), 'Kas aðrýsý, baþ aðrýsý', 'Günde 1 kez 1 tablet', 30)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (5, 5, 'Loratadine', '10 mg', 'Antihistamin', 'JKL Pharma', TO_DATE('2024-05-10', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'), 'Uyuklama, baþ dönmesi', 'Günde 1 kez 1 tablet', 20)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (6, 6, 'Metformin', '500 mg', 'Diyabet Ýlaçý', 'MNO Pharma', TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2025-06-15', 'YYYY-MM-DD'), 'Mide bulantýsý, ishal', 'Günde 2 kez 1 tablet', 60)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (7, 7, 'Omeprazole', '20 mg', 'Asit Giderici', 'PQR Pharma', TO_DATE('2024-07-20', 'YYYY-MM-DD'), TO_DATE('2025-07-20', 'YYYY-MM-DD'), 'Mide aðrýsý, baþ dönmesi', 'Günde 1 kez 1 tablet', 30)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (8, 8, 'Losartan', '50 mg', 'Tansiyon Ýlaçý', 'STU Pharma', TO_DATE('2024-08-25', 'YYYY-MM-DD'), TO_DATE('2025-08-25', 'YYYY-MM-DD'), 'Baþ aðrýsý, baþ dönmesi', 'Günde 1 kez 1 tablet', 30)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (9, 9, 'Ibuprofen', '400 mg', 'Aðrý Kesici', 'VWX Pharma', TO_DATE('2024-09-30', 'YYYY-MM-DD'), TO_DATE('2025-09-30', 'YYYY-MM-DD'), 'Mide bulantýsý, baþ aðrýsý', 'Günde 3 kez 1 tablet', 30)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (10, 10, 'Cetirizine', '10 mg', 'Antihistamin', 'YZA Pharma', TO_DATE('2024-10-15', 'YYYY-MM-DD'), TO_DATE('2025-10-15', 'YYYY-MM-DD'), 'Aðrý, uyuklama', 'Günde 1 kez 1 tablet', 20)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (11, 11, 'Hydrochlorothiazide', '25 mg', 'Diüretik', 'BCD Pharma', TO_DATE('2024-11-20', 'YYYY-MM-DD'), TO_DATE('2025-11-20', 'YYYY-MM-DD'), 'Sýk idrara çýkma, baþ dönmesi', 'Günde 1 kez 1 tablet', 30)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (12, 12, 'Prednisone', '10 mg', 'Kortikosteroid', 'EFG Pharma', TO_DATE('2024-12-05', 'YYYY-MM-DD'), TO_DATE('2025-12-05', 'YYYY-MM-DD'), 'Kilo artýþý, uykusuzluk', 'Günde 1 kez 1 tablet', 20)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (13, 13, 'Metoprolol', '100 mg', 'Beta Bloker', 'GHI Pharma', TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2026-01-10', 'YYYY-MM-DD'), 'Yorgunluk, baþ aðrýsý', 'Günde 1 kez 1 tablet', 30)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (14, 14, 'Diazepam', '5 mg', 'Anksiyolitik', 'JKL Pharma', TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2026-02-15', 'YYYY-MM-DD'), 'Uyuklama, baþ dönmesi', 'Günde 1 kez 1 tablet', 20)
    INTO ilac (ilac_id, muayne_id, ilac_adi, ilac_dozaj, ilac_tipi, ilac_firmasi, ilac_recete_tarihi, ilac_son_kullanma_tarihi, yan_etkiler, ilac_kullanim_talimatlari, ilac_miktar)
    VALUES (15, 15, 'Ranitidine', '150 mg', 'Asit Giderici', 'MNO Pharma', TO_DATE('2025-03-10', 'YYYY-MM-DD'), TO_DATE('2026-03-10', 'YYYY-MM-DD'), 'Baþ aðrýsý, mide bulantýsý', 'Günde 1 kez 1 tablet', 30)
SELECT * FROM DUAL;

SELECT * FROM ILAC

--*************************************

--INNER JOIN
SELECT h.hasta_name, h.hasta_fullname, m.muayne_tarihi, m.muayne_tipi
FROM HASTA h
INNER JOIN MUAYNE m ON h.hasta_id_number = m.muayne_id;

--LEFT JOIN
SELECT h.hasta_name, h.hasta_fullname, m.muayne_tarihi, m.muayne_tipi
FROM HASTA h
LEFT JOIN MUAYNE m ON h.hasta_id_number = m.muayne_id;

--*************************************
/*
SELECT 
    h.hasta_id_number,
    h.hasta_name,
    h.hasta_fullname,
    h.hasta_date,
    h.hasta_cinsiyet,
    h.hasta_telefon_numarasi,
    h.hasta_kan_grubu,
    h.hasta_email,
    h.hasta_adres,
    h.hasta_sikayet,
    mu.muayne_id,
    mu.muayne_doktor_id,
    mu.muayne_tarihi,
    mu.muayne_tipi,
    mu.muayne_sikayeti,
    mu.muayne_sonucu,
    mu.muayne_ucreti,
    mu.muayne_odeme_tipi,
    mu.muayne_sirasi,
    mu.muayne_notlari,
    i.ilac_id,
    i.ilac_adi,
    i.ilac_dozaj,
    i.ilac_tipi,
    i.ilac_firmasi,
    i.ilac_recete_tarihi,
    i.ilac_son_kullanma_tarihi,
    i.yan_etkiler,
    i.ilac_kullanim_talimatlari,
    i.ilac_miktar
FROM
    HASTA h
    INNER JOIN MUAYNE mu ON h.hasta_id_number = mu.hasta_id  
    LEFT JOIN ILAC i ON mu.muayne_id = i.muayne_id;        
*/

SELECT 
    h.hasta_id_number AS Hasta_ID,
    h.hasta_fullname,
    h.hasta_kan_grubu,
    
    mu.muayne_tarihi AS Muayene_Tarihi,
    mu.muayne_sikayeti,
    mu.muayne_sonucu,
    mu.muayne_ucreti,
    
    i.ilac_id AS Ilac_ID,
    i.ilac_adi AS Ilac_Ad,
    i.ilac_dozaj,
    i.ilac_tipi,
    i.ilac_firmasi,
    i.ilac_recete_tarihi,
    i.ilac_miktar
FROM
    HASTA h
    INNER JOIN MUAYNE mu ON h.hasta_id_number = mu.hasta_id
    LEFT JOIN ILAC i ON mu.muayne_id = i.muayne_id;
















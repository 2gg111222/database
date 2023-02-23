
--테이블명 + 항목명 + 항목에 들어가는 데이터타입

-- use hr / mysql에서 쓰는 것

CREATE TABLE "HR"."MEMBER2" 
   (	"ID" VARCHAR2(100), 
	"PW" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"TEL" VARCHAR2(100)
   ) 


CREATE TABLE "HR"."BBS2" 
   (	"BBSNO" VARCHAR2(100), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100)
   )
	
CREATE TABLE product2{
	no varchar2(100),
	name varchar2(100),
	content varchar2(100),
	price varchar2(100)
	}

	-- HR.PRODUCT definition

CREATE TABLE "HR"."PRODUCT2" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"PRICE" NUMBER(38,0)
   )

 -- HR."MEMBER" definition

CREATE TABLE "HR"."MEMBER3" 
   (	"ID" VARCHAR2(100), 
	"PW" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"TEL" VARCHAR2(100)
   ) 
   
   CREATE TABLE MEMBER4 
   (	"ID" VARCHAR2(100), 
	"PW" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"TEL" VARCHAR2(100)
   ) 
  
INSERT INTO "MEMBER2" VALUES ('park','1234','park','011')



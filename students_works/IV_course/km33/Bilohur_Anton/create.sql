CREATE TABLE USERS
(
  PASSWORD VARCHAR2(20 BYTE) NOT NULL 
, ROLE VARCHAR2(20 BYTE) NOT NULL 
, STUDENT_GROUP VARCHAR2(20 BYTE) 
, NAME_PK VARCHAR2(20 BYTE) NOT NULL 
, RECORD_BOOK VARCHAR2(20 BYTE) 
, CONSTRAINT TABLE1_PK1 PRIMARY KEY 
  (
    NAME_PK 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE USERS 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

CREATE TABLE COMMENTS 
(
  ID_COMMENT VARCHAR2(20 BYTE) NOT NULL 
, RECORD_BOOK_FK VARCHAR2(20 BYTE) 
, NAME_FK VARCHAR2(20 BYTE) NOT NULL 
, NAME_WORK_FK VARCHAR2(20 BYTE) NOT NULL 
, CONSTRAINT COMMENTS_PK1 PRIMARY KEY 
  (
    ID_COMMENT 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE USERS 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE COMMENTS
ADD CONSTRAINT COMMENTS_FK3 FOREIGN KEY
(
  ID_COMMENT 
)
REFERENCES USERS
(
  NAME_PK 
)
ENABLE;

ALTER TABLE COMMENTS
ADD CONSTRAINT COMMENTS_FK4 FOREIGN KEY
(
  ID_COMMENT 
)
REFERENCES WORK
(
  NAME_WORK 
)
ENABLE;

CREATE TABLE WORK
(
  BODY VARCHAR2(20 BYTE) NOT NULL 
, TIME DATE NOT NULL 
, NAME_FK VARCHAR2(20 BYTE) NOT NULL 
, ID_COMMENT_FK VARCHAR2(20 BYTE) NOT NULL 
, NAME_WORK VARCHAR2(20 BYTE) NOT NULL 
, CONSTRAINT WORK_PK1 PRIMARY KEY 
  (
    NAME_WORK
  )
  ENABLE 
) 
LOGGING 
TABLESPACE USERS 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE WORK
ADD CONSTRAINT WORK_FK1 FOREIGN KEY
(
  ID_COMMENT_FK
)
REFERENCES COMMENT
(
  ID_COMMENT 
)
ENABLE;


ALTER TABLE WORK
ADD CONSTRAINT WORK_FK2 FOREIGN KEY
(
  NAME_FK
)
REFERENCES USERS
(
  NAME_PK 
)
ENABLE;



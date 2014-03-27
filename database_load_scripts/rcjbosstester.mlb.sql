CREATE TABLE PLAYER
(
  ID          INTEGER                           NOT NULL,
  FIRST_NAME  VARCHAR2(50 BYTE)                 NOT NULL,
  LAST_NAME   VARCHAR2(50 BYTE)                 NOT NULL,
  POSITION    VARCHAR2(10 BYTE),
  TEAM_ID     INTEGER
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE TEAM
(
  ID          INTEGER                           NOT NULL,
  CITY        VARCHAR2(30 BYTE)                 NOT NULL,
  NAME        VARCHAR2(30 BYTE)                 NOT NULL,
  CONFERENCE  VARCHAR2(10 BYTE),
  DIVISION    VARCHAR2(20 BYTE)
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index REDCAIMAN.SYS_C003764.
--  The object is created when the parent object is created.

--  There is no statement for index REDCAIMAN.SYS_C003775.
--  The object is created when the parent object is created.

CREATE OR REPLACE TRIGGER PLAYER_TRG
BEFORE INSERT
ON PLAYER
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
-- For Toad:  Highlight column ID
  :new.ID := PLAYER_ID_SEQ.nextval;
END PLAYER_TRG;
/


ALTER TABLE PLAYER ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
  ENABLE VALIDATE);

ALTER TABLE TEAM ADD (
  PRIMARY KEY
  (ID)
  USING INDEX
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
  ENABLE VALIDATE);

SET DEFINE OFF;
--SQL Statement which produced this data:
--
--  SELECT * FROM REDCAIMAN.PLAYER;
--
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (773, 'Corey', 'Dickerson', 'CF', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (774, 'Carlos', 'Gonzalez', 'LF', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (775, 'Drew', 'Stubbs', 'LF', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (776, 'Jose', 'Dominguez', 'RP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (777, 'J.P.', 'Howell', 'RP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (778, 'Kenley', 'Jansen', 'RP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (779, 'Clayton', 'Kershaw', 'SP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (780, 'Paul', 'Maholm', 'SP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (781, 'Chris', 'Perez', 'RP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (782, 'Paco', 'Rodriguez', 'RP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (783, 'Seth', 'Rosin', 'RP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (784, 'Hyun-Jin', 'Ryu', 'SP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (785, 'Brian', 'Wilson', 'RP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (786, 'Chris', 'Withrow', 'RP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (787, 'Jamey', 'Wright', 'RP', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (788, 'Drew', 'Butera', 'C', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (789, 'A.J.', 'Ellis', 'C', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (790, 'Adrian', 'Gonzalez', '1B', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (791, 'Dee', 'Gordon', 'SS', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (792, 'Hanley', 'Ramirez', 'SS', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (793, 'Justin', 'Turner', '2B', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (794, 'Juan', 'Uribe', '3B', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (795, 'Mike', 'Baxter', 'RF', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (796, 'Carl', 'Crawford', 'LF', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (797, 'Andre', 'Ethier', 'CF', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (798, 'Chone', 'Figgins', 'LF', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (799, 'Yasiel', 'Puig', 'RF', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (800, 'Scott', 'Van Slyke', 'LF', 28);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (801, 'Joaquin', 'Benoit', 'RP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (802, 'Andrew', 'Cashner', 'SP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (803, 'Robbie', 'Erlin', 'SP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (804, 'Josh', 'Johnson', 'SP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (805, 'Casey', 'Kelly', 'SP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (806, 'Ian', 'Kennedy', 'SP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (807, 'Donn', 'Roach', 'SP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (808, 'Tyson', 'Ross', 'RP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (809, 'Tim', 'Stauffer', 'RP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (810, 'Huston', 'Street', 'RP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (811, 'Eric', 'Stults', 'SP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (812, 'Dale', 'Thayer', 'RP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (813, 'Alex', 'Torres', 'RP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (814, 'Nick', 'Vincent', 'RP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (815, 'Joe', 'Wieland', 'SP', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (816, 'Yasmani', 'Grandal', 'C', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (817, 'Nick', 'Hundley', 'C', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (818, 'Rene', 'Rivera', 'C', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (819, 'Yonder', 'Alonso', '1B', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (820, 'Alexi', 'Amarista', '2B', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (821, 'Everth', 'Cabrera', 'SS', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (822, 'Jedd', 'Gyorko', '2B', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (823, 'Chase', 'Headley', '3B', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (824, 'Tommy', 'Medica', '1B', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (825, 'Kyle', 'Blanks', 'RF', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (826, 'Chris', 'Denorfia', 'RF', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (827, 'Cameron', 'Maybin', 'CF', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (828, 'Carlos', 'Quentin', 'LF', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (829, 'Seth', 'Smith', 'RF', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (830, 'Will', 'Venable', 'CF', 29);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (831, 'Jeremy', 'Affeldt', 'RP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (832, 'Madison', 'Bumgarner', 'SP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (833, 'Matt', 'Cain', 'SP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (834, 'Santiago', 'Casilla', 'RP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (835, 'Tim', 'Hudson', 'SP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (836, 'David', 'Huff', 'RP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (837, 'Tim', 'Lincecum', 'SP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (838, 'Javier', 'Lopez', 'RP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (839, 'Jean', 'Machi', 'RP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (840, 'Yusmeiro', 'Petit', 'RP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (841, 'Sergio', 'Romo', 'RP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (842, 'Ryan', 'Vogelsong', 'SP', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (843, 'Buster', 'Posey', 'C', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (844, 'Hector', 'Sanchez', 'C', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (845, 'Ehire', 'Adrianza', 'SS', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (846, 'Joaquin', 'Arias', '3B', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (847, 'Brandon', 'Belt', '1B', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (848, 'Brandon', 'Crawford', 'SS', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (849, 'Pablo', 'Sandoval', '3B', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (850, 'Marco', 'Scutaro', '2B', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (851, 'Gregor', 'Blanco', 'CF', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (852, 'Michael', 'Morse', 'LF', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (853, 'Angel', 'Pagan', 'CF', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (854, 'Hunter', 'Pence', 'RF', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (855, 'Juan', 'Perez', 'CF', 30);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (1, 'Adam', 'Jones', 'CF', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (2, 'Brian', 'Matusz', 'RP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (3, 'Bud', 'Norris', 'SP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (4, 'Chris', 'Davis', '1B', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (5, 'Chris', 'Tillman', 'SP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (6, 'Darren', 'O''Day', 'RP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (7, 'David', 'Lough', 'LF', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (8, 'Edgmer', 'Escalona', 'SP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (9, 'Francisco', 'Peguero', 'LF', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (10, 'Henry', 'Urrutia', 'DH', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (11, 'J.J.', 'Hardy', 'SS', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (12, 'Jemile', 'Weeks', '2B', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (13, 'Jonathan', 'Schoop', '2B', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (14, 'Josh', 'Stinson', 'RP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (15, 'Kevin', 'Gausman', 'SP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (16, 'Manny', 'Machado', '3B', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (17, 'Matt', 'Wieters', 'C', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (18, 'Michael', 'Almanzar', '3B', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (19, 'Miguel', 'Gonzalez', 'SP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (20, 'Nelson', 'Cruz', 'RF', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (21, 'Nick', 'Markakis', 'RF', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (22, 'Nolan', 'Reimold', 'DH', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (23, 'Ryan', 'Flaherty', '2B', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (24, 'Ryan', 'Webb', 'RP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (25, 'Stephen', 'Lombardozzi', '2B', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (26, 'Steve', 'Clevenger', 'C', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (27, 'Steve', 'Johnson', 'RP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (28, 'Steve', 'Pearce', 'LF', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (29, 'T.J.', 'McFarland', 'RP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (30, 'Tommy', 'Hunter', 'RP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (31, 'Ubaldo', 'Jimenez', 'SP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (32, 'Wei-Yin', 'Chen', 'SP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (33, 'Zach', 'Britton', 'SP', 1);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (34, 'Burke', 'Badenhop', 'RP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (35, 'Craig', 'Breslow', 'RP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (36, 'Drake', 'Britton', 'RP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (37, 'Clay', 'Buchholz', 'SP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (38, 'Chris', 'Capuano', 'SP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (39, 'Felix', 'Doubront', 'SP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (40, 'John', 'Lackey', 'SP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (41, 'Jon', 'Lester', 'SP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (42, 'Andrew', 'Miller', 'RP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (43, 'Edward', 'Mujica', 'RP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (44, 'Jake', 'Peavy', 'SP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (45, 'Junichi', 'Tazawa', 'RP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (46, 'Koji', 'Uehara', 'RP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (47, 'Alex', 'Wilson', 'RP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (48, 'Brandon', 'Workman', 'RP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (49, 'Steven', 'Wright', 'SP', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (50, 'Ryan', 'Lavarnway', 'C', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (51, 'A.J.', 'Pierzynski', 'C', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (52, 'David', 'Ross', 'C', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (53, 'Xander', 'Bogaerts', 'SS', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (54, 'Jonathan', 'Herrera', '2B', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (55, 'Will', 'Middlebrooks', '3B', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (56, 'Mike', 'Napoli', '1B', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (57, 'Dustin', 'Pedroia', '2B', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (58, 'Jackie', 'Bradley', 'CF', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (59, 'Mike', 'Carp', 'LF', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (60, 'Jonny', 'Gomes', 'LF', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (61, 'Daniel', 'Nava', 'LF', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (62, 'Grady', 'Sizemore', 'CF', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (63, 'Shane', 'Victorino', 'RF', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (64, 'David', 'Ortiz', 'DH', 2);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (65, 'Dellin', 'Betances', 'RP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (66, 'Cesar', 'Cabral', 'RP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (67, 'Preston', 'Claiborne', 'RP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (68, 'Shane', 'Greene', 'SP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (69, 'Shawn', 'Kelley', 'RP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (70, 'Hiroki', 'Kuroda', 'SP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (71, 'Ivan', 'Nova', 'SP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (72, 'Vidal', 'Nuno', 'SP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (73, 'David', 'Phelps', 'SP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (74, 'Michael', 'Pineda', 'SP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (75, 'David', 'Robertson', 'RP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (76, 'CC', 'Sabathia', 'SP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (77, 'Masahiro', 'Tanaka', 'SP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (78, 'Matt', 'Thornton', 'RP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (79, 'Adam', 'Warren', 'RP', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (80, 'Francisco', 'Cervelli', 'C', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (81, 'Brian', 'McCann', 'C', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (82, 'Austin', 'Romine', 'C', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (83, 'Dean', 'Anna', 'SS', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (84, 'Derek', 'Jeter', 'SS', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (85, 'Kelly', 'Johnson', '2B', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (86, 'Eduardo', 'Nunez', 'SS', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (87, 'Brian', 'Roberts', '2B', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (88, 'Brendan', 'Ryan', 'SS', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (89, 'Mark', 'Teixeira', '1B', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (90, 'Zoilo', 'Almonte', 'LF', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (91, 'Carlos', 'Beltran', 'RF', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (92, 'Jacoby', 'Ellsbury', 'CF', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (93, 'Brett', 'Gardner', 'CF', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (94, 'Alfonso', 'Soriano', 'LF', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (95, 'Ichiro', 'Suzuki', 'RF', 3);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (96, 'Chris', 'Archer', 'SP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (97, 'Grant', 'Balfour', 'RP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (98, 'Heath', 'Bell', 'RP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (99, 'Alex', 'Cobb', 'SP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (100, 'Brandon', 'Gomes', 'RP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (101, 'Jeremy', 'Hellickson', 'SP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (102, 'Josh', 'Lueke', 'RP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (103, 'Jake', 'McGee', 'RP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (104, 'Matt', 'Moore', 'SP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (105, 'Jake', 'Odorizzi', 'SP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (106, 'Juan Carlos', 'Oviedo', 'RP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (107, 'Joel', 'Peralta', 'RP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (108, 'David', 'Price', 'SP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (109, 'Cesar', 'Ramos', 'RP', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (110, 'Ryan', 'Hanigan', 'C', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (111, 'Jose', 'Molina', 'C', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (112, 'Tim', 'Beckham', '2B', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (113, 'Yunel', 'Escobar', 'SS', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (114, 'Logan', 'Forsythe', '3B', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (115, 'James', 'Loney', '1B', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (116, 'Evan', 'Longoria', '3B', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (117, 'Ben', 'Zobrist', '2B', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (118, 'David', 'DeJesus', 'CF', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (119, 'Brandon', 'Guyer', 'RF', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (120, 'Desmond', 'Jennings', 'CF', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (121, 'Matt', 'Joyce', 'RF', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (122, 'Wil', 'Myers', 'RF', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (123, 'Sean', 'Rodriguez', 'LF', 4);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (124, 'Mark', 'Buehrle', 'SP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (125, 'Brett', 'Cecil', 'RP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (126, 'Steve', 'Delabar', 'RP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (127, 'R.A.', 'Dickey', 'SP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (128, 'J.A.', 'Happ', 'SP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (129, 'Drew', 'Hutchison', 'SP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (130, 'Casey', 'Janssen', 'RP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (131, 'Jeremy', 'Jeffress', 'RP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (132, 'Aaron', 'Loup', 'RP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (133, 'Dustin', 'McGowan', 'RP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (134, 'Brandon', 'Morrow', 'SP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (135, 'Todd', 'Redmond', 'SP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (136, 'Esmil', 'Rogers', 'RP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (137, 'Sergio', 'Santos', 'RP', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (138, 'Erik', 'Kratz', 'C', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (139, 'Dioner', 'Navarro', 'C', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (140, 'Josh', 'Thole', 'C', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (141, 'Edwin', 'Encarnacion', '1B', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (142, 'Ryan', 'Goins', '2B', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (143, 'Maicer', 'Izturis', '2B', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (144, 'Brett', 'Lawrie', '3B', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (145, 'Adam', 'Lind', '1B', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (146, 'Jose', 'Reyes', 'SS', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (147, 'Jose', 'Bautista', 'RF', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (148, 'Melky', 'Cabrera', 'LF', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (149, 'Colby', 'Rasmus', 'CF', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (150, 'Moises', 'Sierra', 'RF', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (151, 'Matt', 'Tuiasosopo', 'LF', 5);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (152, 'Ronald', 'Belisario', 'RP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (153, 'Maikel', 'Cleto', 'RP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (154, 'John', 'Danks', 'SP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (155, 'Scott', 'Downs', 'RP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (156, 'Erik', 'Johnson', 'SP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (157, 'Nate', 'Jones', 'RP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (158, 'Matt', 'Lindstrom', 'RP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (159, 'Felipe', 'Paulino', 'SP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (160, 'Jose', 'Quintana', 'SP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (161, 'Chris', 'Sale', 'SP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (162, 'Donnie', 'Veal', 'RP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (163, 'Daniel', 'Webb', 'RP', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (164, 'Tyler', 'Flowers', 'C', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (165, 'Adrian', 'Nieto', 'C', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (166, 'Jose', 'Abreu', '1B', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (167, 'Gordon', 'Beckham', '2B', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (168, 'Leury', 'Garcia', '2B', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (169, 'Conor', 'Gillaspie', '3B', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (170, 'Jeff', 'Keppinger', '2B', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (171, 'Paul', 'Konerko', '1B', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (172, 'Alexei', 'Ramirez', 'SS', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (173, 'Marcus', 'Semien', 'SS', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (174, 'Alejandro', 'De Aza', 'CF', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (175, 'Adam', 'Eaton', 'LF', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (176, 'Avisail', 'Garcia', 'RF', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (177, 'Dayan', 'Viciedo', 'LF', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (178, 'Adam', 'Dunn', 'DH', 6);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (179, 'Cody', 'Allen', 'RP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (180, 'John', 'Axford', 'RP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (181, 'Carlos', 'Carrasco', 'SP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (182, 'Corey', 'Kluber', 'SP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (183, 'Justin', 'Masterson', 'SP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (184, 'Zach', 'McAllister', 'SP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (185, 'Josh', 'Outman', 'RP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (186, 'Vinnie', 'Pestano', 'RP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (187, 'Marc', 'Rzepczynski', 'RP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (188, 'Danny', 'Salazar', 'SP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (189, 'Bryan', 'Shaw', 'RP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (190, 'Josh', 'Tomlin', 'SP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (191, 'Blake', 'Wood', 'RP', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (192, 'Yan', 'Gomes', 'C', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (193, 'Mike', 'Aviles', '3B', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (194, 'Asdrubal', 'Cabrera', 'SS', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (195, 'Lonnie', 'Chisenhall', '3B', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (196, 'Jason', 'Kipnis', '2B', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (197, 'Ryan', 'Raburn', '2B', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (198, 'Carlos', 'Santana', '3B', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (199, 'Justin', 'Sellers', 'SS', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (200, 'Nick', 'Swisher', '1B', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (201, 'Michael', 'Brantley', 'LF', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (202, 'Nyjer', 'Morgan', 'RF', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (203, 'David', 'Murphy', 'RF', 7);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (204, 'Al', 'Alburquerque', 'RP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (205, 'Joba', 'Chamberlain', 'RP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (206, 'Phil', 'Coke', 'RP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (207, 'Ian', 'Krol', 'RP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (208, 'Joe', 'Nathan', 'RP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (209, 'Rick', 'Porcello', 'SP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (210, 'Luke', 'Putkonen', 'RP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (211, 'Evan', 'Reed', 'RP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (212, 'Bruce', 'Rondon', 'RP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (213, 'Anibal', 'Sanchez', 'SP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (214, 'Max', 'Scherzer', 'SP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (215, 'Drew', 'Smyly', 'SP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (216, 'Justin', 'Verlander', 'SP', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (217, 'Alex', 'Avila', 'C', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (218, 'Bryan', 'Holaday', 'C', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (219, 'Miguel', 'Cabrera', '1B', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (220, 'Nick', 'Castellanos', '3B', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (221, 'Jose', 'Iglesias', 'SS', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (222, 'Ian', 'Kinsler', '2B', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (223, 'Andrew', 'Romine', '3B', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (224, 'Rajai', 'Davis', 'LF', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (225, 'Andy', 'Dirks', 'LF', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (226, 'Torii', 'Hunter', 'RF', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (227, 'Austin', 'Jackson', 'CF', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (228, 'Don', 'Kelly', 'LF', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (229, 'Victor', 'Martinez', 'DH', 8);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (230, 'Francisley', 'Bueno', 'RP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (231, 'Bruce', 'Chen', 'SP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (232, 'Louis', 'Coleman', 'RP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (233, 'Tim', 'Collins', 'RP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (234, 'Aaron', 'Crow', 'RP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (235, 'Wade', 'Davis', 'SP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (236, 'Jeremy', 'Guthrie', 'SP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (237, 'Kelvin', 'Herrera', 'RP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (238, 'Luke', 'Hochevar', 'RP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (239, 'Greg', 'Holland', 'RP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (240, 'Patrick', 'Schuster', 'RP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (241, 'James', 'Shields', 'SP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (242, 'Jason', 'Vargas', 'SP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (243, 'Yordano', 'Ventura', 'SP', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (244, 'Brett', 'Hayes', 'C', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (245, 'Salvador', 'Perez', 'C', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (246, 'Pedro', 'Ciriaco', 'SS', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (247, 'Alcides', 'Escobar', 'SS', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (248, 'Eric', 'Hosmer', '1B', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (249, 'Omar', 'Infante', '2B', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (250, 'Mike', 'Moustakas', '3B', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (251, 'Danny', 'Valencia', '2B', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (252, 'Norichika', 'Aoki', 'RF', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (253, 'Lorenzo', 'Cain', 'CF', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (254, 'Jarrod', 'Dyson', 'CF', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (255, 'Alex', 'Gordon', 'LF', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (256, 'Justin', 'Maxwell', 'RF', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (257, 'Billy', 'Butler', 'DH', 9);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (258, 'Jared', 'Burton', 'RP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (259, 'Kevin', 'Correia', 'SP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (260, 'Samuel', 'Deduno', 'SP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (261, 'Scott', 'Diamond', 'SP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (262, 'Brian', 'Duensing', 'RP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (263, 'Casey', 'Fien', 'RP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (264, 'Kyle', 'Gibson', 'SP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (265, 'Phil', 'Hughes', 'SP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (266, 'Ricky', 'Nolasco', 'SP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (267, 'Mike', 'Pelfrey', 'SP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (268, 'Glen', 'Perkins', 'RP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (269, 'Anthony', 'Swarzak', 'RP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (270, 'Caleb', 'Thielbar', 'RP', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (271, 'Josmil', 'Pinto', 'C', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (272, 'Kurt', 'Suzuki', 'C', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (273, 'Chris', 'Colabello', '1B', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (274, 'Brian', 'Dozier', '2B', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (275, 'Eduardo', 'Escobar', 'SS', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (276, 'Pedro', 'Florimon', 'SS', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (277, 'Joe', 'Mauer', '1B', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (278, 'Trevor', 'Plouffe', '3B', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (279, 'Oswaldo', 'Arcia', 'LF', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (280, 'Aaron', 'Hicks', 'CF', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (281, 'Chris', 'Parmelee', 'RF', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (282, 'Alex', 'Presley', 'CF', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (283, 'Josh', 'Willingham', 'LF', 10);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (284, 'Matt', 'Albers', 'RP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (285, 'Anthony', 'Bass', 'RP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (286, 'Kevin', 'Chapman', 'RP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (287, 'Jarred', 'Cosart', 'SP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (288, 'Jesse', 'Crain', 'RP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (289, 'Scott', 'Feldman', 'SP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (290, 'Josh', 'Fields', 'RP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (291, 'Lucas', 'Harrell', 'SP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (292, 'Dallas', 'Keuchel', 'SP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (293, 'Brett', 'Oberholtzer', 'SP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (294, 'Brad', 'Peacock', 'SP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (295, 'Chad', 'Qualls', 'RP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (296, 'Raul', 'Valdes', 'RP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (297, 'Alex', 'White', 'SP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (298, 'Jerome', 'Williams', 'SP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (299, 'Asher', 'Wojciechowski', 'SP', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (300, 'Jason', 'Castro', 'C', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (301, 'Carlos', 'Corporan', 'C', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (302, 'Jose', 'Altuve', '2B', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (303, 'Chris', 'Carter', '1B', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (304, 'Matt', 'Dominguez', '3B', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (305, 'Marwin', 'Gonzalez', 'SS', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (306, 'Jesus', 'Guzman', '1B', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (307, 'Jonathan', 'Villar', 'SS', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (308, 'Dexter', 'Fowler', 'CF', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (309, 'Robbie', 'Grossman', 'LF', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (310, 'L.J.', 'Hoes', 'RF', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (311, 'Marc', 'Krauss', 'LF', 11);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (312, 'Jose', 'Alvarez', 'SP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (313, 'Joe', 'Blanton', 'SP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (314, 'Ryan', 'Brasier', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (315, 'Sean', 'Burnett', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (316, 'Dane', 'De La Rosa', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (317, 'Ernesto', 'Frieri', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (318, 'Kevin', 'Jepsen', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (319, 'Michael', 'Kohn', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (320, 'Nick', 'Maronde', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (321, 'Brian', 'Moran', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (322, 'Cory', 'Rasmus', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (323, 'Garrett', 'Richards', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (324, 'Fernando', 'Salas', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (325, 'Hector', 'Santiago', 'SP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (326, 'Matt', 'Shoemaker', 'SP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (327, 'Tyler', 'Skaggs', 'SP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (328, 'Joe', 'Smith', 'RP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (329, 'Jered', 'Weaver', 'SP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (330, 'C.J.', 'Wilson', 'SP', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (331, 'Hank', 'Conger', 'C', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (332, 'Chris', 'Iannetta', 'C', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (333, 'Erick', 'Aybar', 'SS', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (334, 'David', 'Freese', '3B', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (335, 'Grant', 'Green', '2B', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (336, 'Howie', 'Kendrick', '2B', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (337, 'John', 'McDonald', 'SS', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (338, 'Albert', 'Pujols', '1B', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (339, 'Kole', 'Calhoun', 'RF', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (340, 'Collin', 'Cowgill', 'LF', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (341, 'Josh', 'Hamilton', 'LF', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (342, 'Raul', 'Ibanez', 'LF', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (343, 'J.B.', 'Shuck', 'LF', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (344, 'Mike', 'Trout', 'CF', 12);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (345, 'Fernando', 'Abad', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (346, 'Jesse', 'Chavez', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (347, 'Ryan', 'Cook', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (348, 'Sean', 'Doolittle', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (349, 'Sonny', 'Gray', 'SP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (350, 'Luke', 'Gregerson', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (351, 'A.J.', 'Griffin', 'SP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (352, 'Jim', 'Johnson', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (353, 'Scott', 'Kazmir', 'SP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (354, 'Tommy', 'Milone', 'SP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (355, 'Dan', 'Otero', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (356, 'Drew', 'Pomeranz', 'SP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (357, 'Fernando', 'Rodriguez', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (358, 'Joe', 'Savery', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (359, 'Evan', 'Scribner', 'RP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (360, 'Dan', 'Straily', 'SP', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (361, 'Chris', 'Gimenez', 'C', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (362, 'John', 'Jaso', 'C', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (363, 'Derek', 'Norris', 'C', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (364, 'Stephen', 'Vogt', 'C', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (365, 'Daric', 'Barton', '1B', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (366, 'Alberto', 'Callaspo', '2B', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (367, 'Josh', 'Donaldson', '3B', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (368, 'Jake', 'Elmore', '2B', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (369, 'Jed', 'Lowrie', 'SS', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (370, 'Brandon', 'Moss', '1B', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (371, 'Nick', 'Punto', '3B', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (372, 'Eric', 'Sogard', '2B', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (373, 'Yoenis', 'Cespedes', 'LF', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (374, 'Coco', 'Crisp', 'CF', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (375, 'Craig', 'Gentry', 'LF', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (376, 'Josh', 'Reddick', 'RF', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (377, 'Michael', 'Taylor', 'RF', 13);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (378, 'Blake', 'Beavan', 'RP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (379, 'Danny', 'Farquhar', 'RP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (380, 'Charlie', 'Furbush', 'RP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (381, 'Felix', 'Hernandez', 'SP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (382, 'Hisashi', 'Iwakuma', 'SP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (383, 'Lucas', 'Luetge', 'RP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (384, 'Brandon', 'Maurer', 'SP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (385, 'Yoervis', 'Medina', 'RP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (386, 'Hector', 'Noesi', 'RP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (387, 'James', 'Paxton', 'SP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (388, 'Stephen', 'Pryor', 'RP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (389, 'Erasmo', 'Ramirez', 'SP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (390, 'Fernando', 'Rodney', 'RP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (391, 'Taijuan', 'Walker', 'SP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (392, 'Tom', 'Wilhelmsen', 'RP', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (393, 'John', 'Buck', 'C', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (394, 'Mike', 'Zunino', 'C', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (395, 'Willie', 'Bloomquist', '3B', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (396, 'Robinson', 'Cano', '2B', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (397, 'Nick', 'Franklin', '2B', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (398, 'Brad', 'Miller', 'SS', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (399, 'Logan', 'Morrison', '1B', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (400, 'Stefen', 'Romero', '3B', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (401, 'Kyle', 'Seager', '3B', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (402, 'Justin', 'Smoak', '1B', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (403, 'Dustin', 'Ackley', 'CF', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (404, 'Abraham', 'Almonte', 'CF', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (405, 'Corey', 'Hart', 'RF', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (406, 'Michael', 'Saunders', 'CF', 14);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (407, 'Neal', 'Cotts', 'RP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (408, 'Yu', 'Darvish', 'SP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (409, 'Pedro', 'Figueroa', 'RP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (410, 'Jason', 'Frasor', 'RP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (411, 'Tommy', 'Hanson', 'SP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (412, 'Matt', 'Harrison', 'SP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (413, 'Michael', 'Kirkman', 'RP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (414, 'Alexi', 'Ogando', 'SP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (415, 'Martin', 'Perez', 'SP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (416, 'Robbie', 'Ross', 'RP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (417, 'Joe', 'Saunders', 'SP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (418, 'Tanner', 'Scheppers', 'RP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (419, 'Joakim', 'Soria', 'RP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (420, 'Shawn', 'Tolleson', 'RP', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (421, 'J.P.', 'Arencibia', 'C', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (422, 'Robinson', 'Chirinos', 'C', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (423, 'Geovany', 'Soto', 'C', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (424, 'Elvis', 'Andrus', 'SS', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (425, 'Adrian', 'Beltre', '3B', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (426, 'Prince', 'Fielder', '1B', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (427, 'Mitch', 'Moreland', '1B', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (428, 'Jurickson', 'Profar', '2B', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (429, 'Adam', 'Rosales', 'SS', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (430, 'Jim', 'Adduci', 'CF', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (431, 'Engel', 'Beltre', 'CF', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (432, 'Michael', 'Choice', 'CF', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (433, 'Shin-Soo', 'Choo', 'LF', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (434, 'Leonys', 'Martin', 'CF', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (435, 'Alex', 'Rios', 'RF', 15);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (436, 'Luis', 'Avilan', 'RP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (437, 'David', 'Carpenter', 'RP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (438, 'Cory', 'Gearrin', 'RP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (439, 'David', 'Hale', 'SP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (440, 'Aaron', 'Harang', 'SP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (441, 'Craig', 'Kimbrel', 'RP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (442, 'Ervin', 'Santana', 'SP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (443, 'Julio', 'Teheran', 'SP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (444, 'Anthony', 'Varvaro', 'RP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (445, 'Jordan', 'Walden', 'RP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (446, 'Alex', 'Wood', 'RP', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (447, 'Ryan', 'Doumit', 'C', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (448, 'Evan', 'Gattis', 'C', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (449, 'Gerald', 'Laird', 'C', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (450, 'Freddie', 'Freeman', '1B', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (451, 'Chris', 'Johnson', '3B', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (452, 'Ernesto', 'Mejia', '1B', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (453, 'Tyler', 'Pastornicky', '2B', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (454, 'Ramiro', 'Pena', '3B', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (455, 'Andrelton', 'Simmons', 'SS', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (456, 'Dan', 'Uggla', '2B', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (457, 'Jason', 'Heyward', 'RF', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (458, 'Jordan', 'Schafer', 'CF', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (459, 'B.J.', 'Upton', 'CF', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (460, 'Justin', 'Upton', 'LF', 16);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (461, 'Henderson', 'Alvarez', 'SP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (462, 'Steve', 'Cishek', 'RP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (463, 'Mike', 'Dunn', 'RP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (464, 'Nate', 'Eovaldi', 'SP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (465, 'Jose', 'Fernandez', 'SP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (466, 'Brad', 'Hand', 'SP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (467, 'Dan', 'Jennings', 'RP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (468, 'Tom', 'Koehler', 'SP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (469, 'Carlos', 'Marmol', 'SP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (470, 'A.J.', 'Ramos', 'RP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (471, 'Jacob', 'Turner', 'SP', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (472, 'Jeff', 'Mathis', 'C', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (473, 'Jarrod', 'Saltalamacchia', 'C', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (474, 'Jeff', 'Baker', '2B', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (475, 'Derek', 'Dietrich', '2B', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (476, 'Greg', 'Dobbs', '1B', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (477, 'Rafael', 'Furcal', 'SS', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (478, 'Adeiny', 'Hechavarria', 'SS', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (479, 'Garrett', 'Jones', '1B', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (480, 'Ed', 'Lucas', '3B', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (481, 'Casey', 'McGehee', '3B', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (482, 'Donovan', 'Solano', '2B', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (483, 'Brian', 'Bogusevic', 'RF', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (484, 'Jake', 'Marisnick', 'CF', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (485, 'Marcell', 'Ozuna', 'RF', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (486, 'Giancarlo', 'Stanton', 'RF', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (487, 'Christian', 'Yelich', 'LF', 17);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (488, 'Vic', 'Black', 'RP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (489, 'Bartolo', 'Colon', 'SP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (490, 'Jeurys', 'Familia', 'RP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (491, 'Dillon', 'Gee', 'SP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (492, 'Gonzalez', 'Germen', 'RP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (493, 'Matt', 'Harvey', 'SP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (494, 'Jenrry', 'Mejia', 'SP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (495, 'Jonathon', 'Niese', 'SP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (496, 'Bobby', 'Parnell', 'RP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (497, 'Scott', 'Rice', 'RP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (498, 'Carlos', 'Torres', 'RP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (499, 'Zack', 'Wheeler', 'SP', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (500, 'Travis', 'd''Arnaud', 'C', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (501, 'Anthony', 'Recker', 'C', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (502, 'Ike', 'Davis', '1B', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (503, 'Lucas', 'Duda', '1B', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (504, 'Daniel', 'Murphy', '2B', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (505, 'Josh', 'Satin', '1B', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (506, 'Ruben', 'Tejada', 'SS', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (507, 'David', 'Wright', '3B', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (508, 'Andrew', 'Brown', 'RF', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (509, 'Curtis', 'Granderson', 'RF', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (510, 'Juan', 'Lagares', 'CF', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (511, 'Chris', 'Young', 'CF', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (512, 'Eric', 'Young Jr.', 'LF', 18);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (521, 'Mike', 'Adams', 'RP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (522, 'Phillippe', 'Aumont', 'RP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (523, 'Antonio', 'Bastardo', 'RP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (524, 'A.J.', 'Burnett', 'SP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (525, 'Justin', 'De Fratus', 'RP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (526, 'Jacob', 'Diekman', 'RP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (527, 'Miguel', 'Alfredo Gonzalez', 'SP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (528, 'Cole', 'Hamels', 'SP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (529, 'Roberto', 'Hernandez', 'SP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (530, 'Kyle', 'Kendrick', 'SP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (531, 'Cliff', 'Lee', 'SP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (532, 'Brad', 'Lincoln', 'RP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (533, 'Ethan', 'Martin', 'SP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (534, 'Kevin', 'Munson', 'RP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (535, 'Jonathan', 'Papelbon', 'RP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (536, 'Jonathan', 'Pettibone', 'SP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (537, 'B.J.', 'Rosenberg', 'RP', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (538, 'Wil', 'Nieves', 'C', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (539, 'Carlos', 'Ruiz', 'C', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (540, 'Cameron', 'Rupp', 'C', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (541, 'Cody', 'Asche', '3B', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (542, 'Freddy', 'Galvis', '2B', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (543, 'Cesar', 'Hernandez', '2B', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (544, 'Ryan', 'Howard', '1B', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (545, 'Jimmy', 'Rollins', 'SS', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (546, 'Chase', 'Utley', '2B', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (547, 'Domonic', 'Brown', 'LF', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (548, 'Marlon', 'Byrd', 'RF', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (549, 'John', 'Mayberry Jr.', 'RF', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (550, 'Ben', 'Revere', 'CF', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (551, 'Darin', 'Ruf', 'RF', 19);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (552, 'Aaron', 'Barrett', 'RP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (553, 'Jerry', 'Blevins', 'RP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (554, 'Xavier', 'Cedeno', 'RP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (555, 'Tyler', 'Clippard', 'RP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (556, 'Ross', 'Detwiler', 'SP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (557, 'Doug', 'Fister', 'SP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (558, 'Gio', 'Gonzalez', 'SP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (559, 'Taylor', 'Jordan', 'SP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (560, 'Ryan', 'Mattheus', 'RP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (561, 'Tanner', 'Roark', 'RP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (562, 'Rafael', 'Soriano', 'RP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (563, 'Craig', 'Stammen', 'RP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (564, 'Drew', 'Storen', 'RP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (565, 'Stephen', 'Strasburg', 'SP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (566, 'Jordan', 'Zimmermann', 'SP', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (567, 'Sandy', 'Leon', 'C', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (568, 'Jose', 'Lobaton', 'C', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (569, 'Wilson', 'Ramos', 'C', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (570, 'Ian', 'Desmond', 'SS', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (571, 'Danny', 'Espinosa', '2B', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (572, 'Jeff', 'Kobernus', '2B', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (573, 'Adam', 'LaRoche', '1B', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (574, 'Tyler', 'Moore', '1B', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (575, 'Anthony', 'Rendon', '2B', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (576, 'Ryan', 'Zimmerman', '3B', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (577, 'Scott', 'Hairston', 'RF', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (578, 'Bryce', 'Harper', 'LF', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (579, 'Nate', 'McLouth', 'LF', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (580, 'Denard', 'Span', 'CF', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (581, 'Jayson', 'Werth', 'RF', 20);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (582, 'Jake', 'Arrieta', 'SP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (583, 'Alberto', 'Cabrera', 'RP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (584, 'Kyuji', 'Fujikawa', 'RP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (585, 'Justin', 'Grimm', 'SP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (586, 'Jason', 'Hammel', 'SP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (587, 'Edwin', 'Jackson', 'SP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (588, 'James', 'McDonald', 'SP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (589, 'Hector', 'Rondon', 'RP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (590, 'Chris', 'Rusin', 'SP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (591, 'James', 'Russell', 'RP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (592, 'Jeff', 'Samardzija', 'SP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (593, 'Pedro', 'Strop', 'RP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (594, 'Jose', 'Veras', 'RP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (595, 'Carlos', 'Villanueva', 'RP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (596, 'Travis', 'Wood', 'SP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (597, 'Wesley', 'Wright', 'RP', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (598, 'Welington', 'Castillo', 'C', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (599, 'George', 'Kottaras', 'C', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (600, 'Darwin', 'Barney', '2B', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (601, 'Starlin', 'Castro', 'SS', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (602, 'Donnie', 'Murphy', '3B', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (603, 'Mike', 'Olt', '1B', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (604, 'Anthony', 'Rizzo', '1B', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (605, 'Luis', 'Valbuena', '3B', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (606, 'Junior', 'Lake', 'LF', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (607, 'Justin', 'Ruggiano', 'LF', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (608, 'Nate', 'Schierholtz', 'RF', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (609, 'Ryan', 'Sweeney', 'CF', 21);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (610, 'Homer', 'Bailey', 'SP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (611, 'Pedro', 'Beato', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (612, 'Jonathan', 'Broxton', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (613, 'Aroldis', 'Chapman', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (614, 'Nick', 'Christiani', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (615, 'Tony', 'Cingrani', 'SP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (616, 'Johnny', 'Cueto', 'SP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (617, 'J.J.', 'Hoover', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (618, 'Mat', 'Latos', 'SP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (619, 'Mike', 'Leake', 'SP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (620, 'Sam', 'LeCure', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (621, 'Brett', 'Marshall', 'SP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (622, 'Sean', 'Marshall', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (623, 'Logan', 'Ondrusek', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (624, 'Manny', 'Parra', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (625, 'Alfredo', 'Simon', 'RP', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (626, 'Devin', 'Mesoraco', 'C', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (627, 'Brayan', 'Pena', 'C', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (628, 'Neftali', 'Soto', 'C', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (629, 'Zack', 'Cozart', 'SS', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (630, 'Todd', 'Frazier', '3B', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (631, 'Jack', 'Hannahan', '3B', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (632, 'Brandon', 'Phillips', '2B', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (633, 'Joey', 'Votto', '1B', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (634, 'Jay', 'Bruce', 'RF', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (635, 'Billy', 'Hamilton', 'CF', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (636, 'Chris', 'Heisey', 'LF', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (637, 'Ryan', 'Ludwick', 'LF', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (638, 'Skip', 'Schumaker', 'LF', 22);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (639, 'Zach', 'Duke', 'SP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (640, 'Marco', 'Estrada', 'SP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (641, 'Yovani', 'Gallardo', 'SP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (642, 'Matt', 'Garza', 'SP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (643, 'Tom', 'Gorzelanny', 'RP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (644, 'Jim', 'Henderson', 'RP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (645, 'Brandon', 'Kintzler', 'RP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (646, 'Kyle', 'Lohse', 'SP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (647, 'Wily', 'Peralta', 'SP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (648, 'Francisco', 'Rodriguez', 'RP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (649, 'Will', 'Smith', 'RP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (650, 'Tyler', 'Thornburg', 'RP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (651, 'Wei-Chung', 'Wang', 'SP', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (652, 'Jonathan', 'Lucroy', 'C', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (653, 'Martin', 'Maldonado', 'C', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (654, 'Jeff', 'Bianchi', '3B', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (655, 'Scooter', 'Gennett', '2B', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (656, 'Aramis', 'Ramirez', '3B', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (657, 'Jean', 'Segura', 'SS', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (658, 'Rickie', 'Weeks', '2B', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (659, 'Ryan', 'Braun', 'LF', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (660, 'Khris', 'Davis', 'LF', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (661, 'Carlos', 'Gomez', 'CF', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (662, 'Logan', 'Schafer', 'LF', 23);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (663, 'Gerrit', 'Cole', 'SP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (664, 'Brandon', 'Cumpton', 'SP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (665, 'Jeanmar', 'Gomez', 'RP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (666, 'Jason', 'Grilli', 'RP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (667, 'Francisco', 'Liriano', 'SP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (668, 'Jeff', 'Locke', 'SP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (669, 'Vin', 'Mazzaro', 'RP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (670, 'Mark', 'Melancon', 'RP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (671, 'Bryan', 'Morris', 'RP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (672, 'Charlie', 'Morton', 'SP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (673, 'Andy', 'Oliver', 'RP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (674, 'Stolmy', 'Pimentel', 'RP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (675, 'Wandy', 'Rodriguez', 'SP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (676, 'Edinson', 'Volquez', 'SP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (677, 'Tony', 'Watson', 'RP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (678, 'Justin', 'Wilson', 'RP', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (679, 'Russell', 'Martin', 'C', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (680, 'Tony', 'Sanchez', 'C', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (681, 'Chris', 'Stewart', 'C', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (682, 'Pedro', 'Alvarez', '3B', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (683, 'Clint', 'Barmes', 'SS', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (684, 'Josh', 'Harrison', '2B', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (685, 'Jordy', 'Mercer', 'SS', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (686, 'Gaby', 'Sanchez', '1B', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (687, 'Neil', 'Walker', '2B', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (688, 'Starling', 'Marte', 'LF', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (689, 'Andrew', 'McCutchen', 'CF', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (690, 'Travis', 'Snider', 'RF', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (691, 'Jose', 'Tabata', 'RF', 24);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (692, 'Keith', 'Butler', 'RP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (693, 'Randy', 'Choate', 'RP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (694, 'Jaime', 'Garcia', 'SP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (695, 'Joe', 'Kelly', 'RP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (696, 'Lance', 'Lynn', 'SP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (697, 'Seth', 'Maness', 'RP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (698, 'Carlos', 'Martinez', 'RP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (699, 'Shelby', 'Miller', 'SP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (700, 'Jason', 'Motte', 'RP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (701, 'Jorge', 'Rondon', 'RP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (702, 'Trevor', 'Rosenthal', 'RP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (703, 'Kevin', 'Siegrist', 'RP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (704, 'Michael', 'Wacha', 'SP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (705, 'Adam', 'Wainwright', 'SP', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (706, 'Tony', 'Cruz', 'C', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (707, 'Yadier', 'Molina', 'C', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (708, 'Matt', 'Adams', '1B', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (709, 'Matt', 'Carpenter', '3B', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (710, 'Allen', 'Craig', '1B', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (711, 'Daniel', 'Descalso', 'SS', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (712, 'Mark', 'Ellis', '2B', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (713, 'Pete', 'Kozma', 'SS', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (714, 'Jhonny', 'Peralta', 'SS', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (715, 'Kolten', 'Wong', '2B', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (716, 'Peter', 'Bourjos', 'CF', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (717, 'Matt', 'Holliday', 'LF', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (718, 'Jon', 'Jay', 'CF', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (719, 'Shane', 'Robinson', 'RF', 25);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (720, 'Trevor', 'Cahill', 'SP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (721, 'Josh', 'Collmenter', 'RP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (722, 'Randall', 'Delgado', 'SP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (723, 'Will', 'Harris', 'RP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (724, 'David', 'Hernandez', 'RP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (725, 'Wade', 'Miley', 'SP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (726, 'Oliver', 'Perez', 'SP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (727, 'J.J.', 'Putz', 'RP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (728, 'Addison', 'Reed', 'RP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (729, 'Bo', 'Schultz', 'RP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (730, 'Joe', 'Thatcher', 'RP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (731, 'Brad', 'Ziegler', 'RP', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (732, 'Tuffy', 'Gosewisch', 'C', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (733, 'Miguel', 'Montero', 'C', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (734, 'Eric', 'Chavez', '3B', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (735, 'Paul', 'Goldschmidt', '1B', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (736, 'Didi', 'Gregorius', 'SS', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (737, 'Aaron', 'Hill', '2B', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (738, 'Chris', 'Owings', 'SS', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (739, 'Cliff', 'Pennington', 'SS', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (740, 'Martin', 'Prado', '3B', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (741, 'Tony', 'Campana', 'CF', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (742, 'Gerardo', 'Parra', 'CF', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (743, 'A.J.', 'Pollock', 'CF', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (744, 'Mark', 'Trumbo', 'LF', 26);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (745, 'Brett', 'Anderson', 'SP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (746, 'Matt', 'Belisle', 'RP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (747, 'Chad', 'Bettis', 'SP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (748, 'Rex', 'Brothers', 'RP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (749, 'Jhoulys', 'Chacin', 'SP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (750, 'Tyler', 'Chatwood', 'SP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (751, 'Jorge', 'De La Rosa', 'SP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (752, 'LaTroy', 'Hawkins', 'RP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (753, 'Tommy', 'Kahnle', 'RP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (754, 'Boone', 'Logan', 'RP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (755, 'Wilton', 'Lopez', 'RP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (756, 'Jordan', 'Lyles', 'SP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (757, 'Franklin', 'Morales', 'SP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (758, 'Juan', 'Nicasio', 'SP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (759, 'Adam', 'Ottavino', 'RP', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (760, 'Michael', 'McKenry', 'C', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (761, 'Jordan', 'Pacheco', 'C', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (762, 'Wilin', 'Rosario', 'C', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (763, 'Nolan', 'Arenado', '3B', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (764, 'Charlie', 'Culberson', '2B', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (765, 'DJ', 'LeMahieu', '2B', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (766, 'Justin', 'Morneau', '1B', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (767, 'Josh', 'Rutledge', '2B', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (768, 'Troy', 'Tulowitzki', 'SS', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (769, 'Ryan', 'Wheeler', '3B', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (770, 'Brandon', 'Barnes', 'CF', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (771, 'Charlie', 'Blackmon', 'RF', 27);
Insert into REDCAIMAN.PLAYER
   (ID, FIRST_NAME, LAST_NAME, POSITION, TEAM_ID)
 Values
   (772, 'Michael', 'Cuddyer', 'RF', 27);
COMMIT;

SET DEFINE OFF;
--SQL Statement which produced this data:
--
--  SELECT * FROM REDCAIMAN.TEAM;
--
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (1, 'Baltimore', 'Orioles', 'American', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (2, 'Boston', 'Red Sox', 'American', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (3, 'New York', 'Yankees', 'American', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (4, 'Tampa Bay', 'Rays', 'American', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (5, 'Toronto', 'Blue Jays', 'American', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (6, 'Chicago', 'White Sox', 'American', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (7, 'Cleveland', 'Indians', 'American', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (8, 'Detroit', 'Tigers', 'American', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (9, 'Kansas City', 'Royals', 'American', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (10, 'Minnesota', 'Twins', 'American', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (11, 'Houston', 'Astros', 'American', 'West');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (12, 'Los Angeles', 'Angels', 'American', 'West');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (13, 'Oakland', 'Athletics', 'American', 'West');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (14, 'Seattle', 'Mariners', 'American', 'West');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (15, 'Texas', 'Rangers', 'American', 'West');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (16, 'Atlanta', 'Braves', 'National', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (17, 'Miami', 'Marlins', 'National', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (18, 'New York', 'Mets', 'National', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (19, 'Philadelphia', 'Phillies', 'National', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (20, 'Washington', 'Nationals', 'National', 'East');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (21, 'Chicago', 'Cubs', 'National', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (22, 'Cincinnati', 'Reds', 'National', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (23, 'Milwaukee', 'Brewers', 'National', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (24, 'Pittsburgh', 'Pirates', 'National', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (25, 'St. Louis', 'Cardinals', 'National', 'Central');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (26, 'Arizona', 'Diamondbacks', 'National', 'West');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (27, 'Colorado', 'Rockies', 'National', 'West');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (28, 'Los Angeles', 'Dodgers', 'National', 'West');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (29, 'San Diego', 'Padres', 'National', 'West');
Insert into REDCAIMAN.TEAM
   (ID, CITY, NAME, CONFERENCE, DIVISION)
 Values
   (30, 'San Francisco', 'Giants', 'National', 'West');
COMMIT;

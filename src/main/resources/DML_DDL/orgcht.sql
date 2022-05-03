CREATE TABLE orgcht(
ORGCHT_ID int NOT NULL auto_increment primary KEY, 
ORGCHT_NAME VARCHAR(12) default NULL,
ORGCHT_CLSF VARCHAR(12) DEFAULT NULL,/*직급*/
ORGCHT_DEPT VARCHAR(100),
ORGCHT_IMAGE_NAME varchar(300),
ORGCHT_IMAGE_FILE mediumblob,
ORGCHT_P_ID int default null,
ORGCHT_level int default null,
ORGCHT_yn varchar(1) default 'Y',
cc_code varchar(7) default null,
Upend_Id int not null
);

CREATE TABLE orgchtLOG(
ORGCHT_LOG_ID int NOT NULL auto_increment primary KEY, 
ORGCHT_ID INT NOT NULL,
ORGCHT_NAME VARCHAR(12) default NULL,
ORGCHT_CLSF VARCHAR(12) DEFAULT NULL,/*직급*/
DETAIL_CODE_DEPT VARCHAR(100),
ORGCHT_IMAGE_NAME varchar(300),
ORGCHT_IMAGE_FILE mediumblob,
ORGCHT_P_ID int default null,
ORGCHT_level int default null,
ORGCHT_yn varchar(1) default 'Y',
cc_code varchar(7) default null,
ORGCHT_LOG_PERFORMER varchar(12) DEFAULT NULL,
ORGCHT_LOG_DIVISION varchar(10) DEFAULT NULL,
ORGCHT_LOG_DATE timestamp NULL DEFAULT NULL
);
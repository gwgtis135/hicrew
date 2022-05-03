create table CH (
CH_ID int NOT NULL auto_increment primary KEY ,
CH_TO_DATE date default null,
CH_DEPT varchar(100) default null,
CH_YN varchar(1) default 'Y',
Upend_Id int not null,
DC_ID INT
);

CREATE TABLE chlog(
CH_LOG_ID int NOT NULL auto_increment primary KEY,
CH_ID int NOT NULL,
CH_TO_DATE date default null,
CH_DEPT varchar(100) default null,
CH_YN varchar(1) default 'Y',
cc_code varchar(7) default null,
CH_LOG_PERFORMER varchar(12),
CH_LOG_DIVISION varchar(10), 
CH_LOG_DATE timestamp null default null
);
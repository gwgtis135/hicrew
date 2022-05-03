create table detailcode(
dc_id int NOT NULL auto_increment primary KEY,
cc_code varchar(7) default null,
dc_code varchar(6) default null,
dc_name VARCHAR(40) default null,
dc_userdefineCol varchar(2) default null,
dc_YN varchar(1) default 'Y'
);


create table detailcodelog(
cd_log_id int NOT NULL auto_increment primary KEY,
dc_id int not null,
cc_code varchar(7) default null,
dc_code varchar(6) default null,
dc_name VARCHAR(33) default null,
dc_userdefine varchar(33) default null,
dc_YN varchar(1) default 'Y',
Upend_Id int not null,
dc_LOG_PERFORMER varchar(12) DEFAULT NULL,
dc_LOG_DIVISION varchar(10) DEFAULT NULL,
dc_LOG_DATE timestamp NULL DEFAULT NULL
);
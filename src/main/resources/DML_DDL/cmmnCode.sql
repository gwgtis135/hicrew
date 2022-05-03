create table cmmncode(
cc_id int NOT NULL auto_increment primary KEY,
cc_code varchar(7) default null,
cc_name varchar(29) default null,
cc_userdefine varchar(33) default null,
cc_YN varchar(1) default 'Y'
);

create table cmmncodelog(
cc_log_id int NOT NULL auto_increment primary KEY,
cc_id int default null,
cc_code varchar(7) default null,
cc_name varchar(29) default null,
cc_userdefine varchar(33) default null,
cc_YN varchar(1) default 'Y',
cc_LOG_PERFORMER varchar(12) DEFAULT NULL,
cc_LOG_DIVISION varchar(10) DEFAULT NULL,
cc_LOG_DATE timestamp NULL DEFAULT NULL
);


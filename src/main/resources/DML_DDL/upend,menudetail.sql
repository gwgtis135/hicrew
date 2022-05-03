
create table UpendMenu (
	Upend_Id int primary key auto_increment,
	Upend_NAME VARCHAR(20),
	Upend_Intrcn VARCHAR(500),
	Upend_Link VARCHAR(500),
	Upend_UpendMenu int,
	Upend_Thema int,
	Upend_Type int,
	Upend_Yn VARCHAR(2)	default 'y'						
);


create table UpendMenuLog (
	Upend_Log_Id int primary key auto_increment,
	Upend_Id int,
	Upend_NAME VARCHAR(20),
	Upend_Intrcn VARCHAR(500),
	Upend_Link VARCHAR(500),
	Upend_UpendMenu int,
	Upend_Thema int,
	Upend_Type int,
	Upend_Yn VARCHAR(2)	default 'y'	,
	Upend_Log_Performer VARCHAR(12),						
	Upend_Log_Division VARCHAR(10),						
	Upend_Log_Date timestamp	
);

create table MenuDetail(
	Menu_id int primary key auto_increment,
	Upend_Id INT,
	foreign key (Upend_Id) references UpendMenu (Upend_Id) ON DELETE CASCADE,
	Menu_Name VARCHAR(30),
	Menu_File MEDIUMBLOB,
	Menu_Eventn VARCHAR(10),
	Menu_Link VARCHAR(300),
	Menu_Content VARCHAR(500),
	Menu_Yn VARCHAR(2) default 'y'
);
create table MenuDetailLOG(
	Menu_Log_Id int primary key auto_increment,
	Menu_Id int,
	Upend_Id INT,
	Menu_Name VARCHAR(30),
	Menu_File MEDIUMBLOB,
	Menu_Eventn VARCHAR(10),
	Menu_Link VARCHAR(300),
	Menu_Content VARCHAR(500),
	Menu_Yn VARCHAR(2) default 'y',
	Menu_Log_Performer VARCHAR(12),						
	Menu_Log_Division VARCHAR(10),						
	Menu_Log_Date timestamp
);

insert into UpendMenu(Upend_Name,Upend_UpendMenu) values ('Home',0),('회사소개',0),('주요사업',0),('그룹웨어',0),('관리자 페이지',0);
insert into UpendMenu(Upend_id,Upend_Name,Upend_UpendMenu) values (5,'관리자 페이지',0);
insert into UpendMenu(Upend_Name,Upend_Intrcn,Upend_Link,Upend_UpendMenu,Upend_Thema,Upend_Type) values 
('회사개요','<p>교육정보화시스템 구축 및 운영 전문 기업으로 고객과 함께 공동 목표를 실현하기 위하여 끊임없는 노력을 다하고 있습니다.</p>','cmpnyinfo.do',2,1,1),
('CI소개','<p><em>Hi</em>gh-Technology <em>CREW</em> System은, 4차산업시대에 맞춰 각분야의 최고 엔지니어들의 집합체로써, 소통과 협력에 있어서 스마트한 느낌을 강조하고자 심볼마크를 영문으로 하고 <red>레드컬러</red>와 <grey>그레이컬러</grey>의 조합은 IT의 기술력,현대적이고 세련화된 직원들의 열정을 상징합니다 </p>','CIintrcn.do',2,2,1),
('회사연혁','<p>교육정보화시스템 구축 및 운영 전문 기업 하이크루의 도전</p>','ch.do',2,3,1),
('조직도','<p>우리 Crew의 구성원들</p>','orgcht.do',2,4,1),
('포토스토리','<p>Crew들의 발자취....</p>','photo.do',2,5,1),
('오시는길','<p><em>하이크루</em>는 항상 여러분의 방문을 환영합니다.</p>','directions.do',2,0,1),
('PDF솔루션','<p><em>하이크루</em>는 고객의 요구에 부합하는 최상의 시스템을 구축하기 위하여, 해당 분야의 핵심기술과 최고의 성능 및 기능을 보유한 최적의 솔루션을 제공합니다.</p>','pdfsolut.do',3,6,1),
('IT솔루션','<p><em>하이크루</em>는 고객의 요구에 부합하는 최상의 시스템을 구축하기 위하여, 해당 분야의 핵심기술과 최고의 성능 및 기능을 보유한 최적의 솔루션을 제공합니다.</p>','itsolut.do',3,6,1),
('메뉴 관리','','upendmenu.do',5,0,1),
('페이지 관리','','menudetail.do',5,0,1),
('공통 코드 관리','','ccmupendmenu.do',5,0,1);

insert into menudetail(Upend_id,Menu_Name,Menu_Content) values
(6,'(주)하이크루','High-Technology CREW System'),
(6,'설립일','2018년 3월 13일'),
(6,'대표이사','이영석'),
(6,'본사주소','대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩)'),
(6,'전화번호','070-8772-1612'),
(6,'사업분야','System Integration(시스템 통합구축)'),
(6,'사업분야','Software Development(응용 SW개발)'),
(6,'사업분야','Consulting / ISP(컨설팀 / ISP)'),
(6,'사업분야','Product / Solution(제품 / 솔루션)'),
(6,'사업분야','Integration Maintenance(통합유지보수사업)');


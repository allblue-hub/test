create database jui;

create table course(
courseNo varchar(30) primary key,
courseName varchar(30),
credit int,
semster varchar(30),
period int,
teacher varchar(30),
teacherID  varchar(10) foreign key (teacherID) references teachers(tuserNo)
)
select * from course;
delete from course;
drop table course;

insert into course values('c001','Java',4,'2020',4,'tom','t001');
insert into course values('c002','JavaWeb',6,'2018',5,'alice','t002');
insert into course values('c003','JavaSE',6,'2021',4,'morse','t003');
insert into course values('c004','JavaEE',6,'2019',4,'jack','t004');
insert into course values('c005','JDBC',4,'2017',5,'mali','t005');
insert into course values('c006','html',2,'2016',5,'liude','t006');
insert into course values('c007','css',2,'2019',5,'wune','t007');
insert into course values('c008','JavaScript',2,'2020',5,'bajie','t008');
insert into course values('c009','tomcat',4,'2019',5,'saseng','t009');

create table teachers(
	tuserNo varchar(10) primary key,
	tname varchar(30) ,
)
select * from teachers;

insert into teachers values('t001','tom');
insert into teachers values('t002','alice');
insert into teachers values('t003','morse');
insert into teachers values('t004','jack');
insert into teachers values('t005','mali');
insert into teachers values('t006','liude');
insert into teachers values('t007','wune');
insert into teachers values('t008','bajie');
insert into teachers values('t009','saseng');
select * from teachers;
delete from teachers;
drop table teachers;

create table student(
	suserNo varchar(10) primary key,
	sname varchar(30),
	sex char(2) check(sex = '��' or sex = 'Ů'),
	age int ,
	department varchar(30)
)
select * from student;


insert into student values('s001','asdf','��',18,'�������ϵ');
insert into student values('s002','qwer','Ů',19,'�����ϵ');
insert into student values('s003','tyui','��',17,'��ѧϵ');
insert into student values('s004','ghjk','��',19,'����ϵ');
insert into student values('s005','mnbv','Ů',20,'�˹�����ϵ');
insert into student values('s006','zxcv','��',21,'�������ϵ');
insert into student values('s007','qazx','Ů',20,'������ϵ');
insert into student values('s008','xswe','��',19,'����ϵ');
insert into student values('s009','efvb','��',19,'����ϵ');
insert into student values('s010','bgrt','Ů',21,'�������ϵ');


select * from student;

create table users(
	userNo varchar(10) primary key,
	name varchar(30),
	userPW varchar(30),
	userType varchar(30)
)
insert into users values('a001','����Ա1','123','�������Ա');
insert into users values('a002','����Ա2','123','�������Ա');
insert into users values('a003','����Ա3','123','�������Ա');

insert into users values('t001','����ʦ','456','��ʦ');
insert into users values('t002','����ʦ','456','��ʦ');
insert into users values('t003','����ʦ','456','��ʦ');

insert into users values('s001','С��','789','ѧ��');
insert into users values('s002','С��','789','ѧ��');
insert into users values('s003','С��','789','ѧ��');
select * from users;

drop table users;


create table CSList(
	CSNo varchar(20) primary key,
	suserNo varchar(10) ,
	sname varchar(30),
	courseNo varchar(30),
	foreign key (suserNo) references student(suserNo),
	foreign key (courseNo) references course(courseNo)
)
select * from  CSList order by courseNo;
drop table CSList;
create table score(
	suserNo varchar(10),
	courseNo varchar(30),
	grade int check(grade >=0 and grade <= 100),
	primary key(suserNo,courseNo),
	foreign key( suserNo) references student(suserNo),
	foreign key (courseNo) references course(courseNo)
)
select * from score order by courseNo asc;

delete from score;
insert into score values('s001','c001',90);
insert into score values('s003','c001',80);
insert into score values('s005','c001',75);
insert into score values('s007','c001',66);
insert into score values('s004','c001',99);
insert into score values('s006','c001',88);
insert into score values('s009','c001',77);

insert into score values('s001','c002',78);
insert into score values('s002','c002',79);
insert into score values('s003','c002',77);
insert into score values('s004','c002',80);
insert into score values('s005','c002',91);
insert into score values('s006','c002',92);
insert into score values('s007','c002',99);
insert into score values('s008','c002',99);

insert into score values('s004','c003',66);
insert into score values('s007','c003',90);
insert into score values('s001','c003',85);
insert into score values('s003','c003',77);
insert into score values('s005','c003',59);
insert into score values('s002','c003',89);
insert into score values('s006','c003',62);

insert into score values('s002','c004',90);
insert into score values('s001','c004',89);
insert into score values('s003','c004',98);
insert into score values('s006','c004',66);
insert into score values('s007','c004',78);
insert into score values('s004','c004',99);
insert into score values('s005','c004',54);

insert into score values('s005','c005',99);
insert into score values('s006','c005',98);
insert into score values('s009','c005',89);
insert into score values('s001','c005',67);
insert into score values('s002','c005',90);
insert into score values('s003','c005',88);
insert into score values('s004','c005',46);

insert into score values('s004','c006',65);
insert into score values('s005','c006',98);
insert into score values('s006','c006',89);
insert into score values('s001','c006',45);
insert into score values('s002','c006',90);
insert into score values('s003','c006',85);
insert into score values('s007','c006',77);

insert into score values('s003','c007',90);
insert into score values('s004','c007',69);
insert into score values('s005','c007',89);
insert into score values('s006','c007',88);
insert into score values('s007','c007',78);
insert into score values('s008','c007',76);
insert into score values('s009','c007',74);

insert into score values('s004','c008',91);
insert into score values('s005','c008',90);
insert into score values('s006','c008',60);
insert into score values('s007','c008',30);
insert into score values('s008','c008',77);
insert into score values('s009','c008',66);
insert into score values('s010','c008',88);

insert into score values('s002','c009',100);
insert into score values('s003','c009',90);
insert into score values('s004','c009',89);
insert into score values('s005','c009',78);
insert into score values('s006','c009',96);
insert into score values('s007','c009',78);
insert into score values('s008','c009',0);


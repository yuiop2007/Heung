use works;

show tables;

create table gagebu(
	idx int not null auto_increment primary key,
	wdate datetime default now(),
	gCode char(1) not null,  /* 수입은 + 지출은 -*/
	price int not null,
	content varchar(100) not null,
	balance int default 0
);


desc gagebu;
drop table gagebu;
delete from gagebu;

insert into gagebu values (default, '2021-04-19', '+', 5000, '2021년 4월용돈', 5000);
insert into gagebu values (default, default, '+', 10000, '2021년 4월용돈', 15000);

select *from gagebu;
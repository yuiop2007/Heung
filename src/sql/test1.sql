use works;

show tables;

create table test1 (
	idx int not null auto_increment primary key,  
	mid varchar(20) not null,   
	pwd varchar(20) not null,     
	name varchar(10) not null,    
	age int default 20            
);

insert into test1 values (default, 'hkd1234', '1234', '홍길동', default);
insert into test1 values (default, 'kms1234', '1234', '김말숙', 25);
insert into test1 values (default, 'lkj1234', '1234', '이기자', default);
insert into test1 values (default, 'snm1234', '1234', '소나무', 35);



select * from test1;

drop table test1


-- DVD 대여 테이블
create table test2 (
	idx int not null auto_increment primary key, --고유번호
	dvdName varchar(50) not null,				 -- dvd제목
	mid varchar(20) not null,					-- dvd 대여한 사람 아이디
	part varchar(10) not null default '액션',		-- dvd 장르
	dvdIpgo datetime default now(),  			-- dvd 대여날짜
	dvdSu int default 1 						-- dvd 수량
);

insert into test2 values (default, '전쟁과평화', 'hkd1234', default, default, default);
insert into test2 values (default, '아침의제국', 'asd1234', '스릴러', '2021-4-5', default);
insert into test2 values (default, '프로그램과의 전쟁', 'kms1234', '교양', default, default);
insert into test2 values (default, '오늘이가면', 'lkj1234', '교양', '2021-4-10', default);
insert into test2 values (default, '세상밖으로', 'qwe1234', default, '2021-4-15', default);
insert into test2 values (default, '자바의세상', 'java1234', default, '2021-4-14', default);

select * from test2;


-- 내부조인 : inner join : 공통사항을 참조   
--  								 왼쪽이기준  join 오른쪽이 참조
select a.mid, a.name, b.dvdName, b.part from test1 as a join test2 as b on a.mid = b.mid;

-- 외부조인 : left join : 왼쪽 테이블을 중심으로 출력(왼쪽건 무조건 나와야함)
select a.mid, a.name, b.dvdName, b.part from test1 as a left join test2 as b on a.mid = b.mid;

-- 외부조인 : right join : 오른쪽 테이블 중심
select a.mid, a.name, b.dvdName, b.part from test1 as a right join test2 as b on a.mid = b.mid;


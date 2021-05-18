show tables;

desc jusorok;

select * from jusorok;
select * from jusorok order by name desc;
select * from jusorok where name = '가나다';

insert into jusorok (name,birthday,pay) values ('가나다',now(),1000000); 
insert into jusorok values ('마바사',default,now(),default,'서울','회사원',1500000);

update jusorok set address='청주' where name='가나다';

delete from jusorok where name='가나다';

-- 한줄 주석 -----------------------------------------------------
/* 여러줄 주석 */

/*
  데이터베이스 작업순서
  1. jdbc드라이버 설치(압축을 불은 jar파일을 작업프로젝트의 lib폴더에 복사시켜놓는다.)
  2. 데이터베이스 설계(테이블/필드....설계)
  3. VO 만들어준다. - Getter/Setter/to String
  4. DAO 기본틀 만들기
  5. JSP와 Servlet를 함께 사용한다.
*/

create table login (
	idx   int  not null  auto_increment primary key,  /* 고유번호 */
	mid		varchar(20) not null,												/* 아이디(4~20글자) */
	pwd   varchar(20) not null,												/* 비밀번호(4~20글자) */
	name  varchar(20) not null,												/* 성명 */
	point int 	default   1000,												/* 포인트 */
	lastdate datetime default now()										/* 최종 접속날짜 */
);

desc login;

insert into login values (default,'admin','1234','관리자',default,default);

select * from login order by idx desc;

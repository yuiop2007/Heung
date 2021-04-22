SELECT * FROM works.jusorok;

insert into works.jusorok values (
	'이기자', 25, '1999-05-10', default, '부산', '학생'
);
insert into works.jusorok values (
	'김말숙', 30, '1999-12-11', '여자', '인천', '회사원'
);
insert into works.jusorok values (
	'홍길동', 22, '1995-11-14', default, '서울', '회사원'
);
insert into works.jusorok values (
	'김하늘', 25, '1970-6-22', '여자', '경기', '공무원'
);
insert into works.jusorok values (
	'김환희', 42, '1979-1-15', '여자', '대전', '의사'
);
insert into works.jusorok values (
	'호랑이', 33, '1989-2-6', default, '김포', '군인'
);
insert into works.jusorok values (
	'이순신', 29, '1991-7-17', default, '청주', '회사원'
);

/*delete from jusorok;*/

select *from works.jusorok;

-- 남자만 보기
select *from works.jusorok where gender='남자';
-- 30살이상만 보기
select *from works.jusorok where age >= 30;
-- 서울지역만 보기
select *from works.jusorok where address = '서울';
-- 남자면서 30살이상 사람만
select *from works.jusorok where gender='남자' and age >=30;
-- jusorok테이블의 이름/나이/주소 필드를 오늘도/29/서울을 추가하시오

insert into works.jusorok (name, age, address) values('오늘도', 29, '서울');

-- 성별이 여자중에서 content가 학생인 자료를 보기
select *from works.jusorok where gender='여자' and content = '회사원';

-- 필드명 content를 job으로 바꾸기
alter table jusorok change content job varchar(15);

-- jusorok 테이블에 pay필드 추가
alter table works.jusorok add column pay int;

-- jusorok 테이블 이름을 juso로 변경
alter table works.jusorok rename juso;
alter table works.juso rename jusorok;

-- jusorok 테이블에 mbc 필드 추가(varchar(50) not null)
alter table works.jusorok add mbc varchar(50) not null;

-- mbc필드 삭제
alter table works.jusorok drop column mbc;

-- jusorok 테이블의 구조를 보기
desc works.jusorok;
select *from works.jusorok;
-- 자료의 수정 : update 테이블명 set 필드명 = 수정할내용 ... where 조건절 .. ;
-- 홍길동 나이 33로 수정
update works.jusorok set age = 33 where name='홍길동';

-- 홍길동 자료 검색
select *from works.jusorok where name='홍길동';

-- 모든 자료 나이 1살 추가
update works.jusorok set age = age+1;

-- 모든 자료의 기본 pay필드를 1000000으로 변경
update works.jusorok set pay = 1000000;

-- 여자들 20만원 추가
update works.jusorok set pay = pay+200000 where gender='여자';

-- 부산 거주자 + 10만원 더주기
update works.jusorok set pay = pay + 100000 where address='부산';

-- 서울지역 거주자 보기
select *from works.jusorok where address ='서울';

-- 서울 거주자중 남자 삭제
delete from works.jusorok where address='서울' and gender ='남자';

-- 모든자료 이름순으로 정렬
select *from works.jusorok order by name;

-- 성별순으로 내림차순 정렬하되, 같은성별은 나이 오름차순 정렬
select *from jusorok order by gender desc, age;

-- between ~ and : 지정된 범위 자료 처리
select *from jusorok where age between 30 and 40;

-- in 포함연산자
select *from jusorok where job in('회사원', '학생');

-- like % : 포함연산자(복수개 와일드카드)
-- job필드에 '사원'으로 끝나는 단어를 모두 보여주시오
select *from jusorok where job like '%사원';

-- like '_' : 포함연산자(단수개)  _는 한글자만 의미
-- 이름중에서 2번째 글자가 '순'로 끝나는 사람들을 보여주시오
select *from jusorok where name like '_순%';

-- job필드에 '사원'으로 끝나는 단어를 모두 보여주시오
select *from jusorok where job like '%사원';

-- 김씨성을 가진 모든사람을 보여주시오
select *from jusorok where name like '김%';

-- 이름중에서 '말'이라는 글자가 들어있으면 모두 보여주시오
select *from jusorok where name like '%말%';

-- 이름중에서 '말'이라는 글자가 들어있으면 모두 보여주시오
select *from jusorok where name like '%말%';

-- 한계치를 적용 : limit
-- 주소록의 자료를 처음부터 5건만 보여주시오
select *from jusorok limit 5;

-- 3번째부터 5개 보여주시오
select *from jusorok limit 2,5;

show tables;

----------------------------------------------------

select *from jusorok;



use works;

show tables;

-- 남자/여자군에 자료 1건씩 출력
select distinct gender as '성별' from jusorok;

-- 각 직업군에 대한 자료 distinct로 중복제거
select distinct job as '직업' from jusorok;
select job as '직업' from jusorok;

-- 남자들의 직업군에 대한 자료 출력
select distinct job as '직업' from jusorok where gender = '남자';

-- 개수구하는 함수 count() 
select count(*) from jusorok; -- 전체레코드개수
select count(name) from jusorok where gender = '남자'; -- 성별이 남자인 자료 개수
select count(distinct job) as '사용된 직업갯수' from jusorok; -- 직업의 개수

-- 서울 사는 남자 몇명인지 구하기
select count(*) from jusorok where address = '서울' and gender = '남자';

-- 합계를 구하는 함수 : sum()
-- 전체 pay 합계를 구하라
select sum(pay) from jusorok;

-- 서울에 거주하는 남자회원의 총 급여 합계를 구하시오?
select sum(pay) from jusorok where gender = '남자' and address = '서울';

-- 평균을 구하는 함수 : avg()
-- pay의 전체 평균을 구하시오
select avg(pay) from jusorok;

-- 남자회원의 평균급여
select gender, avg(pay) from jusorok where gender  = '남자';

-- 최대값을 구하는 함수 : max();
-- 최대 급여액을 구하시오
select max(pay) from jusorok;

-- 최소값 구하는 함수 : min();
-- 최소 급여액 구하시오
select min(pay) from jusorok;

-- 그룹(군)을 지어서 표시하고자 할때? group by절 ~ having 조건
-- 성별그룹에 대한 자ㅛㄹ
select *from jusorok group by gender;

-- 성별에 따른 급여액
select gender, avg(pay) from jusorok group by gender;

-- 각 성별의 따른, 인원수와 급여의 합계를 출력하시오
select gender as '성별' , count(name) as '인원수' , avg(pay) as '급여합' from jusorok group by gender; 

-- 각 성별의 따른 인원수와 급여의 합계를 구하시오 단 나이가 30세 이상만
select gender, sum(pay) from jusorok where age >= 30 group by gender;

-- 각 직업군을 출력하세요 (group by 사용)
select job, count(*) from jusorok group by job;

-- 각 직업군의 개수 출력 ( 직업군의 개수가 2개 이상인경우만)
select job, count(*) as cnt from jusorok group by job having cnt>=2;

-- 각 직업군의 남자 개수 출력
select job, count(*) as cnt from jusorok where gender = '남자' group by job;

-- 반올림 : round(), round(소수이하자리)
select round(123.456);
select round(123.456, 1); -- 소수이하 첫째자리까지
select round(123.456, -1); -- 첫째자리
select round(123.456, -2); 

-- 주소록의 나이 평균
select avg(age) from jusorok;

-- 주소록 나이의 평균 구하기 (정수 반올림)
select round(avg(age)) from jusorok;

-- 절삭함수 : truncate(표현자리수)
select truncate(125.678, 0);
select truncate(125.678, 1);
select truncate(125.678, -1);

-- 주소록의 나이 평균을 구하시오. (정수로 출력 : 소수이하 절삭처리)
select truncate(avg(age), 0) from jusorok;

-- 무조건 올림 : ceil(), 무조건 내림 : floor()
select ceil(123.456);
select ceil(-123.456);

select floor(123.956);
select floor(-123.956);

-- 나이 평균구하되 소수이하는 버리시오
select floor(avg(age)) from jusorok;

-- 성별에 따른 나이의 평균을 구하되 소수이하는 버리시오
select gender, floor(avg(age)) from jusorok group by gender;

-- 절대값(양수 표현) : abs()
select abs(1234);
select abs(-1234);
select (123 - 456);
select abs(123 - 456);

-- 나머지 구하는 함수 : mod(정수1, 정수2)
select mod(10, 3);

-- 10을 3으로 나누었을때의 몫과, 나머지를 출력?
select floor(10/3) as '몫' , mod(10, 3) as '나머지';

-- 지수(승수)함수 : power(n1, n2) 밑수 n1, 지수 n2
select power(2, 5) as '2^5';

-- 천단위마다 쉼표표시 : format(필드명, 소수이하자리수)
select format(12324124, 2);
select format(1232.4124, 0);
select name, format(pay, 0) from jusorok;

-- 문자함수
-- 영문자의 대/소문자 변환 upper() ,lower()
select upper('SeOuL');
select lower('SeOuL');

-- 문자열 길이 length
select length('seoul');
select job, length(job) from jusorok;

-- 결합 연산자 : concat(문자열1, 문자열2 , ..)
select concat('a', 'b', 'c');
select name, age from jusorok;
select concat('이름 = ', name), concat('나이 = ', age) from jusorok;

-- 지정된 문자열을 반환 : substr(문자열, 시작위치(1), 발췌할개수)
select substr('Welcome to Korea', 1, 4); -- come 출력
select substr('Welcome to Korea', 9, 2); -- to

-- seoul 서울 의 길이는
select length('서울');
select substr('서울',1, 2);

-- 직업의 두번째 글자만 출력
select name, substr(job, 2, 1) from jusorok;

-- 생일을 xxxx년 xx월 xx일로 함께출력 
select brithday, concat(substr(brithday, 1,4), '년  ', substr(brithday, 6,2), '월 ', substr(brithday, 9,2), '일' ) from jusorok;

-- 중간 위치값을 출력? mid(문자열, 시작위치, 추출크기)
select mid('Welcome to Korea', 4, 4);
select mid('Welcome to Korea', 1, 4);

-- 문자열에서 특정 문자의 존재유무 instr()
select instr('Welcome to Korea', 'o');
select instr('Welcome to Korea', 'O');

-- 왼쪽, 오른쪽, 중간 문자열 추출 : left(), right(), mid()
select left('Welcome to Korea', 3);
select right('Welcome to Korea', 5);

-- 문자열 치환 : replace(str, char1, char2): 문자열 str중 특정문자 char1를 char2로
select('Welcome to Korea');
select replace('Welcome to Korea', ' ', '-');
select replace('Welcome to Korea', ' ', '/');

-- 날짜함수
-- 오늘 시스템의 날짜/시간 출력
select now();

-- 년도 출력 : year()
select year(now());

-- 월 출력 : month()
select month(now());

-- 일 출력 : day()
select day(now());

select year(now()), month(now()), day(now());
select concat(year(now()), '년 ', month(now()), '월 ', day(now()), '일');
select name, brithday from jusorok;
select name, substr(brithday, 1, 10) from jusorok;

-- 시간(hour()) / 분(minute()) / 초 (second())
select hour(now());
select minute(now());
select second(now());

select concat(hour(now()), '시 ', minute(now()), '분 ', second(now()), '초');

-- 요일(dayname()/week())
select dayname(now()); --현재요일 영어로
select week(now());    --올해의 몇번째 주 인지출력(시작0)

select monthname(now()); --현재 월 영어로

-- 지정된 형식으로 날짜 출력 : date_format() 날짜기호 앞에 %붙여서 서식지정
select name, brithday from jusorok;
select date_format(now(), '%y-%m-%d'); -- 년도 2자리
select date_format(now(), '%Y-%m-%d'); -- 년도 4자리
select date_format(now(), '%Y-%M-%d'); -- 월 영어로
select date_format(now(), '%Y-%m-%d %W'); -- 요일 영어로
select date_format(now(), '%Y-%m-%d %w'); -- 요일 숫자로(월 :1)
select date_format(brithday, '%Y-%m-%d %W') from jusorok;

select date_format(now(), '%h:%i:%s'); -- AM/PM 12시간제
select date_format(now(), '%H:%i:%s'); -- 24시간제
select date_format(now(), '%l:%i:%s'); -- 시간이 : 3(한자리)
select date_format(now(), '%r');   -- ap/mp표시 12시간제 
select date_format(now(), '%Y-%c-%e'); -- 월과 일의 표현을 한자리는 한자리로 
select date_format(brithday, '%Y-%c-%e') from jusorok;

-- 현재날짜 now() / sysdate() / current_timestamp()
select now();
select sysdate();
select current_timestamp();

-- 날짜 연산(date_add(기존날짜, 계산수치)) - interval 명령어와 함께사용해야한다
select now();
select date_add(now(), interval 1 day);  -- 오늘날짜 + 1
select date_add(now(), interval -1 day);  -- 오늘날짜 - 1
select date_add(now(), interval 1 hour);
select date_add(now(), interval 24 hour);

select date_add(brithday, interval 1day) from junsu;

-- 그 달의 마지막 일자 last_day()
select last_day(now());
select last_day('2021-2-1');

-- 날짜 차이 계산 (to_days())
select to_days(now()) - to_days('2021-4-1'); -- 오늘날짜 - 뒤에날짜

-- 날짜 차이 비교계산 : datediff()
select datediff(now(), '2021-4-1'); -- 오늘날짜랑 뒤에날짜 몇일 차이인지


select *from jusorok;


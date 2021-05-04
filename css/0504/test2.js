var obj1 = {
  name : 'HongKilDong',
  age : 25,
  ary : [10, 20, 30],
  infor : {
    tel : '010-123-4566',
    address : '청주시 흥덕구 사창동'
  },
  atom : function() {
    console.log(this.name + '의 나이는' + this.age);
  }
};

console.log('obj1=>' + obj1);
console.log('obj1=>' , obj1);
console.log('');

// JSON형식으로 출력하기
console.log('JSON형식:' + JSON.stringify(obj1));

// 객체 안의 자료 출력하기
console.log('이름 : ' + obj1.name + ' , 나이 : ' + obj1.age);

// 객체안의 메소드 실행하기
obj1.atom();

// 객체안의 값 변경하기
obj1.name = '놀부';
obj1.age = 50;
console.log('obj1 :' , obj1);

// 객체안에 값 넣기...
obj1.job = '의사';
console.log('obj1 :' , obj1);

// 객체안의 자료 삭제..
delete obj1.name;
delete obj1.job;
console.log('obj1 :' , obj1);

// 객체 생성생성자 : new
var obj2 = new Object();
obj2.name = '흥부';
obj2.age = 44;
obj2.ary = [1,3,5,7,9];
obj2.infor = {
  tel : '010-222-3333',
  address : '서울시 영등포구 33번지',
  job : '회사원'
};
obj2.atom = function() {
  console.log('성명 : ' + this.name);
};
console.log('obj2 : ' , obj2);
console.log('');

// 배열 : 자바스크립트배열은 어떤값이 들어가도 관계없다.
var ary2 = ['제비', 5, [2,4,6,8], {tel:'010-555-6666'},function(){console.log('안녕');}];
console.log('ary2 : ' + ary2);
console.log(ary2[0]);
console.log(ary2[1]);
console.log(ary2[2]);
console.log(ary2[3]);
console.log(ary2[4]);
ary2[4]();

var ary3 = new Array();
ary3[0] = '감자';
ary3[1] = 55;
ary3[2] = [1,5,7];
console.log('ary3 : ' + ary3);

// 배열처리
var ary4 = [10, 8, 20, 15, 11, 17];
console.log('ary4 : ' + ary4);

console.log('ary4의 크기 : ' + ary4.length);

ary4.push(12);
console.log('ary4 : ' + ary4);

ary4.unshift(9);
console.log('ary4 : ' + ary4);
console.log('ary4의 크기 : ' + ary4.length);

ary4.pop();
ary4.shift();
console.log('ary4 : ' + ary4);
console.log('ary4의 크기 : ' + ary4.length);

var str1 = ary4.join(' - ');
console.log('str1 : ' + str1);

for(var i=0; i<ary4.length; i++) {
  console.log('ary4['+i+'] : ' + ary4[i]);
}
console.log('');

var cnt = 0;
for(var ary of ary4) {
  console.log('ary4['+cnt+'] : ' + ary);
  cnt++;
}
console.log('');

ary4.forEach(function(item, index) {    // 인자값(아이템, 인덱스)
  console.log(index + ' => ' + item);
});
console.log('');

ary4.forEach((item, index) => console.log(index + ' => ' + item));
console.log('');

ary4.map(function(item, index) {
  console.log(index + ' => ' + item);
});
console.log('');

ary4.map( (item, index) => console.log(index + ' => ' + item));

//var res1 = ary4.filter(function(item, index) {
var res1 = ary4.filter((item) => item % 2 == 0);
console.log('res1 : ' + res1);
console.log('');

// 문자로 비교한 오름차순 정렬
var res2 = ary4.sort();
console.log('res2 : ' + res2);
console.log('');

// 수치비교한 오름차순 정렬
//var res4 = ary4.sort(function(a, b) {return (a - b);});
var res4 = ary4.sort((a, b) => (a-b));
console.log('res4 : ' + res4);
console.log('');

// 수치비교한 내림차순 정렬
var res5 = ary4.sort(function(a, b) {
  return b - a;
});
console.log('res5 : ' + res5);
console.log('');

var res3 = ary4.reverse();
console.log('res3 : ' + res3);
console.log('');


console.log('----- 변수연습  -----');
console.log('안녕');

let x;
var y = 20;
console.log('x=' + x + ' , y=' + y);

// 타입의 확인 typeof(x)
console.log('x=>', x, 'typeof(x)=>', typeof(x));
console.log('y=>', y, 'typeof(y)=>', typeof(y));

var z = 100.0;
console.log('z=>', z, 'typeof(z)=>', typeof(z));

x = new Date();
console.log('x=>', x, 'typeof(x)=>', typeof(x));

y = "Seoul";
console.log('y=>', y, 'typeof(y)=>', typeof(y));

z = true;
console.log('z=>', z, 'typeof(z)=>', typeof(z));

y = [1,2,3];
console.log('y=>', y, 'typeof(y)=>', typeof(y));

var obj = {x : 10 , y : 20};
console.log('obj=>', obj, 'typeof(obj)=>', typeof(obj));
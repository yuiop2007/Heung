function onPlus() {
  var x = 10;
  var y = 20;
  var res = x + y;
  console.log('res : ' + res);
}
onPlus(); onPlus();
console.log('onPlus : ' + onPlus);

function onMinus(x, y) {
  var res = x - y;
  console.log('res : ' + res);
}
onMinus(10, 20);

function onMulti(x, y) {
  var res = x * y;
  return res;
}
console.log('res : ' + onMulti(10, 2));
var value = onMulti(20, 3);
console.log('value : ' + value);

function onDiv(x, y) {
  return x / y;
}
var res2 = onDiv(20, 2);
console.log('res2 : ' + res2);

// 응용1
function onSome(x, y) {
  var plus = x + y;
  var minus = x - y;
  var multi = x * y;
  var div = x / y;

  return [plus, minus, multi, div];
}
var res5 = onSome(10, 5);
console.log(res5);
console.log(res5[2]);
console.log('');

// 응용2
function onSome2(x, y) {
  var plus = x + y;
  var minus = x - y;
  var multi = x * y;
  var div = x / y;

  return {
    vPlus : plus,
    vMinus : minus,
    vMulti : multi,
    vDiv : div
  };
}
var res6 = onSome2(10, 5);
console.log(res6);
console.log(res6.vPlus);
console.log('');

// 익명함수
var onOne = function(x, y) {
  var res = x * y;
  console.log('res : ' + res);
}
onOne(10, 2);

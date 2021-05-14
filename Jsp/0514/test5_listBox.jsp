<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test5.jsp(리스트박스연습)</title>
  <script>
    function fCheck() {
    	var sports = myform.sports.value;
    	var otherSports = myform.otherSports.value;
    	
    	if(sports == "") {
    		alert("좋아하는 스포츠를 한개 이상 선택하세요.");
    	}
    	else if(sports == '기타' && otherSports == "") {
    		alert("기타 종목을 입력해 주세요");
    		myform.otherSports.focus();
    	}
    	else {
    		myform.submit();
    	}
    }
  </script>
</head>
<body>
<form name="myform" method="post" action="<%=request.getContextPath()%>/t0514/T5">
	<h2>리스트박스 연습</h2>
	<p>좋아하는 스포츠는?
		<select name="sports" size="5" multiple>
		  <option value="축구">축구</option>
		  <option value="야구">야구</option>
		  <option value="배구">배구</option>
		  <option value="족구">족구</option>
		  <option value="탁구">탁구</option>
		  <option value="정구">정구</option>
		  <option value="수구">수구</option>
		  <option value="기타">기타</option>
		</select>
	</p>
	<p>기타 선택시 : <input type="text" name="otherSports"/></p>
	<p>
	  <input type="button" value="전송" onclick="fCheck()"/>
	  <input type="reset" value="취소"/>
	</p>
</form>
</body>
</html>
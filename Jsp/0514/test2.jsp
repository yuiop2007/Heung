<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>test2.jsp</title>
	<script>
		function fCheck() {
			var mid = myform.mid.value;
			var pwd = myform.pwd.value;
			
			if(mid == "" || pwd == "") {
				alert("아이디와 비밀번호는 필수 입력사항입니다.");
				myform.mid.focus();
			}
			else {
				myform.submit();
			}
		}
	</script>
</head>
<body>
  <br/>
  <h2>관리자 인증창</h2>
  <p>관리자의 아이디와 비밀번호를 입력하세요</p>
  <form name="myform" method="post" action="test2Ok.jsp">
    <p>아이디 : <input type="text" name="mid"/></p>
    <p>비밀번호 : <input type="password" name="pwd"/></p>
    <p><input type="button" value="로그인" onclick="fCheck()"/></p>
  </form>
</body>
</html>
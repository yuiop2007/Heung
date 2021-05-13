<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test12.jsp</title>
</head>
<body>
	<h2>로그인</h2>
	<form name="myform" method="post" action="/cj2103/Test12Ok">
		<p>아이디 : <input type="text" name="mid"/></p>
		<p>비밀번호 : <input type="password" name="pwd"/></p>
		<p>
		  <input type="submit" value="전송"/>
		  <input type="reset" value="다시입력"/>
		</p>
	</form>
</body>
</html>
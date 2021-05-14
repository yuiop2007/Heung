<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1.jsp(forward)</title>
</head>
<body>
  <h2>이곳은 test1.jsp 입니다.</h2>
  <jsp:forward page="test1Ok.jsp">
  	<jsp:param name="name" value="홍길동"/>
  	<jsp:param name="amount" value="10000"/>
  </jsp:forward>
</body>
</html>
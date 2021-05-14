<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test2PwdOk.jsp</title>
</head>
<body>
	<h2>관리자 인증확인창</h2>
	<p>관리자 <font color="red">아이디 오류입니다.</font> 아이디를 확인하세요</p>
	<p>입력하신 아이디는? <%=mid %></p>
	<p><a href="test2.jsp">다시 로그인</a></p>
</body>
</html>
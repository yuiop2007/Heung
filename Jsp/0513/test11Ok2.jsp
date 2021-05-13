<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test11Ok2.jsp</title>
</head>
<body>
	<h2>GET방식으로 전송되어온 자료</h2>
	<p>아이디 : <%=request.getParameter("mid") %></p>
	<p>비밀번호 : <%=request.getParameter("pwd") %></p>
	<p><a href="test11.jsp">돌아가기</a></p>
</body>
</html>
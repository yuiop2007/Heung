<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
  double amount = Math.round(Double.parseDouble(request.getParameter("amount")) * 1.1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1Ok.jsp(forward)</title>
</head>
<body>
  <h2>이곳은 test1Ok.jsp 입니다.</h2>
  <p>전송된 이름은 : <%=name %></p>
  <p>원금 : <%=request.getParameter("amount") %></p>
  <p>10% 할증 금액 : <%=amount %></p>
  <p><a href="test1Result.jsp">결과보기</a></p>
</body>
</html>
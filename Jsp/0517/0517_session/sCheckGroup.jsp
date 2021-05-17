<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>sCheckGroup.jsp</title>
</head>
<body>
  <br/>
  <h2>세션 그룹 확인</h2>
  <hr/>
<%
  Enumeration names = session.getAttributeNames();

	while(names.hasMoreElements()) {
		out.println("세션변수명 : " + names.nextElement() + "<br/>");
	}
%>
  <hr/>
  <p><a href="sMain.jsp">돌아가기</a></p>
</body>
</html>
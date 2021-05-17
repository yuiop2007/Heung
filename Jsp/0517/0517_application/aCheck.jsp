<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int visitCnt = 0;
	if(application.getAttribute("aVisitCnt") != null) {
		visitCnt = (Integer) application.getAttribute("aVisitCnt") + 1;
		application.setAttribute("aVisitCnt", visitCnt);
	}
	else {
		application.setAttribute("aVisitCnt", 0);
	}
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>aCheck.jsp</title>
</head>
<body>
	<h2>application 변수값 확인</h2>
	<p>현재 관리자의 아이디? <%=application.getAttribute("aAdmin") %></p>
	<p>현재 방문자수? <%=visitCnt %></p>
	<p><a href="aMain.jsp">돌아가기</a></p>
</body>
</html>
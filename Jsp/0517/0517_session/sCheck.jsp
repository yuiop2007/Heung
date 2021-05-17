<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String sMid = session.getAttribute("sMid")==null ? "" : (String) session.getAttribute("sMid");
  String sPwd = session.getAttribute("sPwd")==null ? "" : (String) session.getAttribute("sPwd");
  int sVisitCnt = session.getAttribute("sVisitCnt")==null ? 0 : (int) session.getAttribute("sVisitCnt");
  
  int sVisit = 0;
  if(sVisitCnt != 0) {
  	sVisit = (Integer) session.getAttribute("sVisitCnt") + 1;
  	session.setAttribute("sVisitCnt", sVisit);
  }
  else {
  	session.setAttribute("sVisitCnt", 1);
  }
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>sCheck.jsp</title>
</head>
<body>
	<br/>
	<h2>세션 확인</h2>
	<hr/>
	<p>세션 아이디 : <%=sMid %></p>
	<p>세션 비밀번호 : <%=sPwd %></p>
	<p>my 세션 아이디 : <%=session.getId() %></p>
	<p>세션 방문카운트 : <%=sVisit %></p>
	<p><a href="sMain.jsp">돌아가기</a></p>
</body>
</html>
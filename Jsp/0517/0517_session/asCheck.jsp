<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String aAdmin = (String) application.getAttribute("aAdmin");
  int aVisitCnt = application.getAttribute("aVisitCnt")==null ? 0 : (Integer) application.getAttribute("aVisitCnt");
  
  int aVisit = 0;
  if(aVisitCnt != 0) {
  	aVisit = (Integer) application.getAttribute("aVisitCnt") + 1;
		application.setAttribute("aVisitCnt", aVisit);
  }
  else {
  	application.setAttribute("aVisitCnt", 1);
  }

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
  <title>asCheck.jsp</title>
</head>
<body>
	<br/>
	<h2>application/session 확인</h2>
	<hr/>
	<p>관리자 아이디 : <%=aAdmin %></p>
	<p>세션 아이디 : <%=sMid %></p>
	<p>세션 비밀번호 : <%=sPwd %></p>
	<p>my 세션 아이디 : <%=session.getId() %></p>
	<p>세션 방문카운트 : <%=sVisitCnt %></p>
	<p>총 방문카운트 : <%=aVisitCnt %></p>
	<p><a href="sMain.jsp">돌아가기</a></p>
</body>
</html>
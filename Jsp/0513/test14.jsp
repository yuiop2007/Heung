<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sw = request.getParameter("sw")==null ? "" : request.getParameter("sw");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test14.jsp</title>
  <style>
    body {
    	width: 1000px;
    	margin: 0px auto;
    }
    #header {
    text-align: center;
      background-color: aqua;
      height: 80px;
    }
  	#content {
  	  text-align: center;
  	}
  	#footer {
        background-color: #ccc;
  		text-align: center;
  		height: 80px;
  	}
  </style>
</head>
<body>
<div id="header">
	<%@include file="test14_menu.jsp" %>
</div>
<div id="content">
	<% if(sw.equals("board")){ %>
		<%@include file="test14_board.jsp" %>
	<% } else if(sw.equals("guest")) { %>
		<%@include file="test14_guest.jsp" %>
	<% } else if(sw.equals("pds")) { %>
		<%@include file="test14_pds.jsp" %>
	<% } else { %>
		<br/>
		<h2>이곳는 메인 화면 입니다.</h2>
		<hr/>
		<p>
		  <img src="../images/9.jpg" width="300px"/>
		</p>
	<% } %>		
</div>
<div id="footer">
	<%@include file="test14_footer.jsp" %>
</div>
</body>
</html>
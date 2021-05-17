<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>aServletMain.jsp</title>
</head>
<body>
	<div class="container">
	  <br/>
	  <h2>Application/Session 연습(Servlet처리)</h2>
	  <hr/>
	  <p><a href="<%=request.getContextPath()%>/aServletSave">application/session 정보 저장</a>(처음 1회만 수행할것)</p>
	  <p><a href="<%=request.getContextPath()%>/aServletCheck">정보 확인</a>(자신을 비롯한 다른부라우저에서 확인)</p>
	</div>
</body>
</html>
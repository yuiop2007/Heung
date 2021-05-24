<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  /* String res1 = request.getParameter("res"); */
  /* pageContext.setAttribute("res2", res1); */
  /* pageContext.setAttribute("res2", 500); */
  /* String res = (String) request.getAttribute("res"); */
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>sourceOk3Res.jsp</title>
</head>
<body>
<div class="container">
  <p><br/></p>
  <div>
    입력받은수는? ${param.su}<br/>
    양수/음수 판별? ${res}입니다.<br/>
    <a href="<%=request.getContextPath()%>/study/mvc/source.jsp">다시하기</a>
  </div>
  <p><br/></p>
</div>
</body>
</html>
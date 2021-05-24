<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

  int su = Integer.parseInt(request.getParameter("su"));
  
  String res = "";

  if(su > 0) res = "양수";
  else if(su < 0) res = "음수";
  else res = "제로";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>sourceOk2.jsp(MVC-1)</title>
</head>
<body>
<div class="container">
  <p><br/></p>
  <div>
    입력받은수는? <%=su %><br/>
    양수/음수 판별? <%=res %>입니다.<br/>
    <a href="source.jsp">다시하기</a>
  </div>
  <p><br/></p>
</div>
</body>
</html>
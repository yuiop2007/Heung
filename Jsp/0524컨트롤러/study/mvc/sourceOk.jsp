<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

  int su = Integer.parseInt(request.getParameter("su"));
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>sourceOk.jsp(스파게티코드)</title>
</head>
<body>
<div class="container">
  <p><br/></p>
  <div>
    입력받은수는? <%=su %><br/>
    양수/음수 판별? 
<%  if(su > 0) { %>
      양수
<%  }else if(su < 0) { %>
			음수
<%  } else { %>
			제로
<%  } %>
    입니다.<br/>
    <a href="source.jsp">다시하기</a>
  </div>
  <p><br/></p>
</div>
</body>
</html>
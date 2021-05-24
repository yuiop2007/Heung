<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>source.jsp</title>
</head>
<body>
<div class="container">
  <p><br/></p>
  <h2>음수/양수 판별</h2>
  <form name="myform" method="get" action="<%=request.getContextPath()%>/mvc/sourceOk3">
    수를 입력하세요 : 
    <input type="number" name="su" value="0"/>
    <input type="submit" value="판별"/>
  </form>
  <p><br/></p>
</div>
</body>
</html>
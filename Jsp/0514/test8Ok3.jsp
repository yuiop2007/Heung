<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test8Ok3.jsp</title>
</head>
<body>
  <h2>전송된 값을 Vo객체에 저장</h2>
  <!-- vo객체 생성 -->
  <jsp:useBean id="vo" class="t0514.Test8Vo"/>
  
  <!-- vo에 값을 저장 -->
  <jsp:setProperty name="vo" property="*"/>
  
  <!-- vo에 저장된 값을 읽어온다. -->
  아이디 : <jsp:getProperty name="vo" property="mid"/><br/>
  비밀번호 : <jsp:getProperty name="vo" property="pwd"/><br/>
  성명 : <jsp:getProperty name="vo" property="name"/><br/>
  나이 : <jsp:getProperty name="vo" property="age"/><br/>
  성별 : <jsp:getProperty name="vo" property="gender"/><br/>
  주소 : <jsp:getProperty name="vo" property="address"/><br/>
  <p><a href="test8.jsp">돌아가기</a></p>
</body>
</html>
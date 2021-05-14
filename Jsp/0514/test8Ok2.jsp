<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="mid" value="${param.mid}"/>
<c:set var="pwd" value="${param.pwd}"/>
<c:set var="name" value="${param.name}"/>
<c:set var="age" value="${param.age}"/>
<c:set var="gender" value="${param.gender}"/>
<c:set var="address" value="${param.address}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test8Ok2.jsp</title>
</head>
<body>
  <h2>전송된 값</h2>
  <p>아이디 : ${mid}</p>
  <p>비밀번호 : ${pwd}</p>
  <p>성명 : ${name}</p>
  <p>나이 : ${age}</p>
  <p>성별 : ${gender}</p>
  <p>주소 : ${address}</p>
  <hr/>
  <h2>전송된 값을 Vo객체에 저장</h2>
  <!-- vo객체 생성 -->
  <jsp:useBean id="vo" class="t0514.Test8Vo"/>
  
  <!-- vo에 값을 저장 -->
  <jsp:setProperty name="vo" property="mid" value="${mid}"/>
  <jsp:setProperty name="vo" property="pwd" value="${pwd}"/>
  <jsp:setProperty name="vo" property="name" value="${name}"/>
  <jsp:setProperty name="vo" property="age" value="${age}"/>
  <jsp:setProperty name="vo" property="gender" value="${gender}"/>
  <jsp:setProperty name="vo" property="address" value="${address}"/>
  
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
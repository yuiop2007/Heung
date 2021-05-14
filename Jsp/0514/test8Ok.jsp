<%@page import="t0514.Test8Vo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

  String mid = request.getParameter("mid");
  String pwd = request.getParameter("pwd");
  String name= request.getParameter("name");
  int age = Integer.parseInt(request.getParameter("age"));
  String gender = request.getParameter("gender");
  String address = request.getParameter("address");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test8Ok.jsp</title>
</head>
<body>
  <h2>전송된 값을 Vo객체에 저장하기</h2>
  <%
    Test8Vo vo = new Test8Vo();
  
    vo.setMid(mid);
    vo.setPwd(pwd);
    vo.setName(name);
    vo.setAge(age);
    vo.setGender(gender);
    vo.setAddress(address);
  %>
  <p>아이디 : <%=vo.getMid()%></p>
  <p>비밀번호 : <%=vo.getPwd()%></p>
  <p>성명 : <%=vo.getName()%></p>
  <p>나이 : <%=vo.getAge()%></p>
  <p>성별 : <%=vo.getGender()%></p>
  <p>주소 : <%=vo.getAddress()%></p>
  <p><a href="test8.jsp">돌아가기</a></p>
</body>
</html>
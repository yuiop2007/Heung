<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test2.jsp</title>
</head>
<body>
  <h2>이곳은 test2.jsp</h2>
  <p>이곳은 선언문</p>
  <%!
  	String str = "대한민국!!";
  	int atom(int su1, int su2) {
  		int res = su1 + su2;
  		return res;
  	}
  %>
  <p>이곳은 Java 코드(실행문)</p>
  <%
    out.println("이곳은 출력부 입니다.<br/>");
    out.println("str = " + str + "<br/>");
    int res = atom(10, 20);
    out.println("res = " + res + "<br/>");
    out.println("<br/>");
    out.println("<br/>");
    out.println("<br/>");
  %>
  <p>아래는 표현식을 이용하여 출력합니다.</p>
  <p><%="이곳은 <font color='red'><b>표현식</b></font> 안입니다." %></p>
</body>
</html>
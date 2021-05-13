<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test3.jsp</title>
</head>
<body>
	<h2>jsp 선언문 / 스크릿틀릿 / 표현식</h2>
	<%
		int tot = 0;
		for(int i=1; i<=10; i++) {
			tot += i;
			out.println("1 ~ " + i + " = " + tot + "<br/>");
		}
	%>
	<%!
	  public String strLower(String str) {
			String res = str.toLowerCase();
			return res;
	  }
	%>
	<p>
	  소문자로 출력됩니다. : <%=strLower("Hello Jsp!!!") %>
	</p>
</body>
</html>
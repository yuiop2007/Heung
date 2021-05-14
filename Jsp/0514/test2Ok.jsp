<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

  String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
  String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test2Ok.jsp</title>
</head>
<body>
	<h2>이곳은 test2Ok.jsp</h2>
	<!-- 관리자 아이디 : admin  ,  비밀번호 : 1234  -->
	<%
		if(mid.equals("admin") && pwd.equals("1234")) {
			out.println("관리자 인증 확인!!!!");
		}
		else {
			if(mid.equals("admin")) {
	%>
				<jsp:forward page='test2AdminOk.jsp'>
        	<jsp:param name='pwd' value='<%=pwd%>'/>
				</jsp:forward>
	<%
		} else if(pwd.equals("1234")) {
	%>
				<jsp:forward page='test2PwdOk.jsp'>
				<jsp:param name='mid' value='<%=mid%>'/>
				</jsp:forward>
	<%
		} else { 
				  out.println("<script>");
				  out.println("alert('아이디와 비밀번호를 확인하세요.");
				  out.println("history.back()");
				  out.println("</script>");
      }
		}
	%>
</body>
</html>
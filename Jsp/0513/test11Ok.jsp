<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- test11Ok.jsp -->

	<%="GET방식으로 전송되어온 자료<br/>" %>
	<%="<br/>아이디 : " + request.getParameter("mid") %>
	<%="<br/>비밀번호 : " + request.getParameter("pwd") %>
	<%="<br/><a href='test11.jsp'>돌아가기</a>"%>

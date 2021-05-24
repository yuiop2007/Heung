<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>el2.jsp</title>
</head>
<body>
<div class="container">
  <p><br/></p>
  <h2>EL 표기법연습 2</h2>
<%
  int[] atom1 = {10,20,30,40,50};
  pageContext.setAttribute("atom1", atom1);
%>
  <p>자바표기법으로 배열 출력하기</p>
  atom1[0] = <%=atom1[0] %><br/>
  atom1[1] = <%=atom1[1] %><br/>
  atom1[2] = <%=atom1[2] %><br/>
  atom1[3] = <%=atom1[3] %><br/>
  atom1[4] = <%=atom1[4] %><br/>
  <hr/>
  <p>EL표기법으로 배열 출력하기</p>
  atom1[0] = ${atom1[0]}<br/>
  atom1[1] = ${atom1[1]}<br/>
  atom1[2] = ${atom1[2]}<br/>
  atom1[3] = ${atom1[3]}<br/>
  atom1[4] = ${atom1[4]}<br/>
  <hr/>
<%
  List<String> atom2 = new ArrayList<String>();
	atom2.add("홍길동");
	atom2.add("김말숙");
	atom2.add("100");
	atom2.add("이기자");
	atom2.add("이순신");
	pageContext.setAttribute("atom2", atom2);
%>
  <p>EL표기법으로 List객체내용 출력하기</p>
  atom2[0] = ${atom2[0]}<br/>
  atom2[1] = ${atom2[1]}<br/>
  atom2[2] = ${atom2[2]}<br/>
  atom2[3] = ${atom2[3]}<br/>
  atom2[4] = ${atom2[4]}<br/>
  <hr/>
<%
  Map<String, String> atom3 = new HashMap<String, String>();
	atom3.put("1","aaa");
	atom3.put("2","bbb");
	atom3.put("3","ccc");
	atom3.put("4","ddd");
	atom3.put("5","eee");
	request.setAttribute("atom3", atom3);
%>
  <p>EL표기법으로 Map객체내용 출력하기</p>
  atom3[1] = ${atom3["1"]}<br/>
  atom3[2] = ${atom3["2"]}<br/>
  atom3[3] = ${atom3["3"]}<br/>
  atom3[4] = ${atom3[4]} - 처리 안됨<br/>
  atom3[5] = ${atom3[5]} - 처리 안됨<br/>
  <hr/>
  <p><br/></p>
</div>
</body>
</html>
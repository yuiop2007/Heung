<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>el1</title>
</head>
<body>
<div class="container">
  <p><br/></p>
  <h2>EL(Expression Language))표기법</h2>
  <p>
    <b>용도 : </b>사용자가 값(변수/객체)을 저장소에 저장후 전송하였을때 저장소의 내용을 출력할 목적으로 사용한다.<br/>
    <b>표기법 : </b>$ { 변수/값/수식/객체명 }<br/>
  </p>
<%
  String atom = "seoul", name="홍길동";     // String atom=request.getParameter("atom");
  
  String imsi = request.getParameter("imsi");
  //int su1 = Integer.parseInt(request.getParameter("su1"));
  //int su2 = Integer.parseInt(request.getParameter("su2"));
  
  pageContext.setAttribute("atom", atom);
  request.setAttribute("name", name);
  
  request.setAttribute("imsi", -200);
  pageContext.setAttribute("imsi", 10);
  
  session.setAttribute("simsi", "아톰");
  
%>
  <p>앞에서 저장된 값들을 자바코드(표현식)을 이용해서 출력?</p>
  atom = <%=atom %><br/>
  name = <%=name %><br/>
  imsi = <%=imsi %><br/>
  
  <hr/>
  <p>앞에서 저장된 값들을 EL표기법을 이용해서 출력?</p>
  m = ${atom}<br/>
  name = ${name}<br/>
  simsi = ${simsi}<br/>
  imsi1 = ${param.imsi}<br/>
  imsi2(pageContext) = ${imsi}<br/>
  imsi3(request) = ${requestScope.imsi}<br/>
  <hr/>
  <p>EL을 이용한 계산식</p>
  100 + 200 = ${100 + 200}<br/>
  su1 + su2 = ${param.su1 + param.su2}<br/> 
  <hr/>
  <p>EL을 사용한 삼항연산자</p>
  ${param.su1>param.su2 ? param.su1 : param.su2}<br/>
  <hr/>
  <p>EL 연산자 연습</p>
<%
  pageContext.setAttribute("no1", 500);
  pageContext.setAttribute("no2", 600);
  pageContext.setAttribute("str1", "홍길동");
  pageContext.setAttribute("str2", "김말숙");
  pageContext.setAttribute("str3", "a");
  pageContext.setAttribute("str4", "A");
%>
  연산자(==) : ${no1 == no2}<br/>
  공백비교 : ${no1 == ""}<br/>
  공백비교 : ${no1 == null}<br/>
  공백비교(empty)1. => 공백("")과 널(null)값을 동시에 비교 : ${no1 == "" || no1 == null}<br/> 
  공백비교(empty)2. => ${empty no1}<br/>
  공백비교(empty)3. => ${not empty no1}<br/>
  공백비교(empty)4. => ${!empty no1}<br/>
  문자비교(삼항연산자) => ${str1 > str2 ? str1 : str2}<br/>
  문자비교(삼항연산자) => ${str3 > str4 ? str3 : str4}<br/>
  <p><br/></p>
</div>
</body>
</html>
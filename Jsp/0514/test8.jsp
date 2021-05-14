<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test8.jsp</title>
</head>
<body>
  <h2>회원가입</h2>
  <form name="myform" method="post" action="test8Ok3.jsp">
    <p>아이디 : <input type="text" name="mid"/></p>
    <p>비밀번호 : <input type="password" name="pwd"/></p>
    <p>성명 : <input type="text" name="name"/></p>
    <p>나이 : <input type="number" name="age"/></p>
    <p>성별 : 
      <input type="radio" name="gender" value="남자" checked/>남자
      <input type="radio" name="gender" value="여자"/>여자
    </p>
    <p>주소 : <input type="text" name="address"/></p>
    <p>
      <input type="submit" value="전송"/>
      <input type="reset" value="취소"/>
    </p>
  </form>
</body>
</html>
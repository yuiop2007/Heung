<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test6_checkBox.jsp</title>
</head>
<body>
<h2>체크박스 활용한 전송</h2>
<form name="myform" method="post" action="test6_checkBoxOk.jsp">
  <p>사용 가능한 컴퓨터 언어(스크립트언어 포함)는?</p>
  <p>
    <input type="checkbox" name="language" value="JAVA"/>JAVA
    <input type="checkbox" name="language" value="DataBase"/>DataBase
    <input type="checkbox" name="language" value="HTML5"/>HTML5
    <input type="checkbox" name="language" value="CSS3"/>CSS3
    <input type="checkbox" name="language" value="JavaScript"/>JavaScript
    <input type="checkbox" name="language" value="jQuery"/>jQuery
    <input type="checkbox" name="language" value="aJax"/>aJax
    <input type="checkbox" name="language" value="JSP"/>JSP
  </p>
  <p>기타 가능언어 : <input type="text" name="otherLang"/></p>
  <p>
    <input type="submit" value="전송"/>
    <input type="reset" value="취소"/>
  </p>
</form>
</body>
</html>
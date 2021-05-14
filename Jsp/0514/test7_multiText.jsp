<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test7_multiText.jsp</title>
</head>
<body>
  <h2>상품 등록</h2>
  <form name="myform" method="post" action="<%=request.getContextPath()%>/t0514/T7">
  	<p>상품1 : <input type="text" name="product" autofocus/></p>
  	<p>상품2 : <input type="text" name="product"/></p>
  	<p>상품3 : <input type="text" name="product"/></p>
  	<p>상품4 : <input type="text" name="product"/></p>
  	<p>상품5 : <input type="text" name="product"/></p>
  	<p>
  	  <input type="submit" value="전송"/>
  	  <input type="reset" value="취소"/>
  	</p>
  </form>
</body>
</html>
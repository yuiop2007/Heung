<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>loginInput.jsp(회원가입)</title>
  <%@ include file="../include/bs.jsp" %>
  <script>
    function fCheck() {
    	// 폼 체크.....
    	
    	myform.submit();
    }
  </script>
  <style>
  	table, th, td {
      border: 1px solid gray;
      padding: 20px;
    }
    th {
      background-color: #ccc;
      text-align: center;
    }
  </style>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회 원 가 입</h2>
  <form name="myform" method="post" action="<%=request.getContextPath()%>/LoginInputOk">
    <table class="table">
    	<tr>
    	  <th>아 이 디</th>
    	  <td><input type="text" name="mid" id="mid" autofocus class="form-control"/></td>
    	</tr>
    	<tr>
    	  <th>비밀번호</th>
    	  <td><input type="password" name="pwd" id="pwd" class="form-control"/></td>
    	</tr>
    	<tr>
    	  <th> 성 명 </th>
    	  <td><input type="text" name="name" id="name" class="form-control"/></td>
    	</tr>
    	<tr>
    	  <td colspan="2" style="text-align:center;">
    	    <input type="button" value="회원가입" onclick="fCheck()" class="btn btn-outline-secondary"/> &nbsp;
    	    <input type="reset" value="다시입력" class="btn btn-outline-secondary"/> &nbsp;
    	    <input type="button" value="돌아가기" onclick="location.href='login.jsp';" class="btn btn-outline-secondary"/>
    	  </td>
    	</tr>
    </table>
  </form>
</div>
</body>
</html>
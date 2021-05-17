<!-- sSave.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  session.setAttribute("sMid", "admin");
  session.setAttribute("sPwd", "1234");
  
  session.setAttribute("sVisitCnt", 0);
%>
<script>
  alert("세션 저장 완료!!");
  location.href="sMain.jsp";
</script>
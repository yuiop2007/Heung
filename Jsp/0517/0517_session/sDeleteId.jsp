<!-- sDeleteId.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  session.removeAttribute("sMid");
%>
<script>
  alert("아이디 세션 삭제완료!!");
  history.back();
</script>
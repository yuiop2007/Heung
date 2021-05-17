<!-- aDelete.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  application.removeAttribute("aAdmin");
  application.removeAttribute("aVisitCnt");
%>
<script>
  alert("application 변수와 값이 모두 삭제 되었습니다.");
  history.back();
</script>
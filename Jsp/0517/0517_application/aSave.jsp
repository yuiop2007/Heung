<!-- aSave.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  application.setAttribute("aAdmin", "atom");   // 관리자의 아이디를 'atom' 으로 설정
  application.setAttribute("aVisitCnt", 0);			// 방문카운트값을 초기값으로 0으로 셋팅...
%>
<script>
  alert("application에 변수와 값이 저장되었습니다.");
  location.href="aMain.jsp";
</script>
<%@page import="guest.GuestVO"%>
<%@page import="java.util.List"%>
<%@page import="guest.GuestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  GuestDAO dao = new GuestDAO();
  List<GuestVO> vos = dao.gList();
  GuestVO vo = new GuestVO();
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>gList.jsp(방명록 리스트)</title>
  <%@ include file="../../include/bs.jsp" %>
  <style>
    th {
      background-color: #ccc;
      text-align: center;
    }
  </style>
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<div class="container">
  <p><br/></p>
  <table class="table table-borderless">
    <tr>
      <th colspan="2" style="text-align:center; background-color:#fff"><h2>방 명 록 리 스 트</h2></th>
    </tr>
    <tr>
      <td>
        <!-- [<a href="#">관리자</a>] -->
        <a href="#" class="btn btn-outline-secondary btn-sm">관리자</a>
      </td>
      <td style="text-align:right;">
        <a href="<%=request.getContextPath()%>/guest/gInput.jsp" class="btn btn-outline-secondary btn-sm">글쓰기</a>
      </td>
    </tr>
  </table>
<%
	for(int i=0; i<vos.size(); i++) {
		vo = vos.get(i);
		
		String email = vo.getEmail();
		if(email.equals("") || email == null) email = "-없음-";
		
		String homepage = vo.getHomepage();
		//if(homepage.length() <= 8) homepage = "-없음-";
		
		String vdate = vo.getVdate().substring(0, vo.getVdate().length()-2);
		
		String content = vo.getContent().replace("\n", "<br/>");
		// content = content.replace("<", "&lt;");
		// content = content.replace(">", "&gt;");
%>
  <table class="table table-borderless">
    <tr>
      <td>방문번호 : <%=vo.getIdx() %></td>
      <td style="text-align:right;">방문IP : <%=vo.getHostip() %></td>
    </tr>
  </table>
  <table class="table table-bordered">
  	<tr>
  	  <th style="width:10%;">성명</th>
  	  <td style="width:35%;"><%=vo.getName() %></td>
  	  <th style="width:10%;">전자우편</th>
  	  <td style="width:45%;"><%=email %></td>
  	</tr>
  	<tr>
  	  <th>방문일자</th>
  	  <td><%=vdate %></td>
  	  <th>홈페이지</th>
  	  <td>
<%
        if(homepage.length() <= 8) {
          out.println("-없음-");
				}
				else {
  	      out.println("<a href="+homepage+" target='_blank'>"+homepage+"</a>");
        }
%>
			</td>
  	</tr>
  	<tr>
  	  <th>방문소감</th>
  	  <td colspan="3"><%=content %></td>
  	</tr>
  </table>
  <br/>
<%} %>
</div>
<%@ include file="../../include/footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- test6_checkBoxOk.jsp --%>
<%
  request.setCharacterEncoding("utf-8");

	String[] language = request.getParameterValues("language"); 
	String otherLang = request.getParameter("otherLang")==null ? "" : request.getParameter("otherLang");
	
	if(language == null && otherLang.equals("")) {
		out.println("<script>");
		out.println("alert('사용가능 언어를 선택하세요.');");
		out.println("history.back();");
		out.println("</script>");
		//return;
	}
	else {
		String strLanguage = "";
		if(language != null){		
			for(String str : language) {
					strLanguage += str + "/";
			}
		}
		strLanguage += otherLang;			
		out.println("<p>사용가능언어 : "+strLanguage+"</p>");
		out.println("<p><a href='test6_checkBox.jsp'>돌아가기</a></p>");
	}
%>
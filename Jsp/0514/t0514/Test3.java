package t0514;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/0514/T3")
public class Test3 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		
		PrintWriter out = response.getWriter();
		
		out.println("성명 : " + name);
		out.println("<br/>전송방식 : " + request.getMethod());
		out.println("<br/>URL : " + request.getRequestURL());
		out.println("<br/>사용자 IP : " + request.getRemoteAddr());
		out.println("<br/>서버 이름 : " + request.getServerName());
		out.println("<br/>서버 포트 : " + request.getServerPort());
		out.println("<br/>요청 파라메터의 길이 : " + request.getContentLength());
		out.println("<br/>ContextPath : " + request.getContextPath());
		out.println("<br/>현재 사용중인 프로토콜 : " + request.getProtocol());
		
		out.println("<br/><a href='/cj2103/0514/test3.jsp'>돌아가기</a>");
	}
}

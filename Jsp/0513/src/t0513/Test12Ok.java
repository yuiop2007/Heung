package t0513;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Test12Ok")
public class Test12Ok extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		String mid = request.getParameter("mid");
		String pwd = request.getParameter("pwd");
		
		System.out.println("mid : " + mid);
		System.out.println("pwd : " + pwd);
		
		PrintWriter out = response.getWriter();
		
		out.println("<a href='/cj2103/0513/test12.jsp'>돌아가기</a>");
	}
}

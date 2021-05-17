package t0517_init;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = {"/t0517_t1"}, initParams = {@WebInitParam(name="mid", value="admin"), @WebInitParam(name="pwd", value="1234")})
public class Test1 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 service 입니다.");
		
		// 지정된 서블릿에서의 초기값 불러오기
//		String mid = getInitParameter("mid");
//		String pwd = getInitParameter("pwd");

		//web.xml에 지정해놓은 공통변수의 값 받아오기
		String mid = getServletContext().getInitParameter("mid");
		String pwd = getServletContext().getInitParameter("pwd");
		
		
		PrintWriter out = response.getWriter();
		
		out.println("<br/>아이디 : " + mid);
		out.println("<br/>비밀번호 : " + pwd);
	}
}

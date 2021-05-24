package study.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/study/f1Ok")
public class Form1Ok extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid");
		String pwd = request.getParameter("pwd");
		
		// 아이디 인증 처리루틴....
		
		request.setAttribute("mid", mid);
		request.setAttribute("pwd", pwd);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/controller/form1Ok.jsp");
		dispatcher.forward(request, response);
	}
}

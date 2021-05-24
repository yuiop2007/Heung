package study.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/study2/controller/test1")
public class Test1 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect(request.getContextPath()+"/study/mvc/test1.jsp");
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/controller/test1.jsp");
//		dispatcher.forward(request, response);
	}
}

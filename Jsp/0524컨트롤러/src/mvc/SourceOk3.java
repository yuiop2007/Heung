package study.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mvc/sourceOk3")
public class SourceOk3 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");

	  int su = Integer.parseInt(request.getParameter("su"));
	  
	  String res = "";

	  if(su > 0) res = "+";
	  else if(su < 0) res = "-";
	  else res = "0";
	  
	  request.setAttribute("res", res);
	  
	  // direct , forword
	  
	  //response.sendRedirect(request.getContextPath()+"/study/mvc/sourceOk3Res.jsp?su="+su+"&res="+res);
	  
	  RequestDispatcher dispatcher = request.getRequestDispatcher("/study/mvc/sourceOk3Res.jsp");
	  dispatcher.forward(request, response);
	}
}

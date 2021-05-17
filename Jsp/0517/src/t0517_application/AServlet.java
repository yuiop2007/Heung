package t0517_application;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/aServletSave")
public class AServlet extends HttpServlet {
  @Override
  protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	// session 설정
  	HttpSession session = request.getSession();
  	session.setAttribute("sVisitCnt", 0);
  	
  	// application 설정
  	ServletContext application = request.getServletContext();
  	application.setAttribute("aVisitCnt", 1);
  	
  	PrintWriter out = response.getWriter();
  	out.println("<script>");
  	out.println("alert('application/session 값이 저장되었습니다.');");
  	out.println("location.href='"+request.getContextPath()+"/0517_application/aServletMain.jsp';");
  	out.println("</script>");
  }
}

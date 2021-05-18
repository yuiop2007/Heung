package t0518_database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogDataDelete")
public class LogDataDelete extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mid = request.getParameter("mid");
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		LoginDAO dao = new LoginDAO();
		
		dao.logDataDelete(mid);
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('"+mid+"님 탈퇴 되셨습니다.');");
		out.println("location.href='"+request.getContextPath()+"/0518_database/login.jsp';");
		out.println("</script>");
	}
}

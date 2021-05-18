package t0518_database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginUpdate")
public class LoginUpdate extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginVO vo = new LoginVO();
		
		vo.setMid(request.getParameter("mid"));
		vo.setPwd(request.getParameter("pwd"));
		vo.setName(request.getParameter("name"));
		
		LoginDAO dao = new LoginDAO();
		
		int res = dao.loginUpdate(vo);
		
		PrintWriter out = response.getWriter();
		
		if(res == 1) {
			out.println("<script>"
								+ "alert('수정완료!!!');"
								+ "location.href='"+request.getContextPath()+"/0518_database/loginMain.jsp';"
								+ "</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('수정 실패');");
			out.println("location.href='"+request.getContextPath()+"/0518_database/loginMain.jsp';");
			out.println("</script>");
		}
	}
}

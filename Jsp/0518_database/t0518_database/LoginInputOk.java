package t0518_database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginInputOk")
public class LoginInputOk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		
		LoginVO vo = new LoginVO();
		
		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setName(name);
		
		LoginDAO dao = new LoginDAO();
		
		// 아이디 중복체크....
		
		
		// 회원가입 호출부...
		int res = dao.logDataInput(vo);
		
		PrintWriter out = response.getWriter();
		
		if(res == 1) {
			out.println("<script>"
								+ "alert('"+mid+"님 가입을 환영합니다.');"
								+ "location.href='"+request.getContextPath()+"/0518_database/login.jsp';"
								+ "</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('가입실패! 다시 회원 가입하세요.');");
			out.println("location.href='"+request.getContextPath()+"/0518_database/login.jsp';");
			out.println("</script>");
		}
	}
}

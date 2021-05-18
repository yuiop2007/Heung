package t0518_database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		
		LoginDAO dao = new LoginDAO();
		
		String name = dao.logDataCheck(mid, pwd);
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		if(!name.equals("")) {
			// 정회원으로 판별후 회원의 사용할 기본정보만을 세션에 등록시켜준다.
			session.setAttribute("smid", mid);
			session.setAttribute("sname", name);
			
			// 로그인된 날짜를 최종 접속일로 update처리한다.
			dao.lastdateUpdate(mid);
			
			out.println("<script>alert('"+name+"님 로그인 되셨습니다.');location.href='"+request.getContextPath()+"/0518_database/loginMain.jsp';</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('로그인 실패!!!');");
			out.println("location.href='"+request.getContextPath()+"/0518_database/login.jsp';");
			out.println("</script>");
		}
	}
}

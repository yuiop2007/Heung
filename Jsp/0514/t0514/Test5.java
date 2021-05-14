package t0514;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/t0514/T5")
public class Test5 extends HttpServlet {
  @Override
  protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String[] sports=  request.getParameterValues("sports");
		String otherSports = request.getParameter("otherSports")==null ? "" : request.getParameter("otherSports");
		
		String strSports = "";
		if(sports != null) {
			for(String str : sports) {
				if(str.equals("기타")) {
					if(otherSports.trim().length() <= 0) {
						out.println("<script>");
						out.println("alert('기타 선택란을 선택하셨으면 입력란을 작성해 주세요.');");
						out.println("history.back();");
						out.println("</script>");
					}
					else {
						strSports += str + ":" + otherSports;
					}
				}
				else {
					strSports += str + "/";
				}
			}
		}
		out.println("<p>좋아하는 스포츠 : " + strSports + "</p>");
		out.println("<p><a href='"+request.getContextPath()+"/0514/test5.jsp'>돌아가기</a></p>");
  }
}

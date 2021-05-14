package t0514;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/t0514/T4")
public class Test4 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String hakbun = request.getParameter("hakbun");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int mat = Integer.parseInt(request.getParameter("mat"));
		
		int tot = kor + eng + mat;
		double avg = tot / 3.0;
		int intAvg = (int)(avg / 10.0);
		char grade;
		
		switch(intAvg) {
			case 10:
			case 9:
				grade = 'A';
				break;
			case 8:
				grade = 'B';
				break;
			case 7:
				grade = 'C';
				break;
			case 6:
				grade = 'D';
				break;
			default:
				grade = 'F';
		}
		
		Test4Vo vo = new Test4Vo(name, hakbun, kor, eng, mat, tot, avg, grade);
		
		PrintWriter out = response.getWriter();
		
		out.println("<h2>성적 확인</h2>");
		out.println("<br/>학번 : " + vo.getHakbun());
		out.println("<br/>성명 : " + vo.getName());
		out.println("<br/>국어 : " + vo.getKor());
		out.println("<br/>영어 : " + vo.getEng());
		out.println("<br/>수학 : " + vo.getMat());
		out.println("<br/>총점 : " + vo.getTot());
		out.println("<br/>평균 : " + vo.getAvg());
		out.println("<br/>학점 : " + vo.getGrade());
		out.println("<br/><a href='"+request.getContextPath()+"/0514/test4.jsp'>돌아가기</a>");
	}
}

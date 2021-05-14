package t0514;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/t0514/T7")
public class Test7 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String[] product = request.getParameterValues("product");
		int sw = 0;
		int cnt = 0;
		String strProduct = "";
		
		for(String str : product) {
			if(product[cnt] != "") {
				strProduct += str + "/";
				sw = 1;
			}
			cnt++;
		}
		
		if(sw == 0) {
			out.println("<script>");
			out.println("alert('상품을 한개 이상 입력하세요.');");
			out.println("history.back();");
			out.println("</script>");
			return;
		}
		strProduct = strProduct.substring(0, strProduct.length()-1);
		
		out.println("<p>등록하신 상품은?</p>");
		out.println("<p>"+strProduct+"</p>");
		out.println("<p><a href='"+request.getContextPath()+"/0514/test7_multiText.jsp'>돌아가기</a></p>");
		
	}
	
	
}

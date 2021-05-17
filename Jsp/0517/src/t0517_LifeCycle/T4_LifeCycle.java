package t0517_LifeCycle;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LC4")
public class T4_LifeCycle extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 doGet메소드 입니다.");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 doPost메소드 입니다.");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 service메소드 입니다.");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("이곳은 init메소드 입니다.");
	}
	
	@Override
	public void destroy() {
		System.out.println("이곳은 destroy메소드 입니다.");
	}
	
	@PostConstruct
	public void initPostConstruct() {
		System.out.println("이곳은 @PostConstruct 어노테이션으로 선언된 메소드입니다.");
	}
	
	@PreDestroy
	public void destroyPreDestroy() {
		System.out.println("이곳은 @PreDestroy 어노테이션으로 선언된 메소드입니다.");
	}
}

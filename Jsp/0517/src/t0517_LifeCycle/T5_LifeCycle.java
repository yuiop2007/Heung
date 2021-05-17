package t0517_LifeCycle;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 웹 어플리케이션 감시한다. : ServletContextListener
@WebServlet("/LC5")
public class T5_LifeCycle extends HttpServlet implements ServletContextListener {
	
	// doGet메소드가 doPost메소드보다 앞선다.(기본이 doGet)
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 doGet메소드 입니다.");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 doPost메소드 입니다.");
	}
	
	// service메소드는 자바의 main()메소드와 같은 역할로 모든 기본메소드(doGet/doPost)보다 우선순위가 높다.
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 service메소드 입니다.");
	}
	
	// init() : 해당 서블릿에 접속하기 전에 수행시켜주는 메소드 
	@Override
	public void init() throws ServletException {
		System.out.println("이곳은 init메소드 입니다.");
	}
	
	// destroy() : 해당 서블릿에 접속하기 후에 수행시켜주는 메소드
	@Override
	public void destroy() {
		System.out.println("이곳은 destroy메소드 입니다.");
	}
	
	// @PostConstruct : 사용자 메소드를, 해당 서블릿의 실행보다, 먼저 실행시켜주기 위한 방책으로, init()메소드보다 앞선다.
	@PostConstruct
	public void initPostConstruct() {
		System.out.println("이곳은 @PostConstruct 어노테이션으로 선언된 메소드입니다.");
	}
	
	// @PreDestroy : 사용자 메소드를, 해당 서블릿의 작업이 종료되고, 마지막에 실행시켜주기 위한 방책으로, destroy()메소드보다 후에 처리된다.
	@PreDestroy
	public void destroyPreDestroy() {
		System.out.println("이곳은 @PreDestroy 어노테이션으로 선언된 메소드입니다.");
	}
	
	// contextInitialized() / contextDestroyed()
	// 해당 서블릿을 감지하는 기능을 하는 메소드로서 먼저 해당 서블릿을 web.xml에 등록시켜준후 기술해야한다.
	// contextInitialized() : 해당 서블릿 감시의 시작을 알림
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("이곳은 contextInitialized 메소드입니다.");
	}
	
  //contextDestroyed() : 해당 서블릿 감시의 종료를 알림
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("이곳은 contextDestroyed 메소드입니다.");
	}
}

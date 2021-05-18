package t0518_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoginDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	LoginVO vo = null;
	
	private String url = "jdbc:mysql://localhost:3306/works";
	private String user = "root";
	private String password = "1234";
	
	// 생성자(초기 생성시에 DB연동작업처리)
	public LoginDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 검색 실패~~");
		} catch (Exception e) {
			System.out.println("Database 연동 실패~~");
		}
	}
	
	// 사용한 객체 반납
	public void pstmtClose() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {}
		}
	}
	
	public void rsClose() {
		if(rs != null) {
			try {
				rs.close();
				pstmtClose();
			} catch (SQLException e) {}
		}
	}

	// 회원가입처리
	public int logDataInput(LoginVO vo) {
		int res = 0;
		try {
			sql = "insert into login values (default,?,?,?,default,default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getName());
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			System.out.println("SQL 에러");
			e.printStackTrace();
		}	finally {
			pstmtClose();
		}
		return res;
	}

	// 로그인 체크처리
	public String logDataCheck(String mid, String pwd) {
		String name = "";
		try {
			sql = "select name from login where mid=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) name = rs.getString("name"); 
		} catch (SQLException e) {
			System.out.println("SQL 에러");
			e.printStackTrace();
		} finally {
			rsClose();
		}
		return name;
	}
	
	// 전체 회원리스트 가져오기
	public List<LoginVO> logDataList() {
		List<LoginVO> vos = new ArrayList<LoginVO>();
		try {
			sql = "select * from login order by idx desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new LoginVO();
				
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name"));
				vo.setPoint(rs.getInt("point"));
				vo.setLastdate(rs.getString("lastdate"));
				
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SQL 에러");
			e.printStackTrace();
		} finally {
			rsClose();
		}
		return vos;
	}

	// 탈퇴 처리..
	public void logDataDelete(String mid) {
		try {
			sql = "delete from login where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류");
		} finally {
			pstmtClose();
		}
	}
	
	// 한건의 자료 검색처리
	public LoginVO logDataSearch(String mid) {
		vo = new LoginVO();
		
		try {
			sql = "select * from login where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			rs.next();
			
			vo.setMid(mid);
			vo.setPwd(rs.getString("pwd"));
			vo.setName(rs.getString("name"));
		} catch (SQLException e) {
			System.out.println("SQL 오류");
		} finally {
			rsClose();
		}
		
		return vo;
	}

	// 개인 정보 수정처리
	public int loginUpdate(LoginVO vo) {
		int res = 0;
		try {
			sql = "update login set pwd=? , name=? where mid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPwd());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getMid());
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			System.out.println("SQL 오류");
		} finally {
			pstmtClose();
		}
		return res;
	}

	// 최종 접속일 업데이트처리
	public void lastdateUpdate(String mid) {
		try {
			sql = "update login set lastdate = now() where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류");
		} finally {
			pstmtClose();
		}
	}
}

package t1_gagebu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GagebuDao {
	public Connection conn = null;
	public PreparedStatement pstmt = null;
	public ResultSet rs = null;
	String sql = "";
	GagebuVo vo = null;
	
	public GagebuDao() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/works";
			String user = "green";
			String password = "1234";
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 검색 실패");
		} catch (Exception e) {
			System.out.println("DB 연동 실패");
		}

	}
	
	// db close
	public void dbClose() {
		if(conn != null) {
			try {
				conn.close();
			} catch (Exception e) {}
		}
	}
	
	// stmt close
	public void pstmtClose() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {}
		}
	}
	
	// rs close
	public void rsClose() {
		if(rs != null) {
			try {
				rs.close();
				pstmtClose();
			} catch (Exception e) {}
		}
	}

	public void gInput(GagebuVo vo) {
		int balance;
		try {
			//기존 잔고 읽어오기
			sql = "select balance from gagebu order by idx desc limit 1";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) balance = rs.getInt("balance");
			else balance = 0;
			pstmtClose();
			
			//수입,지출인지 판단
			if(vo.getgCode().equals("+")) balance += vo.getPrice();
			else balance -= vo.getPrice();
			
			//입력된 자료를 테이블에 등록
//			pstmt = conn.createStatement();
			sql = "insert into gagebu values (default, default,?,?,?,?)";
//			pstmt.executeUpdate(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getgCode());
			pstmt.setInt(2, vo.getPrice());
			pstmt.setString(3, vo.getContent());
			pstmt.setInt(4, balance);
			pstmt.executeUpdate();
			System.out.println("자료가 입력되었습니다");
		} catch (SQLException e) {
			System.out.println("SQL 에러");
		} finally {
			rsClose();
		}
	}

	public ArrayList<GagebuVo> gList() {
		ArrayList<GagebuVo> vos = new ArrayList<GagebuVo>();
		
		try {
			sql = "select * from gagebu order by idx desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new GagebuVo();
				
				vo.setIdx(rs.getInt("idx"));
				vo.setWdate(rs.getString("wdate"));
				vo.setgCode(rs.getString("gCode"));
				vo.setPrice(rs.getInt("price"));
				vo.setContent(rs.getString("content"));
				vo.setBalance(rs.getInt("balance"));
				
				vos.add(vo);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		

		
		return vos;
	}

	public ArrayList<GagebuVo> gSearch(String wdate) {
		ArrayList<GagebuVo> vos = new ArrayList<GagebuVo>();
		
		try {
			sql = "select * from gagebu where replace(substr(wdate,1,10),'-','')=? order by idx desc"; // sql의 substr(변수,시작위치,꺼낼갯수)
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, wdate);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new GagebuVo();
				
				vo.setIdx(rs.getInt("idx"));
				vo.setWdate(rs.getString("wdate"));
				vo.setgCode(rs.getString("gCode"));
				vo.setPrice(rs.getInt("price"));
				vo.setContent(rs.getString("content"));
				vo.setBalance(rs.getInt("balance"));
				
				vos.add(vo);
			}
		} catch (Exception e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			rsClose();
		}
		
		
		return vos;
	}

	public void gDelete(int idx) {
		try {
			// 고유번호(idx)에 해당하는 gCode와 price를 구해온다.
			String gCode = "";
			int price = 0;
			sql = "select gCode,price from gagebu where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				gCode = rs.getString("gCode");
				price = rs.getInt("price");
			}
			if(pstmt != null) pstmt.close();
			
  		// 기존의 잔고를 읽어온다.
			int balance = 0;
			sql = "select idx,balance from gagebu order by idx desc limit 1";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				balance = rs.getInt("balance");
			}
			if(pstmt != null) pstmt.close();
			
			if(gCode.equals("+")) balance -= price;
			else balance += price;
			
			sql = "delete from gagebu where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			pstmtClose();
			
			sql = "select idx from gagebu order by idx desc limit 1";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			int imsiIdx = 0;
			if(rs.next()) {
				imsiIdx = rs.getInt("idx");
			}
			if(pstmt != null) pstmt.close();
			
			
			sql = "update gagebu set balance = ? where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, balance);
			pstmt.setInt(2, imsiIdx);
			pstmt.executeUpdate();
			pstmtClose();
			
			System.out.println("자료가 삭제처리 되었습니다.");
		} catch (Exception e) {
			System.out.println("오류 : "  + e.getMessage());
		} finally {
			 rsClose();
		}
	}

}

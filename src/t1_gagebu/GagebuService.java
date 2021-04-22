package t1_gagebu;

import java.util.ArrayList;
import java.util.Scanner;

public class GagebuService {
	Scanner sc = new Scanner(System.in);
	GagebuVo vo = new GagebuVo();
	GagebuDao dao = new GagebuDao();
	
	// 자료입력
	public void gInput() {
		while(true) {
			System.out.print("1.수입 2.지출 0.종료 > ");
			String sel = sc.next();
			
			if(sel.equals("1")) vo.setgCode("+");
			else if(sel.equals("2")) vo.setgCode("-");
			else break;
			
			System.out.print("금액 : "); vo.setPrice(sc.nextInt());
			System.out.print("내역 : "); vo.setContent(sc.next());
			dao.gInput(vo);
		}
	}

	// 전체조회
	public void gList(int su) {
		ArrayList<GagebuVo> vos = new ArrayList<GagebuVo>();
		String wdate = "";
		
		if(su==3) {
			vos = dao.gList();
		}
		else if(su==2) {
			System.out.print("검색할 날짜 입력(예:20210420) >> ");
			wdate = sc.next();
			vos = dao.gSearch(wdate);
		}
		
		String gCode = "";
		int balance = 0, sw = 0;
		
		System.out.println("============================================================");
		System.out.println("  거래날짜\t비고\t  금액\t\t 적요");
		System.out.println("------------------------------------------------------------");
		
		for(GagebuVo vo : vos) {
			if(sw == 0) {
				balance = vo.getBalance();
				sw = 1;
			}
			if(vo.getgCode().equals("+")) {
				gCode = "수입";
			}
			else {
				gCode = "지출";
			}
			System.out.println(vo.getWdate().substring(0, 10)+"\t"+gCode+"\t"+String.format("%,7d", vo.getPrice()) +"\t\t"+vo.getContent());
		}
		System.out.println("============================================================");
		System.out.println("현재 총 잔액 : " + String.format("%,7d", balance));
		System.out.println("============================================================");
	}

	// 삭제
	public void gDelete() {
		ArrayList<GagebuVo> vos = new ArrayList<GagebuVo>();
		String wdate = "";
		
		System.out.print("검색할 날짜를 입력하세요?(예:20210420) ==>");
		wdate = sc.next();
		vos = dao.gSearch(wdate);
		
		String gCode = "";
		
		System.out.println("============================================================");
		System.out.println("고유번호\t거래날짜\t\t비고\t  금액\t\t 적요");
		System.out.println("------------------------------------------------------------");
		
		for(GagebuVo vo : vos) {
			if(vo.getgCode().equals("+")) {
				gCode = "수입";
			}
			else {
				gCode = "지출";
			}
			System.out.println(vo.getIdx()+"\t"+vo.getWdate().substring(0, 10)+"\t"+gCode+"\t"+String.format("%,7d", vo.getPrice()) +"\t\t"+vo.getContent());
		}
		System.out.println("============================================================");
		System.out.print("삭제할 고유번호를 선택하세요?(종료:0) >>");
		int idx = sc.nextInt();
		if(idx == 0) return;
		dao.gDelete(idx);
	}
	
}

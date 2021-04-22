package t1_gagebu;

import java.util.Scanner;

public class GagebuRun {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		GagebuService service = new GagebuService();
		GagebuDao dao = new GagebuDao();
		
		boolean run = true;
		
		System.out.println("=========== 가 계 부 프 로 그 램(v1.0)===========");
		while(run) {
			System.out.println("------------------------------------------------");
			System.out.println("1.입력 2.날짜조회 3.전체조회 4.수정 5.삭제 0.종료");
			System.out.println("------------------------------------------------");
			System.out.print(">> ");
			int no = sc.nextInt();
			
			switch(no) {
				case 1: //자료입력
					service.gInput();
					break;
				case 2: //날짜조회
					service.gList(2);
					break;
				case 3: //전체조회
					service.gList(3);
					break;
				case 4: //수정
//					service.gUpdate();
					break;
				case 5: //삭제
					service.gDelete();
					break;
				default:
					run = false;
					break;
			}
		}
		
		System.out.println("================================================");
		
		dao.dbClose();
		sc.close();
	}
}

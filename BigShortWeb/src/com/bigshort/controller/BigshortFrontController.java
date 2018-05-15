package com.bigshort.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.action.*;
import com.bigshort.action.board.*;
import com.bigshort.action.member.*;
import com.bigshort.action.mypage.DelCheckAction;
import com.bigshort.action.mypage.MemberDeleteAction;
import com.bigshort.action.mypage.MyIndexAction;
import com.bigshort.action.mypage.MyUpdateAction;
import com.bigshort.action.mypage.PwUpdateAction;
import com.bigshort.action.zone.*;


/**
 * Servlet implementation class BzipollFrontController
 */
@WebServlet("/BigshortFrontController")
public class BigshortFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BigshortFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    // doGet , doPost 모두 service() 통해서 작동
	protected void service(HttpServletRequest request, HttpServletResponse respnse) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			
			//인터페이스
			Action action = null;
			
			// 페이지 이동방법 결정(Forward, sendRedirect)
			ActionForward forward = null;
			
			String uri = request.getRequestURI(); // 주소를 가져온다. /shose/index.bizpoll 
			String ctx = request.getContextPath(); // Context만 가져온다 '/shose ' 만 가져온다.
			String command = uri.substring(ctx.length());
			
			System.out.println("uri ====> "+ uri );
			System.out.println("ctx ====> "+ ctx );
			System.out.println("command ====> "+ command );
			
			
			//======액션 매핑======
			// 실제로 동작하는 곳, 하나의 Servlet에서 URL을 읽어 해당 기능을 구현
			if(command.equals("/index.bigshort")) { //메인페이지
				action = new IndexAction();//action은 인터페이스: 다형성을 이용해서 해당 액션기능을 action에 넣는다
				forward = action.excute(request, respnse); // 공통 분기작업에 보낼 forward
			}else if(command.equals("/constract.bigshort")) { // 회원가입 동의페이지
				action = new ConstractAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/loginck.bigshort")) { // 로그인 섹션
				action = new LoginCkAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/logout.bigshort")) { // 로그아웃 액션
				action = new LoginOutAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/boardInsertView.bigshort")) { // 새로운 게시글 등록 사이트
				action = new BoardInsertViewAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/boardinsertsave.bigshort")) { // 새로운 게시글 등록 할때 타는 액션
				action = new BoardInsertSaveAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/listAll.bigshort")) { // 게시판 목록 보는 액션
				action = new ListAllAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/modifyview.bigshort")) { // 수정 게시판 액션
				action = new ModifyViewAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/boardupdate.bigshort")) { // 수정 누르면 타는 액션
				action = new BoardUpdateAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/join.bigshort")) { // 회원가입 액션
				action = new JoinAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/gwangsandetail.bigshort")) { // 광산구 세부페이지 액션
				action = new GwangSanDetailAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/bukgudetail.bigshort")) { // 북구 세부페이지 액션
				action = new BukGuDetailAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/namgudetail.bigshort")) { // 남구 세부페이지 액션
				action = new NamGuDetailAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/donggudetail.bigshort")) { // 동구 세부페이지 액션
				action = new DongGuDetailAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/seogudetail.bigshort")) { // 서구 세부페이지 액션
				action = new SeoGuDetailAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/memajax.bigshort")) { // 수정 누르면 타는 액션
				action = new MemberAjaxAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/meminsert.bigshort")) { // 수정 누르면 타는 액션
				action = new MemberInsertAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/boardbody.bigshort")) { // 상세 페이지 타는 액션
				action = new BoardBodyAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/modifydelete.bigshort")) { // 상세글 삭제하는 액션
				action = new ModifyDeleteAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/modifyview.bigshort")) { // 상세글 수정에서 필요한 데이더를 가져오는 액션
				action = new ModifyViewAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/replyadd.bigshort")) { // 리플 다는 액션
				action = new ReplyAddAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/replydel.bigshort")) { // 리플 삭제 하는 액션
				action = new ReplyDelAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/sweetadd.bigshort")) { // 게시판 좋아요 타는 액션
				action = new SweetAddAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/sweetcount.bigshort")) { // 게시판 좋아요 개수
				action = new SweetCountAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/commentlist.bigshort")) { // 댓글목록을 보기 위한 액션
				action = new CommentListAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/download.bigshort")) { // 다운로드를 받기 위한 액션
				action = new DownLoadAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/commentsize.bigshort")) { // 댓글 수를 파악하기위한 액션
				action = new CommentSizeAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/myIndex.bigshort")) { // 마이페이지를 가기위한 액션
				action = new MyIndexAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/myUpdate.bigshort")) { // 마이페이지_정보수정을 가기위한 액션
				action = new MyUpdateAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/pwUpdate.bigshort")) { // 마이페이지_비밀번호 변경을 가기위한 액션
				action = new PwUpdateAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/delCheck.bigshort")) { // 마이페이지_비밀번호 변경을 가기위한 액션
				action = new DelCheckAction();
				forward = action.excute(request, respnse); 
			}else if(command.equals("/memdelete.bigshort")) { // 멤버 삭제를 위한 액션
				action = new MemberDeleteAction();
				forward = action.excute(request, respnse); 
			}
			
			
			//=======공통 분기 작업 =======
			if(forward != null) {
				if(forward.isRedirect()) {
					respnse.sendRedirect(forward.getPath());
				}else {
					RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
					rd.forward(request, respnse);
				}
			}
	
	}

}

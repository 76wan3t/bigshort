package com.bigshort.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;
import com.bigshort.action.IndexAction;
import com.bigshort.action.LoginCkAction;
import com.bigshort.action.LoginOutAction;
import com.bigshort.action.board.BoardBodyAction;
import com.bigshort.action.board.BoardInsertSaveAction;
import com.bigshort.action.board.BoardInsertViewAction;
import com.bigshort.action.board.BoardUpdateAction;
import com.bigshort.action.board.ListAllAction;
import com.bigshort.action.board.ModifyDeleteAction;
import com.bigshort.action.board.ModifyViewAction;
import com.bigshort.action.board.ReplyAddAction;
import com.bigshort.action.board.ReplyDelAction;
import com.bigshort.action.board.SweetAddAction;
import com.bigshort.action.board.SweetCountAction;
import com.bigshort.action.member.ConstractAction;
import com.bigshort.action.member.JoinAction;
import com.bigshort.action.member.MemberAjaxAction;
import com.bigshort.action.member.MemberInsertAction;
import com.bigshort.action.zone.BukGuDetailAction;
import com.bigshort.action.zone.DongGuDetailAction;
import com.bigshort.action.zone.GwangSanDetailAction;
import com.bigshort.action.zone.NamGuDetailAction;
import com.bigshort.action.zone.SeoGuDetailAction;


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
			}else if(command.equals("/join.bigshort")) { // 수정 누르면 타는 액션
				action = new JoinAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/gwangsandetail.bigshort")) { // 수정 누르면 타는 액션
				action = new GwangSanDetailAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/bukgudetail.bigshort")) { // 수정 누르면 타는 액션
				action = new BukGuDetailAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/namgudetail.bigshort")) { // 수정 누르면 타는 액션
				action = new NamGuDetailAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/donggudetail.bigshort")) { // 수정 누르면 타는 액션
				action = new DongGuDetailAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/seogudetail.bigshort")) { // 수정 누르면 타는 액션
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
			}else if(command.equals("/modifyview.bigshort")) { // 상세글 수정 페이지 액션
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

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
import com.bigshort.action.member.ConstractAction;


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
			}else if(command.equals("/logout.bigshort")) { // 로그인 섹션
				action = new LoginOutAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/boardInsertView.bigshort")) { // 로그인 섹션
				action = new BoardInsertViewAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/boardinsertsave.bigshort")) { // 로그인 섹션
				action = new BoardInsertSaveAction();
				forward = action.excute(request, respnse);
			}else if(command.equals("/listAll.bigshort")) { // 로그인 섹션
				action = new ListAllAction();
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

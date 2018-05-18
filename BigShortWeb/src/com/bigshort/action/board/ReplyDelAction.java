package com.bigshort.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.bigshort.DAO.ReplyDAO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class ReplyDelAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		/*int rno = Integer.parseInt(request.getParameter("rno"));
		String bno = request.getParameter("bno");
		String url = "boardbody.bizpoll?bno="+bno;
		System.out.println("bno = " + bno);
		System.out.println("rno = "+ rno);
		 
		ReplyDAO rDao = ReplyDAO.getInstance();
		int result = rDao.replyDelete(rno);
		
		if(result > 0 ) {
			
			System.out.println("삭제 성공");
			
		}else {
			
			System.out.println("삭제 실패");
		}*/
		
		
		String url = "boardbody.bigshort";
		
		int rno = Integer.parseInt(request.getParameter("rno"));
		
		System.out.println(rno);
		
		ReplyDAO rDao = ReplyDAO.getInstance();
		int result = rDao.replyDelete(rno);
		
		if(result > 0 ) {
			
			System.out.println("삭제 성공");
			
		}else {
			
			System.out.println("삭제 실패");
		}
		
		JSONObject jjb = new JSONObject();
		
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().println(jjb);
		
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
	
		return null;
	}

}

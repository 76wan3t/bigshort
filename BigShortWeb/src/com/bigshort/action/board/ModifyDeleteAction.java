package com.bigshort.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.bigshort.DAO.BoardDAO;
import com.bigshort.DAO.ReplyDAO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class ModifyDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = null; //"boardlist.bizpoll";
		
		String bno = request.getParameter("bno");
		Integer num = Integer.parseInt(bno);
		
		System.out.println(num);
		
		BoardDAO bDao = BoardDAO.getInstance();
		int result = bDao.modifDelete(num);
		ReplyDAO rDao = ReplyDAO.getInstance();
		rDao.replyAllDelete(num);
		
		if (result > 0) {
			
			System.out.println("삭제 성공");
			url = "listAll.bigshort?bno="+num;
			
		}else {
			
			System.out.println("삭제 실패");
			url = "boardbody.bigshort?bno="+num;
			
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

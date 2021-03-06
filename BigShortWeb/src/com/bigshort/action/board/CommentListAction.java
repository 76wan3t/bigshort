package com.bigshort.action.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.DAO.ReplyDAO;
import com.bigshort.DTO.ReplyDTO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class CommentListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "board/commendlist.jsp";
		
		String bno = request.getParameter("bno");
		
		System.out.println("bno : " + bno);
		
		
		int num =  Integer.parseInt(bno);
		
		
		//상세페이지 댓글 출력하기
		
				ArrayList<ReplyDTO> list = new ArrayList<>();
				ReplyDAO rDao = ReplyDAO.getInstance();
				list = rDao.replyList(num);
				request.setAttribute("replylist", list);
				
				
				ActionForward forward = new ActionForward();
				
				forward.setPath(url);
				forward.setRedirect(false); 
			
				return forward;
	}

}

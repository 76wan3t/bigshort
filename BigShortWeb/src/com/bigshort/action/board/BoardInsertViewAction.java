package com.bigshort.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class BoardInsertViewAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "board/newboard.jsp";
		
		String mid = request.getParameter("mid");

		System.out.println("mid = " + mid);
		
		request.setAttribute("mid", mid);
	
		ActionForward forward = new ActionForward();
	
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}

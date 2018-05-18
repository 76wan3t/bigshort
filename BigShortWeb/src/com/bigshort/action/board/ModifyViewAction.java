package com.bigshort.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;
import com.bigshort.DAO.BoardDAO;
import com.bigshort.DTO.BoardDTO;

public class ModifyViewAction  implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BoardDTO bDto = null;
		
		String url = "board/modifyboard.jsp";
		
		System.out.println(url);
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		bDto = bDao.modifyList(bno);
		request.setAttribute("bDto", bDto);
		
		ActionForward forward = new ActionForward();
		

		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}

package com.bigshort.action.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.DAO.MemberDAO;
import com.bigshort.DTO.MemberDTO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class MyUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "mypage/myUpdate.jsp";
		
		String mid = request.getParameter("mid");
		MemberDAO mDao = MemberDAO.getInstance();
		
		System.out.println(mid);
		
		MemberDTO mDto = mDao.memselect(mid);
		request.setAttribute("member", mDto);
		
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}
}

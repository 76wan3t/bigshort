package com.bigshort.action.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bigshort.DAO.MemberDAO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class MemberDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mid = request.getParameter("id");
		String mpw = request.getParameter("pw");
		String url;

		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.memdelet(mid, mpw);
		
		if(result > 0) {
			session.removeAttribute("loginUser");
			url = "index.bigshort";
		}else {
			url = "/memdelete.bigshort";
		}
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}
}

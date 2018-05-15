package com.bigshort.action.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.DAO.MemberDAO;
import com.bigshort.DTO.MemberDTO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class UpdatePwAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url;
		
		String mid = request.getParameter("id");
		String mpw = request.getParameter("newpw");
		System.out.println(mid + "," + mpw);
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = new MemberDTO(mid, mpw);
		
		int result = mDao.memPwUpdate(mDto);
		if(result > 0) {
			url = "myIndex.bigshort";
		}else {
			url = "pwUpdate.bigshort";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}

package com.bigshort.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.DAO.MemberDAO;
import com.bigshort.DTO.MemberDTO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class MemberInsertAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url;
		
		String mid = request.getParameter("id");
		String mpw = request.getParameter("pass");
		String mname = request.getParameter("name");
		String mphone = request.getParameter("phone");
		String memail = request.getParameter("mail");
		String memail2 = request.getParameter("mail2");
		//선택사항
		String brn1 = request.getParameter("brn1");
		String brn2 = request.getParameter("brn2");
		String brn3 = request.getParameter("brn3");
				
		String mbisnumber = brn1 + brn2 + brn3;
		String mbisname = request.getParameter("sname");
		String mbisphone = request.getParameter("sphone");
		String mjusonum = request.getParameter("postcode");
		String mjuso = request.getParameter("address");
		String mjuso2 = request.getParameter("address2");
		
		System.out.println(mid + mpw + mname + mphone + memail + memail2 + mbisnumber + mbisname + 
				mbisphone + mjusonum + mjuso + mjuso2);
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = new MemberDTO(mid, mpw, mname, mphone, mbisname, mbisnumber, mbisphone, mjusonum, mjuso, mjuso2, memail, memail2);
		int result = mDao.memInsert(mDto);
		
		if(result > 0) {
			System.out.println("회원등록 성공");
			url = "index.bigshort";
		}else {
			System.out.println("회원등록 실패");
			url = "join.bigshort";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}

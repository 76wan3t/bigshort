package com.bigshort.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.bigshort.DAO.MemberDAO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class MemberAjaxAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mid = request.getParameter("id");
		System.out.println(mid);
		
		if(mid != null) {
			if(mid.trim().equals("") == false) {
				MemberDAO mDao = MemberDAO.getInstance();
				int flag = mDao.memIdCheck(mid);
				System.out.println(flag);
				
				JSONObject jObj = new JSONObject();
				jObj.put("flag", flag);
				jObj.put("id", mid);
				
				response.setContentType("application/x-json; charset=UTF-8");
				response.getWriter().println(jObj);
				
			}
		}
		return null;
	}
	

}

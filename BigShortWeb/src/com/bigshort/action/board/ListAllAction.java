package com.bigshort.action.board;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;
import com.bigshort.DTO.PageMakerDTO;
import com.bigshort.DAO.BoardDAO;
import com.bigshort.DTO.BoardDTO;
import com.bigshort.DTO.CriteriaDTO;

public class ListAllAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/listAll.jsp";
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("페이지 번호" + page);
		
		criDto.setPage(page);
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> list = null;
		list = bDao.listAll(criDto); // = list (게시글 목록)
		
		
		request.setAttribute("boardlist", list);
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		
		
		pageMaker.setCriDto(criDto);
		int bodycount = bDao.totalCount(criDto);
		pageMaker.setTotalCount(bodycount); // 게시글 전체 갯수를 찾아준다.
		
		String flag = "0";
		
		request.setAttribute("pageMaker", pageMaker);
		request.setAttribute("flag", flag);
		request.setAttribute("bodycount", bodycount);
		
		//오늘 날짜를 보내준다.
		
		Date today = new Date();
		request.setAttribute("today", today);
		
		
		ActionForward forward = new ActionForward();
	
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}

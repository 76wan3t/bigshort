package com.bigshort.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;
import com.bigshort.DAO.BoardDAO;
import com.bigshort.DAO.SearchDAO;
import com.bigshort.DTO.BoardDTO;
import com.bigshort.DTO.CriteriaDTO;
import com.bigshort.DTO.PageMakerDTO;

public class SearchAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<BoardDTO> list = null;
		SearchDAO sDao = SearchDAO.getInstance();
		//String url = "boardbody.bizpoll";
		
		String select = request.getParameter("sfl");
		String search = request.getParameter("stx");
		
		System.out.println(select + " , " + search);
		
		
		
		String url = "board/listAll.jsp";
		
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("페이지 번호" + page);
		criDto.setPage(page);
		
		criDto.setSelect(select);
		criDto.setSearch(search);
		list = sDao.searchTitle(criDto); // = list (게시글 목록)
		
		BoardDAO bDao = BoardDAO.getInstance();
		request.setAttribute("boardlist", list);
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		int bodycount = bDao.totalCount(criDto);
		
		System.out.println("전체 카운트 " + bodycount);
		
		pageMaker.setTotalCount(bodycount);
		
		int count = list.size();
		String flag = "1";
		
		request.setAttribute("sfl", select);
		request.setAttribute("stx", search);
		
		request.setAttribute("flag", flag);
		request.setAttribute("bodycount", bodycount);
		request.setAttribute("pageMaker", pageMaker);
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
	
		return forward;
	}

}

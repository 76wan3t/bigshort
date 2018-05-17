package com.bigshort.action.zone;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.DAO.ProductDAO;
import com.bigshort.DTO.ProductDTO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class GwangSanDetailAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "sebupage/gwangsan.jsp";
		
		ProductDTO pDto = new ProductDTO();
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> list = pDao.gwangsanList();
		
		request.setAttribute("gwangsanlist", list);
		
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}

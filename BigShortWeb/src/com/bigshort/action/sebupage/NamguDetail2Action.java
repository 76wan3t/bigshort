package com.bigshort.action.sebupage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigshort.DAO.ProductDAO;
import com.bigshort.DTO.ProductDTO;
import com.bigshort.action.Action;
import com.bigshort.action.ActionForward;

public class NamguDetail2Action implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "sebupage/product.jsp";
		
		String dongname = request.getParameter("dongname");
		
		System.out.println("dongname = " + dongname);
		
		
		ProductDTO pDto = new ProductDTO();
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> list = pDao.namguList(dongname);
		
		
		request.setAttribute("product", list);
		
		pDto = pDao.namguMean(dongname);
		
		request.setAttribute("pDto", pDto);
		
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}

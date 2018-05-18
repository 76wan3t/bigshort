package com.bigshort.DAO;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bigshort.DTO.ProductDTO;
import com.bigshort.mybatis.SqlMapConfig;



public class ProductDAO {
	
		// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
		//mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
	    //신상품 조회
		
	    public List<ProductDTO> imagelist() {
	    	
	    	List<ProductDTO> list = new ArrayList<>();
	    	
	    	sqlSession = sqlSessionFactory.openSession();
	    	
	    	try {
	    		
	    		list = sqlSession.selectList("newpdtview");
	    		
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
	    	
	    	return list;
	    }
	    
	    
	    private static ProductDAO instance = new ProductDAO();
		public static ProductDAO getInstance() {
			return instance;
		}

		public List<ProductDTO> gwangsanList(String dongname) {
		
			List<ProductDTO> list = new ArrayList<>();
			sqlSession = sqlSessionFactory.openSession();
			
			
			try {
				list = sqlSession.selectList("gwangsanlist", dongname);
				
						
					System.out.println(list.size());	
			
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			
			return list;
			
		}
		
		public ProductDTO gwangsanMean(String dongname) {
			ProductDTO pDto = new ProductDTO();
			
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				
				pDto = sqlSession.selectOne("gwangsanmean",dongname);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			
			
			
			
			
			return pDto;
			
		}
		
		

}

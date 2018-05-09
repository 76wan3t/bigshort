package com.bigshort.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bigshort.DTO.BoardDTO;
import com.bigshort.DTO.CriteriaDTO;
import com.bigshort.mybatis.SqlMapConfig;

public class SearchDAO {
		// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();

		//mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
		//신상품 조회
	
		private static SearchDAO instance = new SearchDAO();
		public static SearchDAO getInstance() {
			return instance;
		}
		
		public List<BoardDTO> searchTitle(CriteriaDTO cDto) {
			
			sqlSession = sqlSessionFactory.openSession();
			
			List<BoardDTO> list = null;
		
			try {
				
				list = sqlSession.selectList("searchTitle", cDto);
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}finally {
				
				sqlSession.close();
				
			}
			return list;
		}
		
		
}

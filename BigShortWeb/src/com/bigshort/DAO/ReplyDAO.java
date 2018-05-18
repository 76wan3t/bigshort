package com.bigshort.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bigshort.DTO.ReplyDTO;
import com.bigshort.common.DBManager;
import com.bigshort.mybatis.SqlMapConfig;

public class ReplyDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();

	//mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;
    //신상품 조회
	
	private static ReplyDAO instance = new ReplyDAO();
	public static ReplyDAO getInstance() {
		return instance;
	}
	
	public ArrayList<ReplyDTO> replyList(int bno) {
		
		/*sqlSession = sqlSessionFactory.openSession();*/
		
		ArrayList<ReplyDTO> list = new ArrayList<>();
		 
	
		
		try {
			
		/*	list = sqlSession.selectList("replyList", bno);*/
			
			conn = DBManager.getConnection();
			
			String sql=" SELECT * FROM tblreply WHERE bno = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
    		
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				 int rno = rs.getInt("rno");
				 String content = rs.getString("content");
				 String writer = rs.getString("writer");
				 Date regdata = rs.getDate("regdata");
				 bno = rs.getInt("bno");
				 
				 ReplyDTO rDto = new ReplyDTO(rno, content, writer, regdata, bno);
				 list.add(rDto);
				
			}

			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			//sqlSession.close();
			DBManager.close(conn, pstmt, rs);
			
		}
		return list;
	}
	
	
	
	
		public int replyInsert(int bno, String connect, String mid) {
		
		sqlSession = sqlSessionFactory.openSession();
		
		int result=0;
	
		try {
			
			ReplyDTO rDto = new ReplyDTO(bno, connect, mid);
			
			result = sqlSession.insert("replyinsert", rDto);
			
			sqlSession.commit();
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			sqlSession.close();
			
		}
		return result;
	}
		
		
		public int replyDelete(int rno) {
			
			sqlSession = sqlSessionFactory.openSession();
			
			int result=0;
		
			try {
				
				result = sqlSession.delete("replydelete", rno);
				
				sqlSession.commit();
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}finally {
				
				sqlSession.close();
				
			}
			return result;
		}
		
		public int replyAllDelete(int bno) {
			
			sqlSession = sqlSessionFactory.openSession();
			
			int result=0;
		
			try {
				
				result = sqlSession.delete("replyAllDelete", bno);
				
				sqlSession.commit();
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}finally {
				
				sqlSession.close();
				
			}
			return result;
		}

}

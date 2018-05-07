package com.bigshort.DAO;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.bigshort.mybatis.SqlMapConfig;
import com.bigshort.DTO.BoardDTO;

public class BoardDAO {
				// MyBatis 세팅값 호출
				SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
			
				//mapper에 접근하기 위한 SqlSession
				SqlSession sqlSession;
			    //신상품 조회
				
				private static BoardDAO instance = new BoardDAO();
				public static BoardDAO getInstance() {
					return instance;
				}

				
				
				public int insertBoard(BoardDTO bDto) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					int ruselt = 0;
				
					
					try {
						
						ruselt = sqlSession.insert("insertBoard", bDto);
						
						sqlSession.commit();
						
						if (ruselt > 0 ) {
							
							System.out.println("등록 성공");
							
						}else {
							
							System.out.println("등록 실패");
							
						}
						
						
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return ruselt;
				}
				
				
				public BoardDTO modifyList(int bno) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					List<BoardDTO> list = null;
					BoardDTO bDto = new BoardDTO();
					
					try {
						
						list = sqlSession.selectList("modfiyList", bno);
						
						for (BoardDTO boardDTO : list) {
							bno = boardDTO.getBno();
							String title = boardDTO.getTitle();
							String content = boardDTO.getContent();
							String writer = boardDTO.getWriter();
							Date regdate = boardDTO.getRegdate();
							int viewcnt = boardDTO.getViewcnt();
							String  filename = boardDTO.getFilename();
							int filesize = boardDTO.getFilesize();
							
							bDto = new BoardDTO(bno, title, content, writer, regdate, viewcnt, filename, filesize);
							
							System.out.println(bno + " , " + title + " , " + content + " , " + writer + " , " + regdate + " , " + viewcnt + " , " + filename + " , " + filesize);
							
						}
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return bDto;
				}
				
				
				
					public int modifUpdate(BoardDTO bDto) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					int rusult = 0;
				
					
					try {
						
						rusult = sqlSession.update("modfiyUpdate", bDto);
						sqlSession.commit();
						
						
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return rusult;
				}
}

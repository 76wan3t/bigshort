package com.bigshort.DAO;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bigshort.DTO.BoardDTO;
import com.bigshort.DTO.CriteriaDTO;
import com.bigshort.DTO.NextPreDTO;
import com.bigshort.mybatis.SqlMapConfig;

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

				public List<BoardDTO> listAll(CriteriaDTO criDto) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					List<BoardDTO> list = null;
				
					
					try {
						
						list = sqlSession.selectList("listCriteria", criDto);
						
						for (BoardDTO boardDTO : list) {
							System.out.print(boardDTO.getBno()+" , ");
							System.out.print(boardDTO.getTitle()+" , ");
							System.out.print(boardDTO.getWriter()+" , ");
							System.out.print(boardDTO.getRegdate()+" , ");
							System.out.print(boardDTO.getViewcnt()+" , ");
							System.out.println();
							
						}
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return list;
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
				
				public int modifDelete(Integer bno) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					int rusult = 0;
				
					
					try {
						
						rusult = sqlSession.delete("modifDelete", bno);
						sqlSession.commit();
						
						
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return rusult;
				}
				
				public List<BoardDTO> bodylist(int bno) {
					
					sqlSession = sqlSessionFactory.openSession();
					
					List<BoardDTO> list = null;
				
					
					try {
						
						list = sqlSession.selectList("bodylist", bno);
						
						for (BoardDTO boardDTO : list) {
							System.out.print(boardDTO.getBno()+" , ");
							System.out.print(boardDTO.getTitle()+" , ");
							System.out.print(boardDTO.getContent()+" , ");
							System.out.print(boardDTO.getWriter()+" , ");
							System.out.print(boardDTO.getRegdate()+" , ");
							System.out.print(boardDTO.getViewcnt()+" , ");
							System.out.println();
							
						}
						
						
					} catch (Exception e) {
						
						e.printStackTrace();
						
					}finally {
						
						sqlSession.close();
						
					}
					return list;
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
					
					public int totalCount(CriteriaDTO criDto) {
						
						sqlSession = sqlSessionFactory.openSession();
						
						
						int result = 0;
						
						try {
							
							result = sqlSession.selectOne("countPaging",criDto);
							
							
						} catch (Exception e) {
							
							e.printStackTrace();
							
						}finally {
							
							sqlSession.close();
							
						}
						
						return result;
						
					}
					public int bodylistRead(int bno, HttpSession countSession) {
						
						sqlSession = sqlSessionFactory.openSession();
							
						int result = 0;
						
					
						
						try {
							
							long update_time = 0;
							
							
							// 조회수를 증가 할 때생기는 read_time_게시글번호가 없으면
							// 현재 처음 조회수를 1증가하는 경우임
							if(countSession.getAttribute("read_time_"+bno) != null) {
								
								update_time = (long)countSession.getAttribute("read_time_"+bno);
							}
							
							long current_time = System.currentTimeMillis(); // 현재 시간을 읽어 온다.
							
							
							//현재시간과 조회수 1증가한 시간을 비교해서 24시간(1일)이 지났으면
							// 조회수 1증가
							if(current_time - update_time > 8640 * 1000) { // 5 * 1000 = 5초 5초 뒤에 조회수가 증가한다.
								
								result = sqlSession.update("bodylistRead", bno);
								sqlSession.commit();
								
								// 조회수 1증가한 시간을 session에 담는다.
								countSession.setAttribute("read_time_"+bno, current_time);
							}
							
						} catch (Exception e) {
							
							e.printStackTrace();
							
						}finally {
							
							sqlSession.close();
							
						}
						return result;
					}
					public int countUpdate(BoardDTO bDto) {
						
						sqlSession = sqlSessionFactory.openSession();
						
						int rusult = 0;
					
						
						try {
							
							rusult = sqlSession.update("countUpdate", bDto);
							sqlSession.commit();
							
							
							
							
						} catch (Exception e) {
							
							e.printStackTrace();
							
						}finally {
							
							sqlSession.close();
							
						}
						return rusult;
					}
					
					
					public List<NextPreDTO> bodyNextBody(int bno) {
						
						sqlSession = sqlSessionFactory.openSession();
							
						List<NextPreDTO> list = new ArrayList<>();
						
						try {
							
							list = sqlSession.selectList("bodynext", bno);
							
							
						} catch (Exception e) {
							
							e.printStackTrace();
							
						}finally {
							
							sqlSession.close();
							
						}
						return list;
					}
}

package com.bigshort.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bigshort.DTO.MemberDTO;
import com.bigshort.mybatis.SqlMapConfig;


public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result, flag;
	
	// MyBatis 세팅값 호출
			SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		
			//mapper에 접근하기 위한 SqlSession
			SqlSession sqlSession;
		    //신상품 조회
	
	// ID 중복 체크
	
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}

	
	
	//아이디 체크
	public int memLogin(MemberDTO mDto) {
		
		sqlSession = sqlSessionFactory.openSession();
		
		List<MemberDTO> list = null;
		
		try {
			
			list = sqlSession.selectList("memlogin", mDto);
			
			
			System.out.println(list.size());
			
			if(list.size() > 0) {
				
				System.out.println("로그인 성공");
				
				flag = 1;
				
			}else {
				
				System.out.println("로그인 실패");
				
				flag = 0;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			sqlSession.close();
			
		}
		return flag;
	}

	
	
public MemberDTO sessionLogin(MemberDTO mDto) {
		
		List<MemberDTO> list = null;
		
		sqlSession = sqlSessionFactory.openSession();
		
		
		try {
			
			list = sqlSession.selectList("sessionLogin", mDto);
			
			for (MemberDTO memberDTO : list) {
				
				String mid = memberDTO.getMid();
				String mpw = memberDTO.getMpw();
				String mname = memberDTO.getMname();
				String mphone = memberDTO.getMphone();
				String mjusonum = memberDTO.getMjusonum();
				String mjuso = memberDTO.getMjuso();
				String mjuso2 = memberDTO.getMjuso2();
				String mbisname = memberDTO.getMbisname();
				String mbisnumber = memberDTO.getMbisnumber();
				String memail = memberDTO.getMemail();
				String memail2 = memberDTO.getMemail2();
				Date regdate = memberDTO.getRegdate();
				
				mDto = new MemberDTO(mid, mpw, mname, mphone, mbisname, mbisnumber, mjusonum, mjuso, mjuso2, memail, memail2, regdate);
			
			
				System.out.println(" 이름 = " + mname);
			
			}
			
			
		
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			sqlSession.close();
			
		}
		return mDto;
	}

	public int memIdCheck(String memberid) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			List<MemberDTO> mid = sqlSession.selectList("memidck",memberid);
			System.out.println("listSize: " + mid.size());
			
			if (mid.size() == 1) {
				System.out.println("중복된 id입니다.");
				flag = 0;
			} else {
				System.out.println("사용가능한 id입니다.");
				flag = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return flag;
	}
	
	public int memInsert(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			result = sqlSession.insert("meminsert", mDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return result;
	}
	
		// 멤버 삭제
	
	public int memdelet(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.delete("memdelete", mDto);
			System.out.println("result: " + result);
			
			sqlSession.commit();
			
			if(result > 0) {
				System.out.println("삭제 성공");
			}else {
				System.out.println("삭제 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return result;
	}
	
	//멤버 비밀번호 변경
	
	public int memPwUpdate(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("pwUpdate", mDto);
			System.out.println("result: " + result);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	public MemberDTO memselect(String mid) {
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = null;
		try {
			System.out.println("mDto mid : " + mid);
			mDto = sqlSession.selectOne("memberselect", mid);
			
			System.out.println(mDto.getMid());
			System.out.println(mDto.getMname());
			System.out.println(mDto.getMphone());
			System.out.println(mDto.getMemail());
			System.out.println(mDto.getMemail2());
			System.out.println(mDto.getMbisnumber());
			System.out.println(mDto.getMbisname());
			System.out.println(mDto.getMbisphone());
			System.out.println(mDto.getMjusonum());
			System.out.println(mDto.getMjuso());
			System.out.println(mDto.getMjuso2());
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return mDto;
	}
	
	public int memUpdate(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("memupdate", mDto);
			sqlSession.commit();
			System.out.println("result : " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return result;
	}
}

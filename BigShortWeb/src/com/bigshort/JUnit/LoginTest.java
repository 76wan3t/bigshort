package com.bigshort.JUnit;

import static org.junit.Assert.*;

import org.junit.Test;

import com.bigshort.DAO.MemberDAO;
import com.bigshort.DTO.MemberDTO;

public class LoginTest {

	@Test
	public void test() {
		String id="stopline";
		String pw="1234";
		
		MemberDTO mDto = new MemberDTO();
		MemberDAO mDao = MemberDAO.getInstance();
		int flag = mDao.memLogin(mDto);
		
		if(flag > 0) {
			System.out.println("방문을 환영합니다.");
		}  else {
			System.out.println("등록된 회원이 아닙니다.");
		}
	}

}

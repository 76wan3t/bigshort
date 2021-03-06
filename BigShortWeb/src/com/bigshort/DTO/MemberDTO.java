package com.bigshort.DTO;

import java.sql.Date;

public class MemberDTO {
	private String mid;
	private String mpw;
	private String mname ;
	private String mphone ;
	private String mbisname;
	private String mbisnumber;
	private String mbisphone;
	private String mjusonum;
	private String mjuso;
	private String mjuso2;
	private String memail;
	private String memail2;
	private Date regdate;
	
	public MemberDTO(){}
	
	
	public MemberDTO(String mid, String mpw, String mname, String mphone, String mbisname, String mbisnumber,
			String mbisphone, String mjusonum, String mjuso, String mjuso2, String memail, String memail2) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.mbisname = mbisname;
		this.mbisnumber = mbisnumber;
		this.mbisphone = mbisphone;
		this.mjusonum = mjusonum;
		this.mjuso = mjuso;
		this.mjuso2 = mjuso2;
		this.memail = memail;
		this.memail2 = memail2;
	}

	public MemberDTO(String mid, String mpw, String mname, String mphone, String mbisname, String mbisnumber,
			String mbisphone, String mjusonum, String mjuso, String mjuso2, String memail, String memail2,
			Date regdate) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.mbisname = mbisname;
		this.mbisnumber = mbisnumber;
		this.mbisphone = mbisphone;
		this.mjusonum = mjusonum;
		this.mjuso = mjuso;
		this.mjuso2 = mjuso2;
		this.memail = memail;
		this.memail2 = memail2;
		this.regdate = regdate;
	}

	public MemberDTO(String mid, String mpw, String mname, String mphone, String mbisname, String mbisnumber,
			String mjusonum, String mjuso, String mjuso2, String memail, String memail2, Date regdate) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.mbisname = mbisname;
		this.mbisnumber = mbisnumber;
		this.mjusonum = mjusonum;
		this.mjuso = mjuso;
		this.mjuso2 = mjuso2;
		this.memail = memail;
		this.memail2 = memail2;
		this.regdate = regdate;
	}
	

	public MemberDTO(String mid, String mpw) {
		super();
		this.mid = mid;
		this.mpw = mpw;
	}
	
	public MemberDTO(String mid, String mname, String mphone, String mbisname, String mbisnumber, String mbisphone,
			String mjusonum, String mjuso, String mjuso2, String memail, String memail2) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.mphone = mphone;
		this.mbisname = mbisname;
		this.mbisnumber = mbisnumber;
		this.mbisphone = mbisphone;
		this.mjusonum = mjusonum;
		this.mjuso = mjuso;
		this.mjuso2 = mjuso2;
		this.memail = memail;
		this.memail2 = memail2;
	}


	public String getMbisphone() {
		return mbisphone;
	}

	public void setMbisphone(String mbisphone) {
		this.mbisphone = mbisphone;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMbisname() {
		return mbisname;
	}

	public void setMbisname(String mbisname) {
		this.mbisname = mbisname;
	}

	public String getMbisnumber() {
		return mbisnumber;
	}

	public void setMbisnumber(String mbisnumber) {
		this.mbisnumber = mbisnumber;
	}

	public String getMjusonum() {
		return mjusonum;
	}

	public void setMjusonum(String mjusonum) {
		this.mjusonum = mjusonum;
	}

	public String getMjuso() {
		return mjuso;
	}

	public void setMjuso(String mjuso) {
		this.mjuso = mjuso;
	}

	public String getMjuso2() {
		return mjuso2;
	}

	public void setMjuso2(String mjuso2) {
		this.mjuso2 = mjuso2;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMemail2() {
		return memail2;
	}

	public void setMemail2(String memail2) {
		this.memail2 = memail2;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}

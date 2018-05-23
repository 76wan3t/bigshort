package com.bigshort.DTO;

public class ProductDTO {
	private int dongno;
	private String dongname;
	private String aptname;
	private String DEAL;
	private String subsidy;
	private String price;
	private String dongextent;
	private String donglevel;
	private String nameprice;
	private String url;
	private String dongdate;
	private String mean_price;
	

	public String getMean_price() {
		return mean_price;
	}

	public void setMean_price(String mean_price) {
		this.mean_price = mean_price;
	}

	public ProductDTO() {
		
	}

	public ProductDTO(int dongno, String dongname, String aptname, String dEAL, String subsidy, String price,
			String dongextent, String donglevel, String nameprice, String url, String dongdate) {
		super();
		this.dongno = dongno;
		this.dongname = dongname;
		this.aptname = aptname;
		DEAL = dEAL;
		this.subsidy = subsidy;
		this.price = price;
		this.dongextent = dongextent;
		this.donglevel = donglevel;
		this.nameprice = nameprice;
		this.url = url;
		this.dongdate = dongdate;
	}

	public int getDongno() {
		return dongno;
	}

	public void setDongno(int dongno) {
		this.dongno = dongno;
	}

	public String getDongname() {
		return dongname;
	}

	public void setDongname(String dongname) {
		this.dongname = dongname;
	}

	public String getAptname() {
		return aptname;
	}

	public void setAptname(String aptname) {
		this.aptname = aptname;
	}

	public String getDEAL() {
		return DEAL;
	}

	public void setDEAL(String dEAL) {
		DEAL = dEAL;
	}

	public String getSubsidy() {
		return subsidy;
	}

	public void setSubsidy(String subsidy) {
		this.subsidy = subsidy;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDongextent() {
		return dongextent;
	}

	public void setDongextent(String dongextent) {
		this.dongextent = dongextent;
	}

	public String getDonglevel() {
		return donglevel;
	}

	public void setDonglevel(String donglevel) {
		this.donglevel = donglevel;
	}

	public String getnameprice() {
		return nameprice;
	}

	public void setnameprice(String nameprice) {
		this.nameprice = nameprice;
	}

	public ProductDTO(int dongno, String dongname, String aptname, String dEAL, String subsidy, String price,
			String dongextent, String donglevel, String nameprice, String url, String dongdate, String mean_price) {
		super();
		this.dongno = dongno;
		this.dongname = dongname;
		this.aptname = aptname;
		DEAL = dEAL;
		this.subsidy = subsidy;
		this.price = price;
		this.dongextent = dongextent;
		this.donglevel = donglevel;
		this.nameprice = nameprice;
		this.url = url;
		this.dongdate = dongdate;
		this.mean_price = mean_price;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDongdate() {
		return dongdate;
	}

	public void setDongdate(String dongdate) {
		this.dongdate = dongdate;
	}
	
	

}

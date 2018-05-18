package DTO;

import java.sql.Date;

public class BigShortDTO {
    private int dongno; // 등록 번호
    private String dongname; // 동대 이름
    private String aptname; // 아파트 이름
    private String deal; // 전세, 월세, 매매
    private int subsidy; // 보조금
    private int price; // 가격
    private int dongextent; //면적
    private int donglevel; // 층수
    private String nameprice; //가격 글자로 표현
    private String url; // url 주소
    private Date dongdate;
    
    public BigShortDTO() {}
   
   

      public BigShortDTO(String nameprice, String url) {
            super();
            this.nameprice = nameprice;
            this.url = url;
      }
      
      



      public BigShortDTO(String dongname, String aptname, String deal, int price, int dongextent,
                  int donglevel) {
            super();
            this.dongno = dongno;
            this.dongname = dongname;
            this.aptname = aptname;
            this.deal = deal;
            this.price = price;
            this.dongextent = dongextent;
            this.donglevel = donglevel;
      }



      public BigShortDTO(String dongname, String aptname, String deal, int subsidy, int price, int dongextent,
                  int donglevel) {
            super();
            this.dongno = dongno;
            this.dongname = dongname;
            this.aptname = aptname;
            this.deal = deal;
            this.subsidy = subsidy;
            this.price = price;
            this.dongextent = dongextent;
            this.donglevel = donglevel;
      }



      public BigShortDTO(String dongname, String aptname, String deal, int subsidy, int price, int dongextent,
                  int donglevel, String nameprice, String url) {
            super();
            
            this.dongname = dongname;
            this.aptname = aptname;
            this.deal = deal;
            this.subsidy = subsidy;
            this.price = price;
            this.dongextent = dongextent;
            this.donglevel = donglevel;
            this.nameprice = nameprice;
            this.url = url;
      }
      
      

      public BigShortDTO(String dongname, String aptname, String deal, int price, int dongextent,
                  int donglevel, String nameprice, String url) {
            super();
            this.dongname = dongname;
            this.aptname = aptname;
            this.deal = deal;
            this.price = price;
            this.dongextent = dongextent;
            this.donglevel = donglevel;
            this.nameprice = nameprice;
            this.url = url;
      }
      
      

      public Date getDongdate() {
		return dongdate;
	}



	public void setDongdate(Date dongdate) {
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

      public String getDeal() {
            return deal;
      }

      public void setDeal(String deal) {
            this.deal = deal;
      }

      public int getSubsidy() {
            return subsidy;
      }

      public void setSubsidy(int subsidy) {
            this.subsidy = subsidy;
      }

      public int getPrice() {
            return price;
      }

      public void setPrice(int price) {
            this.price = price;
      }

      public int getDongextent() {
            return dongextent;
      }

      public void setDongextent(int dongextent) {
            this.dongextent = dongextent;
      }

      public int getDonglevel() {
            return donglevel;
      }

      public void setDonglevel(int donglevel) {
            this.donglevel = donglevel;
      }

      public String getNameprice() {
            return nameprice;
      }

      public void setNameprice(String nameprice) {
            this.nameprice = nameprice;
      }

      public String getUrl() {
            return url;
      }

      public void setUrl(String url) {
            this.url = url;
      }
      
      
   
   
}
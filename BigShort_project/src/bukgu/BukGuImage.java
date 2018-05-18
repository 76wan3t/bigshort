package bukgu;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import DAO.BigShortDAO;
import DAO.ImageDAO;
import DTO.BigShortDTO;
import DTO.ImageDTO;

public class BukGuImage {
	
	static String base_url = "http://home.sarangbang.com/linead/list.html?nPage=";
    static String base_url2="&nScale=20&total_page=206&now_location=%2Flinead%2Flist.html&sort_default=&sort_km=&sort_year=&sort_money=&dong=&menu=apt&submenu=&code_area1=1&code_area2=14";
    static int page = 1;
    static int total = 206;
    static String comlete_page ;
    static String area = "bukguimage";
    static String seq = "bukgu_seq.NEXTVAL";
    ArrayList<BigShortDTO> list = new ArrayList<>();
	
	public void bukgutotal() throws IOException {
		
	    ArrayList<BigShortDTO> list = new ArrayList<>();

        Scanner sc = new Scanner(System.in);
        System.out.println("======================================");
        System.out.print("시작할 페이지 : ");
        
        page = sc.nextInt();
        
        comlete_page = base_url + page + base_url2;
        
    while(page <= total) {
   	 
   	 int overlap = 0;//몇번째 인지 알기 위한 변수
        
        
        Document Sarang = Jsoup.connect(comlete_page).get();

        Elements body = Sarang.select("td[rowspan='2'] > a");
        System.out.println();
        System.out.println("==========================페이지 번호 "+page +"===========================");
        System.out.println();

        for(Element element:body) {
         
              String url = element.attr("href");
              String urltotal = "http://home.sarangbang.com/"+url; //주소를 합쳐서 준다.
        
              if(url.contains("/linead")) {
              
                    Document doc = Jsoup.connect(urltotal).get();
   
                     Elements image = doc.select("li[nindexing='0'] > img"); // 이미지를 주소를 가져온다.
                     String imageurl = image.attr("src"); // 태그안에 src 내용을 가져온다.
                     String aptname = doc.select(".scrollTitleWrap > span.tit , .gray_box").text(); // 아파트 이름을 가져온다.
	                    	 
	                     System.out.println("이미지 주소 : " + imageurl);
	                     System.out.println("아파트 이름 : " + aptname);
	                     
	                     ImageDTO iDto = new ImageDTO(aptname, imageurl);
	                     
	                     ImageDAO iDao = new ImageDAO();
	                     iDao.imageInsert(iDto, area);
	                    
                                }// 중복 체크 if문
                    
                   }//첫 번쩨 if 조건문
                    
               }// for 반복문
       
                    ++page;
                     comlete_page = base_url + page +base_url2;
                    
           }// while문
		
		
	}



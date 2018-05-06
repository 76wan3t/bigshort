package namgu;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import main.BigShortDAO;
import main.BigShortDTO;

public class NamGuTotal {
	
	static String base_url = "http://home.sarangbang.com/linead/list.html?nPage=";
    static String base_url2="&nScale=20&total_page=109&now_location=%2Flinead%2Flist.html&sort_default=&sort_km=&sort_year=&sort_money=&dong=&menu=apt&submenu=&code_area1=1&code_area2=13";
    static int page = 1;
    static int total = 109;
    static String comlete_page ;
    static String area = "namgu";
    static String seq = "namgu_seq.NEXTVAL";
    
    public void namgutotal() throws IOException {
    	
 	    ArrayList<BigShortDTO> list = new ArrayList<>();

         BigShortDAO bSdAo = new BigShortDAO();
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
               
               int number = 0;
               int number2 = 0;
               int number3 = 0;
               String monthly = null;
               String monthlynumber = null;
               int count2 = 0;
               String monthly2 = null;
               String monthlynumber2 = null;

               String url = element.attr("href");
               String urltotal = "http://home.sarangbang.com/"+url; //주소를 합쳐서 준다.
         
               if(url.contains("/linead")) {
               
                     Document doc = Jsoup.connect(urltotal).get();
    
                     String nameprice = doc.select("div.viewLineadPrice").text();
    
                     list =  bSdAo.search(urltotal, area); // 중복값을 찾기 위해서 조회를 하기 위해 사용
                     String nameprice2 = ""; //초기화
                     String url2 = ""; // 초기화
                     
                           for (BigShortDTO bigShortDTO : list) { // 조회되는 값을 변수들에게 담아 둔다.
                                 nameprice2 = bigShortDTO.getNameprice();
                                 url2 = bigShortDTO.getUrl();              
                           }
   
                     if(nameprice2.equals(nameprice)&&url2.equals(urltotal)) { // url 주소와 글자로 된 가격이 둘 다 같으면 중복 하나라도 틀리면 새로 들어간다.
                    	 		 overlap = overlap + 1;
                                 System.out.println(overlap+"번째");
                                 System.out.println("중복입니다.");
                                 System.out.println(urltotal);
                                 System.out.println();
                                 
                     }else {
  
    
                      String aptname = doc.select(".scrollTitleWrap > span.tit , .gray_box").text(); // 아파트 이름 .gray_box= 중간에 태그가 바뀌므로 못불러옴 그래서 추가
                 
                  String extent = doc.select("#m2pyeongTrans").text(); // 면적(평수)㎡
                  String extent3 = extent.replaceAll("[^0-9]", ""); // 면적(평수)㎡ 에서 숫자들만 가져오기
                  int dongextent = Integer.parseInt(extent3); // String 타입을 int 형으로 바꿈
                 
                  String level = doc.select(".viewLineadFloor2").text();// 층수
                  String level2 = "";
                  int donglevel =0;
                 
                  if(level.equals("")) { // 층수를 가져 오지 못하면 0으로 초기화 시켜주기
                     
                     donglevel = 0;
                     
                  }else {
                 
                  level2 = level.replaceAll("[^0-9]", ""); // 층수에서 숫자들만 가져오기
                  donglevel = Integer.parseInt(level2); // 타입 변경 시켜주기
                 
                  }
                 
                  String dongname = doc.select("#select_label3 span").text(); // 동대를 출력하기 위해서
                 
                  String deal = doc.select(".viewLineadPtype").text(); // 매매인지 전세인지 월세인지를 알수 있다.
                 
                 
                  String mreview = doc.select("div.viewLineadPrice").text().substring(2, 3); // 문자열에서 해당 인덱스 값만 가져오기
                  String deal2 = doc.select("div.viewLineadPrice").text().substring(0, 1); // 월세, 전세, 매매를 파악하는 변수
                 
                                //월세와 전세에서 가져올때 문자열 길이가 달라져서 오류 발생 조건문을 사용해서 월세와 전세로 나눔
                 
                                 if(deal.equals("월세")) {
                                       
                                       monthly = doc.select("div.viewLineadPrice").text().substring(0, 4); // 보증금인지 전세인지 파악하기
                                       monthlynumber = monthly.replaceAll("[^0-9]", ""); // 보증금 및 전세 에서 숫자들만 가져오기
                                       number2 = Integer.parseInt(monthlynumber); // 전세 , 월세 String 타입을 int형으로 바꾸기
                                       count2 = monthlynumber.length();
                                       
                                 }else if( deal.equals("전세")) {
                                       
                                       monthly = doc.select("div.viewLineadPrice").text(); // 보증금인지 전세인지 파악하기
                                       monthlynumber = monthly.replaceAll("[^0-9]", ""); // 보증금 및 전세 에서 숫자들만 가져오기
                                       
                                       if(monthlynumber.equals("")) { // 전세에서 숫자가 없으면 0으로 값을 넣어준다.
                                     	  
                                     	  number2 = 0;
                                     	  
                                       }else {
                                       
                                       number2 = Integer.parseInt(monthlynumber); // 전세 , 월세 String 타입을 int형으로 바꾸기
                                       count2 = monthlynumber.length();
                                       
                                       }
                                       
                                 }
                 
                  String mscore = doc.select("div.viewLineadPrice").text(); // 가격을 가져오는 태그
                 
                  int count=0;
                 
                  String str = mscore.replaceAll("[^0-9]", ""); // 문자열에서 숫자들만 출력해주기
                  //int count3 = mscore.length();
                 
                  if(str.equals("")) { //상담후 결정 같은 상황이 발생해서 가격을 가져 올 수 없을때는 0으로 초기화 시켜 주기
                     number=0;
                     
                  }else {
                 
                 
                  count = str.length(); // 숫자가 몇글자인지를 알아내기위해서 사용
                 

                  number = Integer.parseInt(str); // String 타입인 str 변수를 int형으로 바꿈
                 
                  }
                     number3 = 0;
                 
                     if(deal.equals("매매")) {
                     	String backstring = "";
                     	String back = "";
                     	String million = "";
                     	int millionnum = 0;
                     	int backnum = 0;
                     	
                     		if(mreview.equals("억")&&count>=2) { // 매매건수에서 숫자 갯수가 2이상이면 조건문 실행
                     			
                     		backstring = doc.select("div.viewLineadPrice").text().substring(4, 5);// ex) 매3억5백만원 이면 "백"을 가져온다.
                     		million = doc.select("div.viewLineadPrice").text().substring(1, 2);// ex) 매3억5백만원 이면 "3"을 가져온다.
                     		millionnum = Integer.parseInt(million); // 타입을 변환해주기
                     		back = doc.select("div.viewLineadPrice").text().substring(3, 4);// ex) 매3억5백만원 이면 "5"을 가져온다.
                     		backnum = Integer.parseInt(back); // 타입을 변환해주기
                     		
                     		}

 		                     if(mreview.equals("억") && count == 1){ //"억"자가 들어가고 숫자 길이가 1개이면 1억을 곱한다.
 		                         number = number * 100000000;
 		                        
 		                     }else if(mreview.equals("억") && backstring.equals("백") && count >= 2) { //3억5백 같은 경우
 		                    	 millionnum = millionnum * 100000000; // 억단위에는 억을 곱해주고
 		                    	 backnum = backnum * 1000000; // 백단위에는 백을 곱해준다.
 		                    	 number = millionnum + backnum; // 합쳐진 값을 number 변수에 합쳐준다.
 		                    	 
 		                     }else if (mreview.equals("천") && count == 2) {// "천"자가 들어가고 숫자 길이가 2개이면 백만원을 곱한다.
 		                          number = number * 1000000;
 		                        
 		                     }else if (mreview.equals("천") && count == 1) {// "천"자가 들어가고 숫자 길이가 1개이면 천만원을 곱한다.
 		                         number = number * 10000000;
 		                        
 		                     }else if (mreview.equals("천") && count == 4) {// "억"자가 들어가고 숫자 길이가 1개이면 천만원을 곱한다.
 		                         number = number * 10000;
 		                        
 		                     }else if (!mreview.equals("천") &&!mreview.equals("억")&& count == 3) {// "억"자가 아니고 숫자 길이가 3개이면 천만원을 곱한다.
 		                         number = number * 10000000;
 		                        
 		                     }else if (!mreview.equals("천") &&!mreview.equals("억")&& count == 2) {// "억"자가 아니고 숫자 길이가 2개이면 1억원을 곱한다.
 		                    	 
 		                         number = number * 100000000;
 		                        
 		                     }else if (mreview.equals("억") && count == 2) {// "억"자가 들어가고 숫자 길이가 2개이면 천만원을 곱한다.
 		                    	 
 		                         number = number * 10000000;
 		                        
 		                     }else if (mreview.equals("억") && count == 4) {// "억"자가 들어가고 숫자 길이가 4개이면 십만원을 곱한다.
 		                    	 
 		                         number = number * 100000;
 		                        
 		                     }else if(mreview.equals("억") && count == 3) { // "억"자가 들어가고 숫자가 3개이면 백만원을 곱한다.
 		                    	 
 		                          number = number * 1000000;
 		                          
 		                     }else if(count == 5) { // 숫자가 5개이면 만원을 곱한다.
 		                    	 
 		                          number = number * 10000;
 		                          
 		                     }

                        
                      BigShortDTO bDto = new BigShortDTO(dongname, aptname, deal, number, dongextent, donglevel , nameprice , urltotal);
                      bSdAo.insert(bDto ,area, seq);

                      }else if(deal.equals("월세")&& deal2.equals("보")) {
                           
                           if(mreview.equals("천")) {
                        	   
                        	   			String mc  = doc.select("div.viewLineadPrice").text();//월세에서 길이를 파악 하기 위해서
                        	   			int monthlylength = mc.length();
                        	   			
                        	   			if(monthlylength > 11) {
                                       	 
                                       	 String monthlys  = doc.select("div.viewLineadPrice").text().substring(0, 8); // 보증금은 얻기 위한 변수
                                       	 String monthlys2 = monthlys.replaceAll("[^0-9]", ""); // 보증금쪽에서 숫자 들만 가져 오기
                                       	 number2 = Integer.parseInt(monthlys2); // 보증금 변수 타입을 int형으로 변환하기
                                            
                                        number2 = number2 * 10000; // 보5천6백70만을 곱해서 56900000원으로 변경
                                        monthly2 = doc.select("div.viewLineadPrice").text().substring(9, 12);//월세만 가져오기
                                        monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
                                        
                                        int length = monthlynumber2.length(); // 자리 갯수를 구하기 위해서
                                        
                                        number3 = Integer.parseInt(monthlynumber2); // 타입 변환
                                            
                                                  if(length==1) {
                                                        
                                                        number3 = number3 * 1000000;// 월세는 백만원이면 단위라서 백만원을 곱해준다.
                                                        
                                                  }else if(length==2) {
                                                        
                                                        number3 = number3 * 10000;// 만원 단위이면 만원을 곱해준다.
                                                        
                                                  }else if(length==3) {
                                                        
                                                        number3 = number3 * 10000;
                                                  
                                                  }
	                                }else if(mreview.equals("천") && monthlylength > 9) {
                                      	 
                                      	 String monthlys  = doc.select("div.viewLineadPrice").text().substring(0, 4); // 보증금은 얻기 위한 변수
                                      	 String monthlys2 = monthlys.replaceAll("[^0-9]", ""); // 보증금쪽에서 숫자 들만 가져 오기
                                      	 number2 = Integer.parseInt(monthlys2); // 보증금 변수 타입을 int형으로 변환하기
                                           
                                       number2 = number2 * 10000000; // 
                                       monthly2 = doc.select("div.viewLineadPrice").text().substring(5, 10);//월세만 가져오기
                                       monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
                                       
                                       int length = monthlynumber2.length(); // 자리 갯수를 구하기 위해서
                                       
                                       number3 = Integer.parseInt(monthlynumber2); // 타입 변환
                                           
                                                 if(length==1) {
                                                       
                                                       number3 = number3 * 1000000;// 월세는 백만원이면 단위라서 백만원을 곱해준다.
                                                       
                                                 }else if(length==2) {
                                                       
                                                       number3 = number3 * 10000;// 만원 단위이면 만원을 곱해준다.
                                                       
                                                 }else if(length==3) {
                                                       
                                                       number3 = number3 * 10000;
                                                 
                                                 }
	                                }else if(monthlylength == 8) {
	                                       
	                                       number2 = number2 * 10000000; // 천만원으로 변경
	                                       monthly2 = doc.select("div.viewLineadPrice").text().substring(5, 7);//월세만 가져오기
	                                       monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
	                                       
	                                       int length = monthlynumber2.length(); // 자리 갯수를 구하기 위해서
	                                       
	                                       number3 = Integer.parseInt(monthlynumber2); // 타입 변환
	                                       
	                                       number3 = number3 * 10000;// 월세는 백만원이면 단위라서 백만원을 곱해준다.
                                                              
                                                      
                                   }else if(count2==2) {
                                 
                                	    number2 = number2 * 1000000; //"천"자가 들어가고 숫자갯수가 2개면 백만원을 곱한다.
	                                 	monthly2 = doc.select("div.viewLineadPrice").text().substring(7, 10);//월세만 가져오기
	                                 	monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
	                                 
	                                 	int length = monthlynumber2.length(); // 자리 갯수를 구하기 위해서
	                                 
	                                 	number3 = Integer.parseInt(monthlynumber2); // 타입 변환
                                 
                                       if(length==1) {
                                             
                                             number3 = number3 * 1000000;// 월세는 백만원이면 단위라서 백만원을 곱해준다.
                                             
                                       }else if(length==2) {
                                             
                                             number3 = number3 * 10000;// 만원 단위이면 만원을 곱해준다.
                                             
                                       }else if(length==3) {
                                             
                                             number3 = number3 * 10000;
                                       
                                       }
                                       
                                 }else if(count2==1) {
                                 
                                 number2 = number2 * 10000000; //"천"자가 들어가고 숫자갯수가 1개면 천만원을 곱한다.
                                 monthly2 = doc.select("div.viewLineadPrice").text().substring(5, 9);//월세만 가져오기
                                 monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
                                 
                                 int length = monthlynumber2.length(); // 자리 갯수를 구하기 위해서
                                 
                                 number3 = Integer.parseInt(monthlynumber2); // 타입 변환
                                 
                                       if(length==1) {
                                             
                                             number3 = number3 * 1000000;// 월세는 백만원이면 단위라서 백만원을 곱해준다.
                                             
                                       }else if(length==2) {
                                             
                                             number3 = number3 * 10000;// 만원 단위이면 만원을 곱해준다.
                                             
                                       }else if(length==3) {
                                             
                                             number3 = number3 * 10000;
                                       
                                       }
                                 }
                           
                           }else if(mreview.equals("백")) {
                                 
                                 number2 = number2 * 1000000; //"백"자가 들어가면 백만원을 곱한다.
                                 monthly2 = doc.select("div.viewLineadPrice").text().substring(5, 9);//월세만 가져오기
                           monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
                           number3 = Integer.parseInt(monthlynumber2); // 타입 변환
                           
                           int length = monthlynumber2.length(); // 자리 갯수를 구하기 위해서
                           
                           if(length==1) {
                                       
                                       number3 = number3 * 100000;// 월세는 백만원이면 단위라서 백만원을 곱해준다.
                                       
                                 }else if(length==2) {
                                       
                                       number3 = number3 * 10000;// 만원 단위이면 만원을 곱해준다.
                                       
                                 }else if(length==3) {
                                       
                                       number3 = number3 * 10000;
                                       
                                 }
                           
                           
                           }else if(mreview.equals("억")) {
                                 
                                 if(mreview.equals("억")&&count2==2) {
                                 
                                 	number2 = number2 * 10000000; //"억"자가 들어가면서 숫자 갯수가 2개면 1천만원을 곱한다.
                                 	monthly2 = doc.select("div.viewLineadPrice").text().substring(7, 10);//월세만 가져오기
                                 	monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
                                 	number3 = Integer.parseInt(monthlynumber2); // 타입 변환
                                 	number3 = number3 * 10000;// 월세는 만원 단위라서 만원을 곱해준다.
                           
                                 }else if(mreview.equals("억")&&count2==1) {
                                 		String stringwe = doc.select("div.viewLineadPrice").text();
                                 		int stringcount = stringwe.length();
                                 		
                                 		if (stringcount >= 9) {
                                 			number2 = number2 * 100000000; //"억"자가 들어가면서 숫자 갯수가 1개면 1억원을 곱한다.
                                 			monthly2 = doc.select("div.viewLineadPrice").text().substring(4, 9);//월세만 가져오기
                                 			monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
 	                                		number3 = Integer.parseInt(monthlynumber2); // 타입 변환
 	                                		number3 = number3 * 10000;
                                 		}else {
                                 	
 	                                        number2 = number2 * 100000000; //"억"자가 들어가면서 숫자 갯수가 1개면 1억원을 곱한다.
 	                                		monthly2 = doc.select("div.viewLineadPrice").text().substring(4, 7);//월세만 가져오기
 	                                		monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
 	                                		int cc = monthlynumber2.length(); // 숫자 갯수 파악
 	                                		
 	                                		if ( cc == 1 ) { // 월세중에서 갯수가 1개면
 	                                			
 	                                			number3 = Integer.parseInt(monthlynumber2); // 타입 변환
 	 	                                		number3 = number3 * 1000000; // 1백만이면 10000000원이 된다.
 	 	                                		
 	                                		} else if( cc == 2 ){ //월세중에서 갯수가 2개면
 	                                			
 	                                			number3 = Integer.parseInt(monthlynumber2); // 타입 변환
 	 	                                		number3 = number3 * 10000; // 15만 이라 10000곱하면 150000원이된다.
 	 	                                		
 	                                		}
 	                                		
                                 		}
                                 }
                           }
                           
                     
                           
                           
                            //System.out.println("보증금 "+number2+"원");
                            //System.out.println("월세 "+number3+"원");
                            //System.out.println();
                           
                            number = number3; // 데이터 베이스에 저장 하기 위해 number 변수에 대입
                           
                            BigShortDTO bDto = new BigShortDTO(dongname, aptname, deal, number2, number, dongextent, donglevel , nameprice , urltotal);
                            bSdAo.insertSubsidy(bDto ,area, seq);
                           
                      }else if(deal.equals("전세")&&deal2.equals("전")) {
                           
                           if(mreview.equals("억") && count2 == 1 ) {
                                 
                                 number2 = number2 * 100000000;
                                 
                           }else if(mreview.equals("천") && count2 == 2 ) {
                                 
                                 number2 = number2 * 1000000;
                                 
                           }else if(mreview.equals("천") && count2 == 2 ) {
                                 
                                 number2 = number2 * 1000000;
                                 
                           }else if(mreview.equals("억") && count2 == 2 ) {
                                 
                                 number2 = number2 * 10000000;
                                 
                           }else if(mreview.equals("억") && count2 == 3 ) {
                                 
                                 number2 = number2 * 1000000;
                                 
                           }else if(mreview.equals("천") && count2 == 1 ) {
                                 
                                 number2 = number2 * 10000000;
                                 
                           }else if(mreview.equals("억") && count2 == 5 ) {
                               
                                 number2 = number2 * 10000;
                               
                         }else if(deal.equals("전세")&&deal2.equals("보")) {
                                 
                                 if(mreview.equals("억") && count2 == 1 ) {
                                       
                                       number2 = number2 * 100000000;
                                       
                                 }else if(mreview.equals("천") && count2 == 2 ) {
                                       
                                       number2 = number2 * 1000000;
                                       
                                 }else if(mreview.equals("천") && count2 == 2 ) {
                                       
                                       number2 = number2 * 1000000;
                                       
                                 }else if(mreview.equals("억") && count2 == 2 ) {
                                       
                                       number2 = number2 * 10000000;
                                       
                                 }else if(mreview.equals("억") && count2 == 3 ) {
                                       
                                       number2 = number2 * 1000000;
                                       
                                 }else if(mreview.equals("천") && count2 == 1 ) {
                                       
                                       number2 = number2 * 10000000;
                                 }
                           }
                           //System.out.println("전세 "+number2+"원");
                                 //System.out.println();
                                 number = number2; // 데이터 베이스에 저장 하기 위해 number 변수에 대입
                                 
                            BigShortDTO bDto = new BigShortDTO(dongname, aptname, deal, number, dongextent, donglevel , nameprice , urltotal);
                            bSdAo.insert(bDto, area, seq);
                      }
                     System.out.println("동대 : " + dongname);
                     System.out.println("아파트 이름 : "+ aptname);
                     System.out.println(deal + " 가격 : "+ number+"원");
                     System.out.println("보증금 : " + number2+"원");
                     System.out.println("면적 : "+ dongextent+"㎡");
                     System.out.println("층수 : "+ donglevel);
                     System.out.println(nameprice+"원");
                     System.out.println("URL : "+ urltotal);
                     System.out.println();
                     
                     
                                 }// 중복 체크 if문
                     
                    }//첫 번쩨 if 조건문
                     
                }// for 반복문
        
                     ++page;
                      comlete_page = base_url + page +base_url2;
                     
            }// while문
    }
}
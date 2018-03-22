package gwangsan;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import main.BigShortDAO;
import main.BigShortDTO;

public class SsanAmDong {
	
	static String base_url = "http://home.sarangbang.com/linead/list.html/?menu=apt&submenu=&code_area1=1&code_area2=15&dong=%BD%D6%BE%CF%B5%BF";
	/*static String base_url2="&nScale=20&total_page=2&now_location=%2Flinead%2Flist.html%"
			+ "2F&sort_default=&sort_km=&sort_year=&sort_money=&dong=%BD%C5%C3%CC%B5%BF&"
			+ "menu=apt&submenu=&code_area1=1&code_area2=15";
	static int page = 1;
	static int total = 2;
	static String comlete_page = base_url + page + base_url2;*/
	static String area = "gwangsan";
	static String seq = "gwangsan_seq.NEXTVAL";
	
	public void ssanamdong () throws IOException {

		BigShortDAO bSdAo = new BigShortDAO();
     //   while(page <= total) {

           	
           	
            Document Sarang = Jsoup.connect(base_url).get();

            Elements body = Sarang.select("td[rowspan='2'] > a");
          //  System.out.println();
          //  System.out.println("페이지 번호 "+page);
         //   System.out.println();

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
                 
                 if(url.contains("/linead")) {
                	 
            Document doc = Jsoup.connect("http://home.sarangbang.com/"+url).get();
            
            String aptname = doc.select(".scrollTitleWrap > span.tit , .gray_box").text(); // 아파트 이름 .gray_box= 중간에 태그가 바뀌므로 못불러옴 그래서 추가
            
            String extent = doc.select("#m2pyeongTrans").text(); // 면적(평수)㎡
            String extent3 = extent.replaceAll("[^0-9]", ""); // 면적(평수)㎡ 에서 숫자들만 가져오기
            int dongextent = Integer.parseInt(extent3); // String 타입을 int 형으로 바꿈
            
            String level = doc.select(".viewLineadFloor2").text();// 층수 
            String level2 = level.replaceAll("[^0-9]", ""); // 숫자들만 가져오기
            int donglevel = Integer.parseInt(level2);
            
            String dongname = doc.select("#select_label3 span").text(); //동대를 출력하기 위해서
            
            String deal = doc.select(".viewLineadPtype").text(); // 매매인지 전세인지 월세인지를 알수 있다.
            
            
            String mreview = doc.select("div.viewLineadPrice").text().substring(2, 3); // 문자열에서 해당 인덱스 값만 가져오기
            String deal2 = doc.select("div.viewLineadPrice").text().substring(0, 1); // 월세, 전세, 매매를 파악하는 변수
            
			           //월세와 전세에서 가져올때 문자열 길이가 달라져서 오류 발생 조건문을 사용해서 월세와 전세로 나눔
            
            			if(deal2.equals("보")) {
			            	
			            	monthly = doc.select("div.viewLineadPrice").text().substring(0, 4); // 보증금인지 전세인지 파악하기
			            	monthlynumber = monthly.replaceAll("[^0-9]", ""); // 보증금 및 전세 에서 숫자들만 가져오기
			            	number2 = Integer.parseInt(monthlynumber); // 전세 , 월세 String 타입을 int형으로 바꾸기
			            	count2 = monthlynumber.length();
			            	
			            }else if( deal2.equals("전")) {
			            	
			            	monthly = doc.select("div.viewLineadPrice").text(); // 보증금인지 전세인지 파악하기
			            	monthlynumber = monthly.replaceAll("[^0-9]", ""); // 보증금 및 전세 에서 숫자들만 가져오기
			            	number2 = Integer.parseInt(monthlynumber); // 전세 , 월세 String 타입을 int형으로 바꾸기
			            	count2 = monthlynumber.length();
			            }
            
            String mscore = doc.select("div.viewLineadPrice").text();
            //int count3 = mscore.length(); 
            
            String str = mscore.replaceAll("[^0-9]", ""); // 문자열에서 숫자들만 출력해주기
            
            
            int count = str.length(); // 숫자가 몇글자인지를 알아내기위해서 사용
            

            number = Integer.parseInt(str); // String 타입인 str 변수를 int형으로 바꿈
           	
           	number3 = 0;
            
           	if(deal2.equals("매")) {

                if(mreview.equals("억") && count == 1){ //"억"자가 들어가고 숫자 길이가 1개이면 1억을 곱한다.
                	
                    number = number * 100000000;
                    
                }else if (!mreview.equals("억")&&count == 3) {// "억"자가 아니고 숫자 길이가 3개이면 천만원을 곱한다.
                	
                    number = number * 10000000;
                    
                }else if (mreview.equals("억") && count == 2) {// "억"자가 들어가고 숫자 길이가 2개이면 천만원을 곱한다.
                	
                    number = number * 10000000;
                    
                }else if (mreview.equals("천") && count == 2) {// "천"자가 들어가고 숫자 길이가 2개이면 백만원을 곱한다.
                	
                    number = number * 1000000;
                    
                }else if (mreview.equals("천") && count == 1) {// "천"자가 들어가고 숫자 길이가 1개이면 천만원을 곱한다.
                	
                    number = number * 10000000;
                    
                }else if (mreview.equals("억") && count == 4) {// "억"자가 들어가고 숫자 길이가 4개이면 십만원을 곱한다.
                	
                    number = number * 100000;
                    
                }else if (mreview.equals("천") && count == 4) {// "억"자가 들어가고 숫자 길이가 1개이면 천만원을 곱한다.
                	
                    number = number * 10000;
                    
                }else if(mreview.equals("억") && count == 3) { // "억"자가 들어가고 숫자가 3개이면 백만원을 곱한다.
                	
                	number = number * 1000000;
                	
                }

	               // System.out.println("매매 " + number +"원");
	               //System.out.println();
                BigShortDTO bDto = new BigShortDTO(dongname, aptname, deal, number, dongextent, donglevel);
                bSdAo.insert(bDto ,area, seq);

                }else if(deal2.equals("보")) {
                	
                	if(mreview.equals("천")) {
                		
                		if(count2==2) {
                		
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
                			number2 = number2 * 100000000; //"억"자가 들어가면서 숫자 갯수가 1개면 1억원을 곱한다.
                    		monthly2 = doc.select("div.viewLineadPrice").text().substring(4, 7);//월세만 가져오기
                        	monthlynumber2 = monthly2.replaceAll("[^0-9]", ""); // 월세에서 숫자만 빼오기
                        	number3 = Integer.parseInt(monthlynumber2); // 타입 변환
                        	number3 = number3 * 10000;// 월세는 만원 단위라서 만원을 곱해준다.
                		}
                	}
                	
                
                	
                	 
                	 //System.out.println("보증금 "+number2+"원");
                	 //System.out.println("월세 "+number3+"원");
                	 //System.out.println();
                	 
                	 number = number3; // 데이터 베이스에 저장 하기 위해 number 변수에 대입
                	 
                	 BigShortDTO bDto = new BigShortDTO(dongname, aptname, deal, number2, number, dongextent, donglevel);
                	 bSdAo.insertSubsidy(bDto ,area, seq);
                	
                }else if(deal2.equals("전")) {
                	
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
                	//System.out.println("전세 "+number2+"원");
               	 	//System.out.println();
               	 	number = number2; // 데이터 베이스에 저장 하기 위해 number 변수에 대입
               	 	
               	 BigShortDTO bDto = new BigShortDTO(dongname, aptname, deal, number, dongextent, donglevel);
                 bSdAo.insert(bDto, area, seq);
                }
            	System.out.println("동대 : " + dongname);
            	System.out.println("아파트 이름 : "+ aptname);
            	System.out.println(deal + " 가격 : "+ number+"원");
            	System.out.println("보조금 : " + number2+"원");
            	System.out.println("면적 : "+ dongextent+"㎡");
            	System.out.println("층수 : "+ donglevel);
            	System.out.println();
            	
            	
            
              }//첫 번쩨 if 조건문
                
          }// for 반복문
              // ++page;
             //   comlete_page = base_url + page +base_url2;
                
     // }// while문
	}

}
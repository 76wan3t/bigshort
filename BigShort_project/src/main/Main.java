package main;

import java.io.IOException;
import java.util.Scanner;

import bukgu.*;
import bukgu.USanDong;
import donggu.*;
import gwangsan.*;
import namgu.*;
import seogu.*;

public class Main {
	
	public static void main(String[] args) throws IOException {
		
		Scanner sc = new Scanner(System.in);
        
              

        System.out.println("광주광역시 사랑방 클로링 프로그램");
        System.out.println("1. 광산구");
        System.out.println("2. 북구");
        System.out.println("3. 동구");
        System.out.println("4. 서구");
        System.out.println("5. 남구");
        System.out.println("6. 프로그램 종료");
        System.out.print("code : ");
        int code = sc.nextInt();
        
        if(code==1){
        	System.out.println("광산구 지역입니다.");
        	System.out.println("동대를 입력해주세요.");
        	
        	System.out.println("1. 도산동");
        	System.out.println("2. 도천동");
        	System.out.println("3. 비아동");
        	System.out.println("4. 산월동");
        	System.out.println("5. 산정동");
        	System.out.println("6. 선암동");
        	System.out.println("7. 소촌동");
        	System.out.println("8. 송정동");
        	System.out.println("9. 수완동");
        	System.out.println("10. 신가동");
        	System.out.println("11. 신창동");
        	System.out.println("12. 신촌동");
        	System.out.println("13. 쌍암동");
        	System.out.println("14. 우산동");
        	System.out.println("15. 운남동");
        	System.out.println("16. 운수동");
        	System.out.println("17. 월계동");
        	System.out.println("18. 월곡동");
        	System.out.println("19. 장덕동");
        	System.out.println("20. 하남동");
        	System.out.println("21. 흑석동");
        	System.out.print("code : ");
        	int code2 = 1;// sc.nextInt();
        	
        	while(code2<=21) {
        		
        		
        		
        	switch (code2) {
        	
			case 1:
				Dosandong dSan = new Dosandong();
				dSan.dosandong();
				break;
			case 2:
				Docheondong dCod = new Docheondong();
				dCod.docheondong();
				break;
			case 3:
				Biadong bAdong = new Biadong();
				bAdong.biadong();
				break;
			case 4:
				Sanwoldong sWd = new Sanwoldong();
				sWd.sanwoldong();
				break;
			case 5:
				Sanjeongdong sJd = new Sanjeongdong();
				sJd.sandeongdong();
				break;
			case 6:
				SeoNamDong sNd = new SeoNamDong();
				sNd.seonamdong();
				break;
			case 7:
				SoChonDong sCd = new SoChonDong();
				sCd.sochondong();
				break;
			case 8:
				SongJeongDong sjD = new SongJeongDong();
				sjD.songjeongdong();
				break;
			case 9:
				SuWanDong swD = new SuWanDong();
				swD.suwandong();
				break;
			case 10:
				SinGaDong sGd = new SinGaDong();
				sGd.singadong();
				break;
			case 11:
				SinChangDong sinCd = new SinChangDong();
				sinCd.sinchangdong();
				break;
			case 12:
				SinChonDong sinChond = new SinChonDong();
				sinChond.sinchondong();
				break;
			case 13:
				SsanAmDong ssAd = new SsanAmDong();
				ssAd.ssanamdong();
				break;
			case 14:
				USanDong2 uSand = new USanDong2();
				uSand.usandong();
				break;
			case 15:
				UnNamDong uNd = new UnNamDong();
				uNd.unnamdong();
				break;
			case 16:
				UnSuDong uSd = new UnSuDong();
				uSd.unsudong();
				break;
			case 17:
				WolGyeDong wGd = new WolGyeDong();
				wGd.wolgyedong();
				break;
			case 18:
				WolGokDong wGokd = new WolGokDong();
				wGokd.wolgokdong();
				break;
			case 19:
				JangDeokDong jDeokd = new JangDeokDong();
				jDeokd.jangdeokdong();
				break;
			case 20:
				HaNamDong hNd = new HaNamDong();
				hNd.hanamdong();
				break;
			case 21:
				HeukSeokDong hSd = new HeukSeokDong();
				hSd.heukseokdong();
				break;

			default:
				break;
        		}
        	code2++;
			}
             
        }else if(code == 2){
        	System.out.println("북구 지역입니다.");
        	System.out.println("동대를 입력해주세요.");
        	
        	System.out.println("1. 각화동");
        	System.out.println("2. 동림동");
        	System.out.println("3. 두암동");
        	System.out.println("4. 매곡동");
        	System.out.println("5. 문흥동");
        	System.out.println("6. 본촌동");
        	System.out.println("7. 삼각동");
        	System.out.println("8. 신안동");
        	System.out.println("9. 신용동");
        	System.out.println("10. 양산동");
        	System.out.println("11. 연제동");
        	System.out.println("12. 오치동");
        	System.out.println("13. 용두동");
        	System.out.println("14. 용봉동");
        	System.out.println("15. 우산동");
        	System.out.println("16. 운암동");
        	System.out.println("17. 일곡동");
        	System.out.println("18. 임동");
        	System.out.println("19. 중흥동");
        	System.out.println("20. 풍항동");
        	System.out.print("code : ");
        	
        	int code2 = 1;//sc.nextInt();
        	
        	while (code2 <=20) {
        	
        	
        	switch (code2) {
        	
			case 1:
				GakHwaDong gHd = new GakHwaDong();
				gHd.gakhwadong();
				break;
			case 2:
				DongNimDong dNd = new DongNimDong();
				dNd.dongnimdong();
				break;
			case 3:
				DuAmDong dAd = new DuAmDong();
				dAd.duamdong();
				break;
			case 4:
				MaeGokDong mGd = new MaeGokDong();
				mGd.maegokdong();
				break;
			case 5:
				MunHeungDong mHd = new MunHeungDong();
				mHd.maegokdong();
				break;
			case 6:
				BonChonDong bCd = new BonChonDong();
				bCd.bonchondong();
				break;
			case 7:
				SamGakDong sGd= new SamGakDong();
				sGd.samgakdong();
				break;
			case 8:
				SinAnDong sAd = new SinAnDong();
				sAd.sinandong();
				break;
			case 9:
				SinnYoungDong sYd = new SinnYoungDong();
				sYd.sinnyoungdong();
				break;
			case 10:
				YangSanDong ySd = new YangSanDong();
				ySd.yangsandong();
				break;
			case 11:
				YeonJeDong yJd = new YeonJeDong();
				yJd.yeonjedong();
				break;
			case 12:
				OChiDong oCd = new OChiDong();
				oCd.ochidong();
				break;
			case 13:
				YounDoDong yDd = new YounDoDong();
				yDd.youndodong();
				break;
			case 14:
				YongBongDong yBd = new YongBongDong();
				yBd.yougbongdong();
				break;
			case 15:
				USanDong uSd = new USanDong();
				uSd.usandong();
				break;
			case 16:
				UnAmDong uAd = new UnAmDong();
				uAd.unamdong();
				break;
			case 17:
				IlGOkDong iLgd = new IlGOkDong();
				iLgd.ilgokdong();
				break;
			case 18:
				ImDong imD = new ImDong();
				imD.imdong();
				break;
			case 19:
				JungHeungDong jhD = new JungHeungDong();
				jhD.jungheungdong();
				break;
			case 20:
				PungHyangDong pHd = new PungHyangDong();
				pHd.pungheungdong();
				break;
				
			default:
				break;
        		}
        	code2++;
			} 
               
        }else if(code == 3){
        	
        	System.out.println("동구 지역입니다.");
        	System.out.println("동대를 입력해주세요.");
        	
        	System.out.println("1. 계림동");
        	System.out.println("2. 금남로2가");
        	System.out.println("3. 금남로3가");
        	System.out.println("4. 대인동");
        	System.out.println("5. 동명동");
        	System.out.println("6. 산수동");
        	System.out.println("7. 소태동");
        	System.out.println("8. 수기동");
        	System.out.println("9. 용산동");
        	System.out.println("10. 운림동");
        	System.out.println("11. 월남동");
        	System.out.println("12. 지산동");
        	System.out.println("13. 충장로4가");
        	System.out.println("14. 학동");
        	System.out.print("code : ");
        	int code2 = 1;//sc.nextInt();
        	while(code2<=14) {
        		
        	switch (code2) {
			case 1:
				GyeRimDong gRd = new GyeRimDong();
				gRd.gyerimdong();
				break;
			case 2:
				GmNamRo2roga gNr = new GmNamRo2roga();
				gNr.gmnamro2roga();
				break;
			case 3:
				GmNamRo3roga gNr3 = new GmNamRo3roga();
				gNr3.gmnamro3roga();
				break;
			case 4:
				DaeInDong dId = new DaeInDong();
				dId.daeindong();
				break;
			case 5:
				DongMyeongDong dMd = new DongMyeongDong();
				dMd.dongmyeongdong();
				break;
			case 6:
				SanSuDong sSd = new SanSuDong();
				sSd.sansudong();
				break;
			case 7:
				SoTaeDong sTd = new SoTaeDong();
				sTd.sotaedong();
				break;
			case 8:
				SuGiDong sGd = new SuGiDong();
				sGd.sugidong();
				break;
			case 9:
				YongSanDong ySd = new YongSanDong();
				ySd.yongsandong();
				break;
			case 10:
				UnLimDong uLd = new UnLimDong();
				uLd.unlimdong();
				break;
			case 11:
				WolLamDong wLd = new WolLamDong();
				wLd.wollamdong();
				break;
			case 12:
				JiSanDong jiSD = new JiSanDong();
				jiSD.jisandong();
				break;
			case 13:
				ChunGjangRu cGr = new ChunGjangRu();
				cGr.chungjangru();
				break;
			case 14:
				HakDong haD = new HakDong();
				haD.hakdong();
				break;
			default:
				break;
				}
        	code2++;
        	}
            
             
        }else if(code == 4){
        	System.out.println("서구 지역입니다.");
        	System.out.println("동대를 입력해주세요.");
        	
        	System.out.println("1. 광천동");
        	System.out.println("2. 금호동");
        	System.out.println("3. 내방동");
        	System.out.println("4. 농성동");
        	System.out.println("5. 동천동");
        	System.out.println("6. 마륵동");
        	System.out.println("7. 매월동");
        	System.out.println("8. 쌍촌동");
        	System.out.println("9. 양동");
        	System.out.println("10. 유촌동");
        	System.out.println("11. 치평동");
        	System.out.println("12. 풍암동");
        	System.out.println("13. 화정동");
        	System.out.print("code : ");
        	int code2 = 1;// sc.nextInt();
        	
        	
        	while(code2<=13) {
        		
        	
        	switch (code2) {
        	
			case 1:
				GwangCheonDong gCd = new GwangCheonDong();
				gCd.bonchondong();
				break;
			case 2:
				GeumHoDong gHd = new GeumHoDong();
				gHd.geumhodong();
				break;
			case 3:
				NaeBangDong nBd = new NaeBangDong();
				nBd.naebangdong();
				break;
			case 4:
				NongseongDong nSd = new NongseongDong();
				nSd.nongseongdong();
				break;
			case 5:
				DongCheonDong dCd = new DongCheonDong();
				dCd.dongcheondong();
				break;
			case 6:
				MareukDong mRd = new MareukDong();
				mRd.mareukdong();
				break;
			case 7:
				MaeWolDong mWd = new MaeWolDong();
				mWd.maewoldong();
				break;
			case 8:
				SsangchonDong sCd = new SsangchonDong();
				sCd.ssanchondong();
				break;
			case 9:
				YangDong wLd = new YangDong();
				wLd.yangdong();
				break;
			case 10:
				YchonDong yCd = new YchonDong();
				yCd.ychondong();
				break;
			case 11:
				ChiPyeongDong cPd = new ChiPyeongDong();
				cPd.chipyeongdong();
				break;
			case 12:
				PungAmDong pAd = new PungAmDong();
				pAd.pungamdong();
				break;
			case 13:
				HwaJeongDong hJd = new HwaJeongDong();
				hJd.hwajeongdong();
				break;
			default:
				break;
				}
        	code2 ++;
        	}
             
        }else if(code == 5){
        	System.out.println("남구 지역입니다.");
        	System.out.println("동대를 입력해주세요.");
        	
        	System.out.println("1. 노대동");
        	System.out.println("2. 방림동");
        	System.out.println("3. 백운동");
        	System.out.println("4. 봉선동");
        	System.out.println("5. 사동");
        	System.out.println("6. 서동");
        	System.out.println("7. 송하동");
        	System.out.println("8. 양림동");
        	System.out.println("9. 월산동");
        	System.out.println("10. 주월동");
        	System.out.println("11. 지석동");
        	System.out.println("12. 진월동");
        	System.out.println("13. 행암동");
        	System.out.print("code : ");
        	
        	
        	int code2 = 1;//sc.nextInt();
        	while(code2<=13) {
        		
        	switch (code2) {
			case 1:
				NoDaeDong nDd = new NoDaeDong();
				nDd.nodaedong();
				break;
			case 2:
				BangNimDong bNd = new BangNimDong();
				bNd.bangnimdong();
				break;
			case 3:
				BaegUnDong gNr3 = new BaegUnDong();
				gNr3.nodaedong();
				break;
			case 4:
				BongSeonDong dId = new BongSeonDong();
				dId.nodaedong();
				break;
			case 5:
				SaDong dMd = new SaDong();
				dMd.sadong();
				break;
			case 6:
				SeDong sSd = new SeDong();
				sSd.sedong();
				break;
			case 7:
				SongHaDong sTd = new SongHaDong();
				sTd.songhadong();
				break;
			case 8:
				YangNimDong sGd = new YangNimDong();
				sGd.yangnimdong();
				break;
			case 9:
				WolSanDong ySd = new WolSanDong();
				ySd.wolsandong();
				break;
			case 10:
				JuWolDong uLd = new JuWolDong();
				uLd.juwoldong();
				break;
			case 11:
				JiSeokDong wLd = new JiSeokDong();
				wLd.jiseokdong();
				break;
			case 12:
				JinWolDong jiSD = new JinWolDong();
				jiSD.jinwoldong();
				break;
			case 13:
				HaengAmDong cGr = new HaengAmDong();
				cGr.haengamdong();
				break;
			default:
				break;
				}
        	code2++;
        	}
        }else if(code ==6) {
               System.exit(0);
              
         }else{
               System.out.println("잘못 입력 하셨습니다.");
               }
        
        sc.close();
         }
  
	
}

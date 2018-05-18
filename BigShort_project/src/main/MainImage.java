package main;

import java.io.IOException;
import java.util.Scanner;

import bukgu.BukGuImage;
import donggu.DongGuImage;
import gwangsan.GwangSanGuImage;
import namgu.NamGuImage;
import seogu.SeoGuImage;

public class MainImage {
	
	public static void main(String[] args) throws IOException {
        
        Scanner sc = new Scanner(System.in);
        
         System.out.println("광주광역시 사랑방 클로링 프로그램");
          System.out.println("1. 광산구");
          System.out.println("2. 북구");
          System.out.println("3. 동구");
          System.out.println("4. 남구");
          System.out.println("5. 서구");
          System.out.println("6. 프로그램 종료");
          System.out.print("code : ");
          int code = sc.nextInt();
         
          if(code == 1) {
              
              System.out.println("광산구 지역입니다.");
              
              GwangSanGuImage gImg = new GwangSanGuImage();
              gImg.gwangsanguImage();
              
          }else if(code == 2) {
              
              System.out.println("북구 지역입니다.");
              BukGuImage bGi = new BukGuImage();
              bGi.bukgutotal();
              
          }else if(code == 3) {
                                
              System.out.println("동구 지역입니다.");
              DongGuImage dGim = new DongGuImage();
              
              dGim.dongguImage();
              
          }else if(code == 4) {
              
              System.out.println("남구 지역입니다.");
              
              NamGuImage nGim = new NamGuImage();
              
              nGim.namguImage();
              
          }else if(code == 5) {
              
              System.out.println("서구 지역입니다.");
              SeoGuImage sGui = new SeoGuImage();
              
              sGui.namgutotal();
              
              
          }else if(code == 6) {
              
              System.exit(0);
              
          }else{
                 System.out.println("잘못 입력 하셨습니다.");
                
                }
         
  }

}

package main;

import java.io.IOException;
import java.util.Scanner;

import bukgu.BukGuTotal;
import donggu.DongGuTotal;
import gwangsan.GwangSanGuTotal;
import namgu.NamGuTotal;
import seogu.SeoGuTotal;

public class MainTotal {
      
      
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
              int code = 3;// sc.nextInt();
             
              if(code == 1) {
                  
                  System.out.println("광산구 지역입니다.");
                  GwangSanGuTotal gSgt = new GwangSanGuTotal();
                  gSgt.gwangsangutotal();
                  
                  
              }else if(code == 2) {
                  
                  System.out.println("북구 지역입니다.");
                  BukGuTotal bGt = new BukGuTotal();
                  bGt.bukgutotal();
                  
              }else if(code == 3) {
                                    
                  System.out.println("동구 지역입니다.");
                  
                  DongGuTotal dGu = new DongGuTotal();
                  dGu.donggutotal();
                  
              }else if(code == 4) {
                  
                  System.out.println("남구 지역입니다.");
                  
                  NamGuTotal nGt = new NamGuTotal();
                  nGt.namgutotal();
                  
              }else if(code == 5) {
                  
                  System.out.println("서구 지역입니다.");
                  
                  SeoGuTotal sGt = new SeoGuTotal();
                  sGt.namgutotal();
                  
              }else if(code == 6) {
                  
                  System.exit(0);
                  
              }else{
                     System.out.println("잘못 입력 하셨습니다.");
                    
                    }
             
      }
      

}
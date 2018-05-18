package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBManger {
	
	private static Connection conn;    
    private final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
    private final static String URL = "jdbc:oracle:thin:@bigshort.homedns.tv:1521:XE"; //오라클 서버 주소
    private final static String USER = "bigshort"; // 아이디
    private final static String PASSWORD = "bigshort4800"; // 비밀번호
    
    private DBManger() {
        
    }
    
    public static Connection getConnection(){
        conn = null;
        
        if (conn == null){
             try {
                  Class.forName(DRIVER);
                  conn = DriverManager.getConnection(URL, USER, PASSWORD);
             } catch (Exception e) {
                  e.printStackTrace();
             }
        }
        return conn;
  }
  //select close 메서드
  public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs){
        try {
                        if(conn != null){
                             try {
                                  conn.close();
                             } catch (Exception e) {
                                  e.printStackTrace();
                             }
                        }
                        
                        if(pstmt != null){
                             try {
                                  pstmt.close();
                             } catch (Exception e) {
                                  e.printStackTrace();
                             }
                        }
                        
                        if(rs != null){
                             try {
                                  rs.close();
                             } catch (Exception e) {
                                  e.printStackTrace();
                             }
                        }
             
        } catch (Exception e) {
             e.printStackTrace();
        }//try catch 문
  }//close 문
  public static void close(Connection conn, PreparedStatement pstmt){
        try {
                        if(conn != null){
                             try {
                                  conn.close();
                             } catch (Exception e) {
                                  e.printStackTrace();
                             }
                        }
                        
                        if(pstmt != null){
                             try {
                                  pstmt.close();
                             } catch (Exception e) {
                                  e.printStackTrace();
                             }
                        }
             
             
        } catch (Exception e) {
             e.printStackTrace();
        }
  }//close 문



}

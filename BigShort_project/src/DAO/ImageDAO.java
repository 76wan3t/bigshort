package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.BigShortDTO;
import DTO.ImageDTO;
import main.DBManger;

public class ImageDAO {
	
    Connection conn =null;
    PreparedStatement pstmt = null;
    int result;
    ResultSet rs;
    ArrayList<BigShortDTO> list = new ArrayList<>();
    
    public void imageInsert(ImageDTO iDto, String area) {
    	
    	try {
    		
    		conn = DBManger.getConnection();
            
            String sql = "INSERT INTO "+ area + " VALUES( ?, ?) "; 
            
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, iDto.getAptname());
            pstmt.setString(2, iDto.getImageurl());
            
            result = pstmt.executeUpdate();
            
            if(result > 0) {
            	System.out.println(" 등록 성공 ");
            }else {
            	
            	System.out.println(" 등록 실패 ");
            }
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			DBManger.close(conn, pstmt);
		}
    	
    	 
    	
    }

}

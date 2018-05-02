package main;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
public class BigShortDAO {
    
    Connection conn =null;
    PreparedStatement pstmt = null;
    int result;
    ResultSet rs;
    ArrayList<BigShortDTO> list = new ArrayList<>();
    
    public void insert(BigShortDTO bSdto, String area ,String seq) {
        
        
        try {
            
            conn = DBManger.getConnection();
            
            String sql = "INSERT INTO "+ area
                    + " ( dongno,dongname, aptname, deal,subsidy ,price ,dongextent, donglevel, nameprice, url)"
                    + " VALUES( "+seq+" , ?, ?, ?, NULL, ?, ?, ? ,? , ?) "; // 여기서 매매, 전세는 보조금이 없으므로 null값으로 들어간다.
            
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, bSdto.getDongname());
            pstmt.setString(2, bSdto.getAptname());
            pstmt.setString(3, bSdto.getDeal());
            pstmt.setInt(4, bSdto.getPrice());
            pstmt.setInt(5, bSdto.getDongextent());
            pstmt.setInt(6, bSdto.getDonglevel());
            pstmt.setString(7, bSdto.getNameprice());
            pstmt.setString(8, bSdto.getUrl());
            
            result = pstmt.executeUpdate();
            
            if(result > 0) {
                System.out.println("등록 성공");
            }else {
                System.out.println("등록 실패");
            }
            
            
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }finally {
        	 DBManger.close(conn, pstmt);
        }
    }
public void insertSubsidy(BigShortDTO bSdto, String area, String seq) {
        
        
        try {
            
            conn = DBManger.getConnection();
            
            String sql = "INSERT INTO "+area
                    + " ( dongno,dongname, aptname, deal,subsidy ,price ,dongextent, donglevel, nameprice, url)"
                    + " VALUES( "+seq+" , ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
            
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, bSdto.getDongname());
            pstmt.setString(2, bSdto.getAptname());
            pstmt.setString(3, bSdto.getDeal());
            pstmt.setInt(4, bSdto.getSubsidy());
            pstmt.setInt(5, bSdto.getPrice());
            pstmt.setInt(6, bSdto.getDongextent());
            pstmt.setInt(7, bSdto.getDonglevel());
            pstmt.setString(8, bSdto.getNameprice());
            pstmt.setString(9, bSdto.getUrl());
            
            result = pstmt.executeUpdate();
            
            if(result > 0) {
                System.out.println("등록 성공");
            }else {
                System.out.println("등록 실패");
            }
            
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }finally {
            DBManger.close(conn, pstmt);
        }
    }
    public ArrayList<BigShortDTO> search(String url, String seq) {
            list.clear();
        try {
            
            conn = DBManger.getConnection();
            String sql = " SELECT nameprice, url  FROM "+seq+" WHERE url = ? ";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, url);
            
            rs = pstmt.executeQuery();
            
            while(rs.next()) {
                String nameprice = rs.getString("nameprice");
                String url2 = rs.getString("url");
                BigShortDTO bSdto = new BigShortDTO(nameprice, url2);
                list.add(bSdto);
            }
            
            
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBManger.close(conn, pstmt, rs);
        }
        return list;
    }
}
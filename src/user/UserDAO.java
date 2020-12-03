package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class UserDAO {
 
    private Connection conn;   //데이터베이스에 접근하기 위한 객체
    private PreparedStatement pstmt;  
    private ResultSet rs;   //정보를 담을 수 있는 변수를 생성
    
    //mysql에 접속해주는 부분
    public UserDAO() {
            //생성자
    		try {
	            String dbURL="jdbc:mysql://localhost:3306/server?serverTimezone=UTC";                             
	            String dbID="hosung9562";
	            String dbPassword="hojong1122";
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
    		} catch(Exception e) {
    			e.printStackTrace();
    		}
    }
    public int join(User user) {	//회원가입시 회원데이터 삽입
    	//회원정보를 DB에 입력하는 쿼리문
        String SQL= "INSERT INTO USER VALUES(?, ?, ?, ?) ";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1,user.getUserID());
            pstmt.setString(2,user.getUserPassword());
            pstmt.setString(3,user.getUserName());
            pstmt.setString(4,user.getUserEmail());
            return pstmt.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
    public int login(String id, String password) {	//로그인시 회원정보 확인
    	//아이디와 비밀번호로 회원테이블에 검색하는 쿼리문
    	String SQL = "SELECT * from user WHERE userID=? AND userPassword=?";
    	try {
    		pstmt = conn.prepareStatement(SQL);
    		pstmt.setString(1, id);
    		pstmt.setString(2, password);
    		rs = pstmt.executeQuery();
    		if(rs.next()) {
    			//아이디 및 패스워드 일치
    			return 1; //로그인 성공
    		} else {
    			return 0; //로그인 실패
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return -1;	//오류
    }
    public String checkNickname(String id) { //닉네임 검사
    	String SQL = "SELECT userNickname from user WHERE userID=?";
    	try {
    		pstmt = conn.prepareStatement(SQL);
    		pstmt.setString(1, id);
    		rs = pstmt.executeQuery();
    		if(rs.next()) {
    			return rs.getString(1);
    		}
    	}catch(Exception e) {
			e.printStackTrace();
    	}
    	return "";
    }
}

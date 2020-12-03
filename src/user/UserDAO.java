package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class UserDAO {
 
    private Connection conn;   //�����ͺ��̽��� �����ϱ� ���� ��ü
    private PreparedStatement pstmt;  
    private ResultSet rs;   //������ ���� �� �ִ� ������ ����
    
    //mysql�� �������ִ� �κ�
    public UserDAO() {
            //������
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
    public int join(User user) {	//ȸ�����Խ� ȸ�������� ����
    	//ȸ�������� DB�� �Է��ϴ� ������
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
    public int login(String id, String password) {	//�α��ν� ȸ������ Ȯ��
    	//���̵�� ��й�ȣ�� ȸ�����̺� �˻��ϴ� ������
    	String SQL = "SELECT * from user WHERE userID=? AND userPassword=?";
    	try {
    		pstmt = conn.prepareStatement(SQL);
    		pstmt.setString(1, id);
    		pstmt.setString(2, password);
    		rs = pstmt.executeQuery();
    		if(rs.next()) {
    			//���̵� �� �н����� ��ġ
    			return 1; //�α��� ����
    		} else {
    			return 0; //�α��� ����
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return -1;	//����
    }
    public String checkNickname(String id) { //�г��� �˻�
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

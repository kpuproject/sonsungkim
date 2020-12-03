package image;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataRoom {
	private int idx;
	private String orifile, sysfile, contentType;
	private String title, content;
	private long fileSize;
	
	// 생성자
	public DataRoom() {}
	public DataRoom(
			int idx,
			String orifile,
			String sysfile,
			String contentTye,
			String title,
			String content,
			long fileSize) {
		this.setIdx(idx);
		this.setOrifile(orifile);
		this.setSysfile(sysfile);
		this.setContentType(contentTye);
		this.setTitle(title);
		this.setContent(content);
		this.setFileSize(fileSize);
	}
	
	// setter, getter
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getOrifile() {
		return orifile;
	}
	public void setOrifile(String orifile) {
		this.orifile = orifile;
	}
	public String getSysfile() {
		return sysfile;
	}
	public void setSysfile(String sysfile) {
		this.sysfile = sysfile;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	
	// connection
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		// jdbc 1
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/jupiter";
		String user = "user01";
		String passwd = "1234";
		return DriverManager.getConnection(url, user, passwd);
	}
	
	private void close(Connection con, Statement stat, ResultSet rs) throws SQLException {
		if(rs != null) rs.close();
		if(stat != null) stat.close();
		if(con != null) con.close();
	}
	
	public void insert() throws Exception {
		StringBuilder sql = new StringBuilder();
		sql.append("insert into dataroom(");
		sql.append(" orifile, sysfile, contentType, fileSize, title, content )");
		sql.append(" values ");
		sql.append("(?,?,?,?,?,?)");
		
		Connection con = null;
		PreparedStatement pstat = null;
		try {
			con = this.getConnection();
			pstat = con.prepareStatement(sql.toString());
			pstat.setString(1, orifile);
			pstat.setString(2, sysfile);
			pstat.setString(3, contentType);
			pstat.setLong  (4, fileSize);
			pstat.setString(5, title);
			pstat.setString(6, content);
			if (pstat.executeUpdate() != 1) {
				throw new Exception(this.orifile+" 파일 입력 실패");
			}
		} finally {
			this.close(con, pstat, null);
		}
	}
	
	// 자신의 멤버 변수의 DB의 내용을 채우는 메소드
	public void refresh() throws Exception {
		Connection con = null;
		Statement stat = null;
		ResultSet rs = null;
		
		con = this.getConnection();
		stat = con.createStatement();
		rs = stat.executeQuery("select * from dataroom where idx=" + idx);
		if(rs.next()) {
			this.setIdx(rs.getInt("idx"));
			this.setOrifile(rs.getString("orifile"));
			this.setSysfile(rs.getString("sysfile"));
			this.setContentType(rs.getString("contentType"));
			this.setFileSize(rs.getLong("fileSize"));
			this.setTitle(rs.getString("title"));
			this.setContent(rs.getString("content"));
		}
		this.close(con, stat, rs);
	}
}
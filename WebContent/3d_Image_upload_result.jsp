<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.io.*"
    import="com.oreilly.servlet.*"
    import="com.oreilly.servlet.multipart.*"
    import="image.*"
%>
<%!
// 선언부
String saveFolder = "./3d_images"; // 저장 폴더명
int maxPostSize = 5 * 1024 * 1024; 	// 5Mb
String encoding = "euc-kr";
%>
<%
MultipartRequest req = null;
try {
	req = new MultipartRequest(request, this.saveFolder, this.maxPostSize, this.encoding, new DefaultFileRenamePolicy());
	out.println("<p>업로드 성공</p>");
	
	// 파일명은?
	String oriFileName = req.getOriginalFileName("myFile");
	String sysFileName = req.getFilesystemName("myFile");
	
	// 파일의 종류는?
	String contentType = req.getContentType("myFile");
	
	// 파일의 크기는?
	long fileSize = req.getFile("myFile").length();
	
	out.println("원래 파일명 : " + oriFileName +"<br>");
	out.println("저장 파일명 : " + sysFileName +"<br>");
	out.println("파일의 종류 : " + contentType +"<br>");
	out.println("파일의 크기 : " + fileSize +"<br>");	
	
	// 파일이 아닌 파라미터 정보
	String title = req.getParameter("title");
	String content = req.getParameter("content");

	out.println("title : " + title + "<br>");
	out.println("content : " + content + "<br>");
	
	// database로 입력
	DataRoom dr = new DataRoom();
	dr.setContent(content);
	dr.setContentType(contentType);
	dr.setFileSize(fileSize);
	dr.setOrifile(oriFileName);
	dr.setSysfile(sysFileName);
	dr.setTitle(title);
	dr.insert();
	out.println("DB로 저장 성공");
	
} catch(Exception e) {
	e.printStackTrace(new PrintWriter(out));
}
%>
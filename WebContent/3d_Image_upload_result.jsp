<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.io.*"
    import="com.oreilly.servlet.*"
    import="com.oreilly.servlet.multipart.*"
    import="image.*"
%>
<%!
// �����
String saveFolder = "./3d_images"; // ���� ������
int maxPostSize = 5 * 1024 * 1024; 	// 5Mb
String encoding = "euc-kr";
%>
<%
MultipartRequest req = null;
try {
	req = new MultipartRequest(request, this.saveFolder, this.maxPostSize, this.encoding, new DefaultFileRenamePolicy());
	out.println("<p>���ε� ����</p>");
	
	// ���ϸ���?
	String oriFileName = req.getOriginalFileName("myFile");
	String sysFileName = req.getFilesystemName("myFile");
	
	// ������ ������?
	String contentType = req.getContentType("myFile");
	
	// ������ ũ���?
	long fileSize = req.getFile("myFile").length();
	
	out.println("���� ���ϸ� : " + oriFileName +"<br>");
	out.println("���� ���ϸ� : " + sysFileName +"<br>");
	out.println("������ ���� : " + contentType +"<br>");
	out.println("������ ũ�� : " + fileSize +"<br>");	
	
	// ������ �ƴ� �Ķ���� ����
	String title = req.getParameter("title");
	String content = req.getParameter("content");

	out.println("title : " + title + "<br>");
	out.println("content : " + content + "<br>");
	
	// database�� �Է�
	DataRoom dr = new DataRoom();
	dr.setContent(content);
	dr.setContentType(contentType);
	dr.setFileSize(fileSize);
	dr.setOrifile(oriFileName);
	dr.setSysfile(sysFileName);
	dr.setTitle(title);
	dr.insert();
	out.println("DB�� ���� ����");
	
} catch(Exception e) {
	e.printStackTrace(new PrintWriter(out));
}
%>
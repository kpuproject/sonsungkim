<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form name="form1" method="post" action="3d_Image_upload_result.jsp"
		enctype="multipart/form-data">
		���� : <input type="text" name="title"><br> ���� : <input
			type="file" name="myFile"><br> ���� :
		<textarea name="content" rows="5" cols="30""></textarea>
		<br> <input type="submit" value="����"> <input type="reset"
			value="���">
	</form>
</body>
</html>
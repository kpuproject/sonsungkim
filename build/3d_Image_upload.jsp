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
		제목 : <input type="text" name="title"><br> 파일 : <input
			type="file" name="myFile"><br> 설명 :
		<textarea name="content" rows="5" cols="30""></textarea>
		<br> <input type="submit" value="전송"> <input type="reset"
			value="취소">
	</form>
</body>
</html>
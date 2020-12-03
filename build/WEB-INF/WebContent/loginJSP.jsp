<%@pagepageEncoding="UTF-8" contentType="text/html; charset-UTF-8" %>
<%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<%request.setCharacterEncoding("utf-8");%>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" /> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name='viewport' content='width=device-width'>
	<title>Lorem Ipsum</title>
</head>
<body>
	/* THIS JSP CHECK LOGIN INFORMATION AND EXECUTE LOGIN METHOD */
	<%
		UserDAO userDAO = new UserDAO();	//인스턴스 생성
		int result = userDAO.login(request.getParameter("id"), request.getParameter("password"));
		//로그인 성공
		if(result == 1){
			RequestDispatcher dispatcher = request.getRequestDispatcher("modelListPage.jsp");
			dispatcher.forward(request, response);
		}
		//로그인 실패
		else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디 혹은 비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		//알수없는 오류
		else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('알수없는 오류입니다. 관리자에게 문의주세요.')");
			script.println("history.back()");
			script.println("</script>");
		}
		
	%>
</body>
</html>
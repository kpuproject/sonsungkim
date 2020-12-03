<%@pagepageEncoding="UTF-8" contentType="text/html; charset-UTF-8" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name='viewport' content='width=device-width'>
	<title>Lorem Ipsum</title>
	<style type="text/css">
		form {
			width: 20em;
			font-size: 1.4em;
		}

		form img {
			margin: 1em;
		}

		form input[type="text"],input[type="password"] {
			height: 1.4em;
			padding: 0.5em;
			margin: 0 0 1em 0;
		}

		form input[type="submit"] {
			height: 2.4em;
			margin: 0 0 1em 0;
		}

		a {
			color: gray;
			margin: 1em;
		}

		body {
			background-color: #EAEAEA;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="css/global.css">
</head>
<body class="fullpage flex-column flex-center">
	<form action="loginJSP.jsp" method="POST" class="flex-column">
		<div class="flex-center flex-column">
			<a href="modelListPage.jsp">
				<img src="img/logo.png">
			</a>
		</div>
		<input type="text" name="id" placeholder="id">
		<input type="password" name="password" placeholder="password">
		<input type="submit" value="로그인">
	</form>
	<div class="flex-row">
		<a href="/register">회원가입</a>
		<a href="/find-id">아이디 찾기</a>
		<a href="/find-pw">비밀번호 찾기</a>
	</div>
</body>
</html>
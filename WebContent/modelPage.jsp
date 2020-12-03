<%@pagepageEncoding="UTF-8" contentType="text/html; charset-UTF-8" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name='viewport' content='width=device-width'>
	<title>3D 프린팅 오브젝트 사이트</title>
	<style type="text/css">
		.right-side {
			margin-left: 5em;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="css/global.css">
</head>
<body>
	<header>
		<div>
			<img class="logo" src="img/logo.png" alt="logo">
			<a href="/modelListPage.jsp">3D 모델</a>
			<div>
				<a href="/loginPage.jsp">로그인</a>
				<a href="/registerPage.jsp">회원가입</a>
			</div>
		</div>
	</header>
	<main class="flex-row flex-center">
		<div class="flex-column left-side">
			<img src="img/3dmodel.jpg" alt="model preview">
			<h1>여행하는 사람</h1>
			<div>
				<h2>설명</h2>
				<p>Lorem ipsum dolor</p>
			</div>
		</div>
		<div class="flex-column right-side">
			<a href="userPage.jsp?user=123" class="user"><h3><img src="img/user.png" class="user"><span class="user">돈까스</span>님의 작품</h3></a>
			<button>파일 다운로드</button>
			<button>3D 프린터 연결</button>
			<div class="flex-column">
				<div>조회수 <span>1,346</span></div>
				<div>다운로드수 <span>92</span></div>
				<div>추천수 <span>4</span></div>
			</div>
		</div>
	</main>
</body>
</html>
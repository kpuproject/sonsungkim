<%@pagepageEncoding="UTF-8" contentType="text/html; charset-UTF-8" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name='viewport' content='width=device-width'>
	<title>3D 프린팅 오브젝트 사이트</title>
	<style type="text/css">
		.printer {
			width: 150px;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="css/global.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" integrity="sha256-MAgcygDRahs+F/Nk5Vz387whB4kSK9NXlDN3w58LLq0=" crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<div>
			<class="logo" src="/logo.png" alt="logo">
			<a href="modelListPage.jsp">3D 모델</a>
			<div>
				<a href="loginPage.jsp">로그인</a>
				<a href="registerPage.jsp">회원가입</a>
			</div>
		</div>
	</header>
	<div class="flex-column">
		<div class="flex-row">
			<src="img/user.png" class="user">
			<h1><span class="user">돈까스</span>님</h1>
		</div>
		<div class="flex-center flex-column">
			<h3>내 3D 프린터 정보</h3>
			<src="img/3dprinter.png" class="printer">
			<h3>플래시포지 어드벤쳐3, (FlashForge Adventurer3)</h3>
		</div>
	</div>
	<div class="flex-column flex-center">
		<h2><span class="user">돈까스</span>님이 업로드한 3D모델</h2>
		<ul class="grid model-list">
			<li><a href="modelPage.jsp?model=433"><div><src="img/3dmodel.jpg" alt="preview">여행하는 사람<div><span class="user">돈까스</span>님이 만든 3D 모델</div><div><i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i> 30, <i class="fas fa-heart"></i> 30</div></div></a></li>
		</ul>
	</div>
</body>
</html>
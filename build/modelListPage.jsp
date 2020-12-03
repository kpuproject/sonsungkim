<%@pagepageEncoding ="UTF-8" contentType="text/html; charset-UTF-8"%>
<%@ page import="user.UserDAO"%>
<!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter"%>
<!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name='viewport' content='width=device-width'>
<title>3D íë¦°í ì¤ë¸ì í¸ ì¬ì´í¸</title>
<style type="text/css">
nav {
	justify-content: space-between;
	border-bottom: 1px solid black;
}

nav ul {
	list-style: none;
}

nav ul li {
	margin: 0 1em;
}
</style>
<link rel="stylesheet" type="text/css" href="css/normalize.css">
<link rel="stylesheet" type="text/css" href="css/global.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js"
	integrity="sha256-MAgcygDRahs+F/Nk5Vz387whB4kSK9NXlDN3w58LLq0="
	crossorigin="anonymous"></script>
</head>
<body class="fullpage">
	<header>
		<div>
			<%
				PrintWriter script = response.getWriter();
				script.println("<img class='logo' src='img/logo.png' alt='logo'>");
				script.println("<a href='modelListPage.jsp'>3D 모델</a>");
				script.println("<div style='float:right;'>");
				UserDAO userDAO = new UserDAO();
				//유저 아이디로 닉네임체크
				String nickname = userDAO.checkNickname(request.getParameter("id"));
				if (nickname != "") { //닉네임이 존재하면 출력
					script.println("<h3>");
					script.println(nickname + "님");
					script.println("</h3>");
				} else { //닉네임이 존재하지 않으면 로그인, 회원가입 창 출력
					script.println("<a href='loginPage.jsp'>로그인</a>");
					script.println("<a href='registerPage.jsp'>회원가입</a>");
				}
				script.println("</div>");
			%>
		</div>
		<!-- category -->
	</header>
	<nav class="flex-row">
		<ul class="flex-row">
			<li><a href="modelListPage.jsp?category=a">전체</a></li>
			<li><a href="modelListPage.jsp?category=m">미니어처</a></li>
			<li><a href="modelListPage.jsp?category=f">피규어</a></li>
			<li><a href="modelListPage.jsp?category=t">장난감</a></li>
			<li><a href="modelListPage.jsp?category=l">생활용품</a></li>
			<li><a href="modelListPage.jsp?category=i">인테리어</a></li>
			<li><a href="modelListPage.jsp?category=j">쥬얼리. 패션악세사리</a></li>
			<li><a href="modelListPage.jsp?category=s">학습도구</a></li>
			<li><a href="modelListPage.jsp?category=o">기타</a></li>
		</ul>
		<div class="flex-center">
			<button>인기순</button>
			<button>신규순</button>
			<button>조회순</button>
			<div>
				<form>
					<input type="text" name="search" placeholder="통합검색"><input
						type="submit" value="검색">
				</form>
			</div>
		</div>
	</nav>
	<div class="flex-center">
		<ul class="grid model-list">
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
			<li><a href="modelPage.jsp?model=433"><div>
						<img src="img/3dmodel.jpg" alt="preview">ì¬ííë ì¬ë
						<div>
							<span class="user">ëê¹ì¤</span>ëì´ ë§ë  3D ëª¨ë¸
						</div>
						<div>
							<i class="fas fa-eye"></i> 30, <i class="fas fa-download"></i>
							30, <i class="fas fa-heart"></i> 30
						</div>
					</div></a></li>
		</ul>
	</div>
</body>
</html>
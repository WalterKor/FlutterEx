<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 화면사이즈를 최적화한는 코드 -->
<meta name="viewport" content="width = device-width", initial-scale ="1">
<link rel="stylesheet" href="/css/bootstrap.css">
<title>BBS</title>
</head>
<body>
	<nav class="navbar navbar-default"> <!--네비게이션-->
		<div class="navbar-header"><!--네비게이션 상단부분-->
			<!--네비게이션 상단박스 영역-->
			<button type="button" class="navbar-toggle collapsed"
			data-toggle = "collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">Jsp게시판 웹사이트</a>
		</div>
		<!--게시판 제목 이름 옆에 나타나는 메뉴영역-->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<!-- 헤더 우측에 나타나는 드랍다운영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						접속하기 <span class="caret"></span></a>
						
						<!--드랍다운 아이템 영역-->
						<ul class="dropdown-menu">
							<li class="active"><a href="/user/login">로그인</a></li>
							<li><a href="/user/join">회원가입</a></li>
						</ul>
				</li>
			</ul>
		</div>
	</nav>
	<!--로그인 양식-->
	<div class="container">
		<div class="col">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="/user/login" method="post">
					<h3 style="text-align:center;">로그인화면</h3>
						<div class="form-grop">
							<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
						</div>
						<br>
						<div class="form-grop">
							<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
						</div>
						<br>
						<div>
							<input type="submit" class="btn btn-primary form-control" value="로그인">						
						</div>
				</form>
			
			</div>
		</div>
	</div>
	<!--부트스트랩 참조 영역-->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="/js/bootstrap.js?ver=1"></script>	
</body>
</html>
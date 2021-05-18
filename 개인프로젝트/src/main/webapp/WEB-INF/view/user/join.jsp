<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면사이즈를 최적화한는 코드 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width = device-width", initial-scale ="1">
<link rel="stylesheet" href="/css/bootstrap.css">
<title>BBS</title>
</head>
<body>
	
	<nav class="navbar navbar-default"> <!--네비게이션-->
		<div class="navbar-header"><!--네비게이션 상단부분-->
			<!--네비게이션 상단박스 영역-->
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
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
	
	
	
	<!--회원가입 영역-->
		<div class="contianer">
			<div class="col">
				<div class="jumbotron" style="padding-top: 20px; padding-left: 20px; padding-right: 20px; margin-left: 50px; margin-right: 50px">
					<form action="/user/join" method="post">
						<h3 style="text-align: center;">회원가입 화면</h3>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
						</div>
						<div class="form-group" style="text-align: center;">
							<div class="btn-group" data-togle="buttons">
								<label class="btn btn-primary active">
									<input type="radio" name="UserGender" autocomplete="off" value="남자" checked="checked">남자
								</label>							
								<label class="btn btn-primary active">
									<input type="radio" name="UserGender" autocomplete="off" value="여자" checked="checked">여자
								</label>							
							</div>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="이메일" name="userEamil" maxlength="20">
						</div>
						<input type="submit" class="btn btn-primary form-control" value="회원가입">
					</form>
				</div>
			
			</div>
		</div>
	<!--부트스트랩 참조 영역-->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="/js/bootstrap.js?ver=1"></script>	
</body>
</html>
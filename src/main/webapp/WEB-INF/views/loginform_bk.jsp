<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잉력시장 로그인 화면입니다.</title>
</head>
<body>
<h1>잉력시장 로그인 화면입니다.</h1>
<div>
	<form action="/javas/login" method="post">
		유저 아이디 : <input type="text" name="mem_userid" required><br>
		패스워드 : <input type="password" name="mem_password" required><br>
		<input type="submit" value="로그인">
	</form>
	<button onclick="location.href='/javas/resources/meminfo.jsp'">아직 회원이 아니시라면 클릭!</button>
	<button>아이디를 잊어버리셨나요...?</button>
	<button>비밀번호를 까먹었다능!</button>
</div>
</body>
</html>
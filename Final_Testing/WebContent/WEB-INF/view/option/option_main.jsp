<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MainPage</title>
</head>

<script>
	function logout() {

		var out = confirm("정말 로그아웃 하시겠습니까?");

		if (out) {
			location.href = "/HoneyComb/Option_user/logout_page.jsp";
		} else {
			return false;
		}
	}
</script>

<style>
#option {
	font-size: 37px;
}

hr {
	width: 300px;
	border-top: 1px solid #bbb;
	border-bottom: 1px solid #bbb;
}

.menu {
	background-color: #4367b0;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	display: block;
	cursor: pointer;
	color: #fff;
	font-size: 15px;
	padding: 8px 25px;
	text-decoration: none;
	margin: 0 auto;
	width: 200px;
	margin-top: 30px;
	margin-bottom: 30px;
	text-decoration: none;
}

.menu:hover {
	background-color: #344d91;
	color: white;
	text-decoration: none;
}

.menu:active {
	position: relative;
	top: 1px;
}

#back {
	background-color: #4367b0;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	display: block;
	cursor: pointer;
	color: #fff;
	font-size: 15px;
	padding: 5px 10px;
	text-decoration: none;
	margin: 0 auto;
	width: 100px;
	margin-top: 100px;
	margin-bottom: 30px;
}

#back:hover {
	background-color: #344d91;
	color: white;
}

#back:active {
	position: relative;
	top: 1px;
}
</style>

<body onselectstart="return false" ondragstart="return false">

	<form align="center">
		<h1 id="option">Option</h1>
		<hr>
		<a href='/Final_Testing/option/company_member_check' class="menu">현재원</a>

		<c:if test="${com_pos_num <= 4 }">
			<a href='/Final_Testing/option/accept' class="menu">가입승인</a>
		</c:if>
		
		<a href='/Final_Testing/option/chart' class="menu">조직도</a>

		<a href='/Final_Testing/option/mypage' class="menu">마이페이지</a>

		<p></p>
		<p></p>
			<a href='/Final_Testing/index.jsp' id="back">뒤로가기</a>
	</form>

</body>
</html>

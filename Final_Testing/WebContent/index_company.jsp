<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<%

request.getSession().setAttribute("mem_num", "1102");
request.getSession().setAttribute("name", "user112");
request.getSession().setAttribute("email", "user112@naver.com");
request.getSession().setAttribute("passwd", "1");
request.getSession().setAttribute("phone_num", "110004");

%>

</head>
<body>

	<a href="final_test/chart.do">/final_test/chart.do
	</a>
	<br />
	<a href="company/companyForm.do">/company/companyForm.do</a>
	<br />
	

</body>
</html>

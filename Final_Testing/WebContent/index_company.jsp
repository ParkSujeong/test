<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<%

request.getSession().setAttribute("mem_num", "1053");
request.getSession().setAttribute("name", "user53");
request.getSession().setAttribute("email", "user53@naver.com");
request.getSession().setAttribute("passwd", "1");
request.getSession().setAttribute("phone_num", "1011111111");

%>

</head>
<body>

	<a href="company/companyForm">/company/companyForm</a>
	<br />

</body>
</html>

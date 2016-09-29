<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<%

request.getSession().setAttribute("com_num", 1001);
request.getSession().setAttribute("com_name", "naver");

%>

</head>
<body>

	<a href="final_test/chart.do">/final_test/chart.do</a>
	<br />
	<a href="company/companyForm.do">/company/companyForm.do</a>
	<br />

</body>
</html>

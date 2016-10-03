<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<%

request.getSession().setAttribute("mem_num", "1000");
request.getSession().setAttribute("name", "김사장");
request.getSession().setAttribute("email", "imceo@naver.com");
request.getSession().setAttribute("passwd", "1");
request.getSession().setAttribute("phone_num", "1011111111");
request.getSession().setAttribute("com_num", 1001);
request.getSession().setAttribute("com_name", "naver");
request.getSession().setAttribute("com_pos_num", "1");

%>

</head>
<body>

	<a href="option/option_main">/option/option_main</a>
	<br />

</body>
</html>

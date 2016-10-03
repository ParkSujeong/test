<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로☆그☆아☆웃</title>
</head>
<%
	session.invalidate();
%>

<script>
	var Backlen = history.length;
	history.go(-Backlen);
	window.location.href = '/Final_Testing/index.jsp';
</script>


<body>

</body>
</html>

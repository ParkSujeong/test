<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<style>
body {
	width: 100%;
	margin-top: 2%;
}

table {
	border-collapse: collapse;
	margin: 0 auto;
}

tr, td {
	border: 1px solid black;
	text-align: center;
}

.title {
	
}

</style>

</head>
<body>

	<table>
		<tr>
			<td class="title">직급</td>
			<td class="title">성명</td>
			<td class="title">전화번호</td>
			<td class="title">이메일</td>
			<td class="title"></td>
		</tr>

		<c:if test="${ !empty dept_List }">
			<c:forEach var="dept_List" items="${ dept_List }">
				<tr>
					<td>${ dept_List.com_pos_name }</td>
					<td>${ dept_List.name }</td>
					<td>${ dept_List.phone_num }</td>
					<td>${ dept_List.email }</td>
					<td>mem_num은 ${ dept_List.mem_num }</td>
				</tr>
			</c:forEach>
		</c:if>

		<c:if test="${ empty dept_List }">
			<tr>
				<td colspan="5">데이터 음슴</td>
			</tr>
		</c:if>

	</table>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<script>

function view_resume(num) {
	var mem_num = num;
	/* "final_test/mem_resume.do?mem_num=" + mem_num */
	window.open("mem_resume.do?mem_num=" + mem_num, "", "scrollbars=yes,resizale=no, menubar=no, resizeble=yes, width=500, heigth=400, right=200, botton=200");
}

</script>

<style>
body {
	width: 100%;
	margin-top: 2%;
}

table, tr, th, td {
	margin: 0 auto;
	border-collapse: collapse;
	border: 1px solid #fff;
	cellpadding: 0;
	cellspacing: 0;
	font-size: 14px;
	padding: 8px;
}

tr, td {
	border: 1px solid black;
	text-align: center;
}

.title {
	background: #344d91;
	color: white;
}

#text {
	background: #e9ebee;
	color: black;
	cursor: pointer;
}

#text:HOVER {
	background-color: #A4A4A4;
	color: black;
}

#com_pos_name {
	width: 50px;
}

#name {
	width: 80px;
}

#phone_num {
	width: 130px;
}

#email {
	width: 150px;
}
</style>

</head>
<body ondragstart="return false">

	<table>
		<tr>
			<td class="title">직 급</td>
			<td class="title">성 명</td>
			<td class="title">전화번호</td>
			<td class="title">이메일</td>
		</tr>

		<c:if test="${ !empty dept_List }">
			<c:forEach var="dept_List" items="${ dept_List }">
				<tbody id="content_tbody">
					<tr id="text"  onclick="view_resume(${ dept_List.mem_num })">
						<td id="com_pos_name">${ dept_List.com_pos_name }</td>
						<td id="name">${ dept_List.name }</td>
						<td id="phone_num">${ dept_List.phone_num }</td>
						<td id="email">${ dept_List.email }</td>
					</tr>
				</tbody>
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

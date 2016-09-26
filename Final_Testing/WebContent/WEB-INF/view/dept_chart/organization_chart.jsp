<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	width: 60px;
	height: 30px;
}

.box {
	background-color: #345C86;
	color: white;
	font-weight: bold;
	margin: auto;
	text-align: center;
}

.box_CEO {
	background-color: #345C86;
	color: white;
	font-weight: bold;
	margin: auto;
	text-align: center;
}

.box_button {
	background-color: #95A7B6;
	margin: auto;
	text-align: center;
}

.box_button:HOVER {
	background-color: #7EC5D8;
}

.line_no_bottom {
	border-top: 2px solid #345C86;
	border-left: 2px solid #345C86;
	border-right: 2px solid #345C86;
}

.line_no_top {
	border-top: hidden;
}

.line_on_rt {
	border-right: 2px solid #345C86;
}

.line_on_top {
	border-top: 2px solid #345C86;
}

.button_size_one {
	height: 20px;
}

.button_size_two {
	height: 40px;
}
</style>
</head>
<body>

	<!-- 14*16 -->
	<table>

		<!-- 1 -->
		<tr>
			<td colspan="6" rowspan="2"></td>
			<td colspan="2" rowspan="2" class="box_CEO">CEO Name</td>
			<td colspan="6" rowspan="2"></td>
		</tr>

		<!-- 2 -->
		<tr>
		</tr>

		<!-- 3 -->
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td rowspan="5" class="line_on_rt"></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<!-- 4 -->
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<!--  -->
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

<c:forEach var="dept" items="${ dept }">
<c:choose>
<c:when test="${ dept.key == 1 }">
		<!-- 5 -->
		<tr class="button_size_one">
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<!--  -->
			<td></td>
			<td></td>
			<td></td>
			<td colspan="2" rowspan="2" class="box_button">${ dept.value }</td>
			<td></td>
			<td></td>
		</tr>
</c:when>
</c:choose>
</c:forEach>


		<!-- 6 -->
		<tr class="button_size_one">
			<td></td>

			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<!--  -->
			<td colspan="3" class="line_on_top"></td>
			<!--  -->
			<td></td>
			<td></td>
		</tr>

		<!-- 7 -->
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<!--  -->
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<!-- 8 -->
		<tr>
			<td></td>
			<td colspan="3" class="line_no_bottom"></td>
			<td colspan="3" class="line_no_bottom"></td>
			<td colspan="3" class="line_no_bottom"></td>
			<td colspan="3" class="line_no_bottom"></td>
			<td></td>
		</tr>

		<!-- 9 -->
		<tr>
			<td colspan="2" rowspan="2" class="box">관리부</td>
			<td rowspan="2" class="line_no_top"></td>
			<td colspan="2" rowspan="2" class="box">경영부</td>
			<td rowspan="2" class="line_no_top"></td>
			<td colspan="2" rowspan="2" class="box">제품부</td>
			<td rowspan="2" class="line_no_top"></td>
			<td colspan="2" rowspan="2" class="box">기술부</td>
			<td rowspan="2" class="line_no_top"></td>
			<td colspan="2" rowspan="2" class="box">영업부</td>
		</tr>

		<!-- 10 -->
		<tr>
		</tr>
		

		<!-- 11 -->
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<!-- 12 -->
		<tr class="button_size_two">
		<c:forEach var="dept1" items="${ dept }">
		<c:choose>
		<c:when test="${ dept1.key }">
			<td colspan="2" class="box_button">${ dept1.value }</td>
		</c:when>
		</c:choose>
		</c:forEach>
			<td></td>
			<td colspan="2" class="box_button"></td>
			<td></td>
			<td colspan="2" class="box_button"></td>
			<td></td>
			<td colspan="2" class="box_button"></td>
			<td></td>
			<td colspan="2" class="box_button"></td>
		</tr>


		<!-- 13 -->
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<!-- 14 -->
		<tr class="button_size_two">
			<td colspan="2" class="box_button"></td>
			<td></td>
			<td colspan="2" class="box_button"></td>
			<td></td>
			<td colspan="2" class="box_button"></td>
			<td></td>
			<td colspan="2" class="box_button"></td>
			<td></td>
			<td colspan="2" class="box_button"></td>
		</tr>

		<!-- 15 -->
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<!-- 16 -->
		<tr class="button_size_two">
			<td colspan="2" class="box_button"></td>
			<td></td>
			<td colspan="2" class="box_button"></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td colspan="2" class="box_button"></td>
		</tr>


	</table>

</body>
</html>

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
	background-color: #E9CA34;
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

		<%-- <c:if test="${ dept.1 == 1 }"> --%>
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
			<td colspan="2" rowspan="2" class="box_button"></td>
			<td></td>
			<td></td>
		</tr>

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
		<%-- </c:if> --%>

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
			<td colspan="2" rowspan="2" class="box"></td>
			<td rowspan="2" class="line_no_top"></td>
			<td colspan="2" rowspan="2" class="box"></td>
			<td rowspan="2" class="line_no_top"></td>
			<td colspan="2" rowspan="2" class="box"></td>
			<td rowspan="2" class="line_no_top"></td>
			<td colspan="2" rowspan="2" class="box"></td>
			<td rowspan="2" class="line_no_top"></td>
			<td colspan="2" rowspan="2" class="box"></td>
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
	<c:forEach items="${dept}" var="dept_map">

		<c:choose>
			<c:when test="${dept_map.key == 1}">
${dept_map.value}

</c:when>



		</c:choose>


	</c:forEach>
</body>
</html>

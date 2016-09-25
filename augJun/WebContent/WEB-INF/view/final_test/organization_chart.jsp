<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Insert title here</title>

<style>
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd,
	q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr,
	th, td, article, aside, canvas, details, figcaption, figure, footer,
	header, hgroup, menu, nav, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	font-size: 100%;
	vertical-align: baseline;
	background: transparent;
}

body {
	line-height: 1;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

nav ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

a {
	margin: 0;
	padding: 0;
	font-size: 100%;
	vertical-align: baseline;
	background: transparent;
}

/* change colours to suit your needs */
ins {
	background-color: #ff9;
	color: #000;
	text-decoration: none;
}

/* change colours to suit your needs */
mark {
	background-color: #ff9;
	color: #000;
	font-style: italic;
	font-weight: bold;
}

del {
	text-decoration: line-through;
}

abbr[title], dfn[title] {
	border-bottom: 1px dotted;
	cursor: help;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

/* change border colour to suit your needs */
hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid #cccccc;
	margin: 1em 0;
	padding: 0;
}

input, select {
	vertical-align: middle;
}
</style>


<style>
body {
	width: 100%;
	margin-top: 2%;
}

table {
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
			<td colspan="2" rowspan="2" class="box_CEO"><br />CEO Name</td>
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

</body>
</html>

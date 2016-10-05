<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이력서</title>
<style>
table, tr, th, td {
	border-collapse: collapse;
	border: 1px solid #bbb;
	cellpadding: 0;
	cellspacing: 0;
	font-size: 13px;
	padding: 8px;
	height: 12px;
	margin: 0 auto;
	text-align: center;
}

h2 {
	text-align: center;
}

.title {
	text-align: left;
	margin-bottom: 5px;
	margin-top: 10px;
	margin-left: 10px;
	font-size: 14px;
	font-weight: bold;
}

#main {
	text-align: center;
	margin: 0 auto;
	height: 900px;
	width: 600px;
}

.wi {
	width: 120px;
}

.wi_sum {
	width: 240px;
}
</style>
</head>
<body>

<div id="main">

<h2>이 력 서</h2>
<table>
<tr>
<td rowspan="4" class="wi"></td>
<td class="wi">성   명</td>
<td class="wi"></td>
<td class="wi">부  서</td>
<td class="wi"></td>
</tr>

<tr>
<!-- <td></td> -->
<td>주민등록번호</td>
<td colspan="3"></td>
<!-- <td></td> -->
<!-- <td></td> -->
</tr>

<tr>
<!-- <td></td> -->
<td>주   소</td>
<td colspan="3"></td>
<!-- <td></td> -->
<!-- <td></td> -->
</tr>

<tr>
<!-- <td></td> -->
<td colspan="2">핸드폰 번호</td>
<!-- <td></td> -->
<td colspan="2"></td>
<!-- <td></td> -->
</tr>

<tr>
<td>E-mail</td>
<td colspan="2"></td>
<!-- <td></td> -->
<td></td>
<td></td>
</tr>

</table>

<table>
<p class="title">학 력</p>
<tr>
<td class="wi_sum">학교명</td>
<td colspan="2" class="wi_sum">재학기간</td>
<!-- <td></td> -->
<td colspan="2" class="wi_sum">전 공 / 학 과</td>
<!-- <td></td> -->
</tr>

<tr>
<td></td>
<td colspan="2"></td>
<!-- <td></td> -->
<td colspan="2"></td>
<!-- <td></td> -->
</tr>

</table>

<table>
<p class="title">교육 이수</p>

<tr>
<td class="wi">기관명</td>
<td class="wi">연수과정</td>
<td colspan="2" class="wi_sum">연수 기간</td>
<!-- <td></td> -->
<td class="wi">개월 / 교육시간</td>
</tr>

<tr>
<td></td>
<td></td>
<td colspan="2"></td>
<!-- <td></td> -->
<td></td>
</tr>

</table>

<table>
<p class="title">자격증</p>

<tr>
<td colspan="2" class="wi_sum">자격증명</td>
<!-- <td></td> -->
<td class="wi">발행처</td>
<td colspan="2" class="wi_sum">취득일</td>
<!-- <td></td> -->
</tr>

<tr>
<td colspan="2" class="colspan"></td>
<!-- <td></td> -->
<td></td>
<td colspan="2"></td>
<!-- <td></td> -->
</tr>

</table>

<table>
<p class="title">병 역</p>

<tr>
<td class="wi">군필여부</td>
<td class="wi"></td>
<td class="wi">면제사유</td>
<td class="wi"></td>
<td class="wi">복무처</td>
<td class="wi"></td>
</tr>

<tr>
<td colspan="2">복무기간</td>
<!-- <td></td> -->
<td colspan="4"></td>
<!-- <td></td> -->
<!-- <td></td> -->
<!-- <td></td> -->
</tr>

</table>

<table>
<p class="title">경 력</p>

<tr>
<td class="wi">회사명</td>
<td class="wi">부서명</td>
<td class="wi">담당업무</td>
<td colspan="2" class="wi_sum">근무기간</td>
<!-- <td></td> -->
</tr>

<tr>
<td></td>
<td></td>
<td></td>
<td colspan="2"></td>
<!-- <td></td> -->
</tr>

</table>

</div>

</body>
</html>

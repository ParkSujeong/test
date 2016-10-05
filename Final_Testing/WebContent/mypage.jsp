<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<script type='text/javascript'
	src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js'></script>
<script>
	function init() {
		window.location.reload(true);
	}

	/* 	function passwd_confirm() {
	 // 비밀번호 변경 폼

	 var url = '/Final_Testing/option/passwd_ch_view';
	 open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"
	 + "scrollbars=no,left=100,top=100,width=400,height=170");

	 }

	 function user_del() {
	 // 계정 삭제 폼

	 var url = '/HoneyComb/Option_user/user_delete.option';
	 open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"
	 + "scrollbars=no,left=100,top=100,width=400,height=170");

	 } */

	function file_extension(form) {
		// img파일인지 확인

		alert(input);
		return false;
		/* var check = document.profile_img_upload.file_route.value; // check : 파일명
		var extension = check.substr(check.length - 3); // 확장자
		alert(check);
		if (!(extension == 'png' || extension == 'bmp' || extension == 'gif' || extension == 'jpg')) {
			// 사진파일이 아닐때
			alert("사진 파일만 선택해주세요\n * png, bmp, gif, jpg \n");
			return false;

		} else if (extension == 'png' || extension == 'bmp'
				|| extension == 'gif' || extension == 'jpg') {
			// 사진파일일때 action실행
			alert("??")
			window.location.reload();
			return false;
		}
		return false; */
	}
	var input;

	$(document).ready(function() {
		$('.file_wrap').click(function() {

			$('#profile_img').click();
		});

		$('#profile_img').change(function() {
			input = $(this).val();
			var input_value = input.replace("C:\\fakepath\\", "");
			$('.file_text').val(input_value);
		});

	});
</script>

<style>
body {
	width: 100%;
	margin-top: 2%;
}

table, tr, th, td {
	margin: 0 auto;
	border-collapse: collapse;
	border: 1px solid #bbb;
	cellpadding: 0;
	cellspacing: 0;
	font-size: 14px;
	padding: 10px;
	width: 400px;
	height: 20px;
}

#top {
	width: 300px;
	height: 70px;
	text-align: center;
	margin: 0 auto;
}

/* 상단 프로필 */
#div_pro_map {
	width: 400px;
	height: 150px;
	border: 1px solid #bbb;
	margin: 0 auto;
}

#div_pro {
	width: 150px;
	height: 150px;
	border: 3px solid #bbb;
	float: left;
	text-align: center;
	border-radius: 100px;
}

#div_pro_search {
	width: 230px;
	height: 150px;
	border: 1px solid #bbb;
	float: right;
	text-align: center;
}

#img_myprofile {
	width: 100px;
	height: 104px;
	width: 100px;
	margin-top: 20px;
}
/* 상단 프로필 */

/* file */
#div_file_search {
	float: right;
	margin: 0 auto;
	margin-top: 40px;
	padding: 5px;
	border: 1px solid #bbb;
	width: 200px;
	height: 35px;
}

.file_text {
	float: left;
	width: 150px;
	height: 16px;
}

.file_wrap {
	display: inline-block;
	width: 30px;
	height: 30px;
	margin-bottom: 5px;
	background: url(/Final_Testing/resources/images/search_one.png)
		no-repeat;
	background-size: 30px;
	border: 1px solid #bbb;
	cursor: pointer;
}

.file_wrap:HOVER {
	width: 30px;
	height: 30px;
	background: url(/Final_Testing/resources/images/search_two.png)
		no-repeat;
	background-size: 30px;
}

.file_hidden {
	position: absolute;
	left: -9999px;
	width: 30px;
	height: 30px;
	width: 30px;
	width: 30px;
	left: -9999px;
}
/* file */

/* table */
#div_table {
	border: 1px solid #bbb;
	width: 400px;
	height: 210px;
	margin: 0 auto;
	margin-top: 30px;
}

.title {
	width: 180px;
	text-align: center;
	font-size: 16px;
	margin: 0 auto;
}
/* table */

/* function */
#div_func {
	margin: 0 auto;
	margin-top: 10px;
	width: 400px;
	height: 185px;
	border-top: 3px solid #bbb;
	border-bottom: 3px solid #bbb;
}

.functions {
	width: 400px;
	height: 60px;
	margin: 0 auto;
}

.div_text {
	width: 320px;
	height: 50px;
	float: left;
	padding-left: 15px;
	text-align: left;
	top: 40px;
	line-height: 25px;
}

#passwd_ch, #account_drop, #resume_ch {
	width: 60px;
	height: 40px;
	float: right;
	text-align: center;
	margin-top: 10px;
}

#div_line {
	border-top: 1px solid #bbb;
	border-bottom: 1px solid #bbb;
}
/* function */

/* image */
a#pw {
	display: block;
	width: 40px;
	height: 40px;
	background: url(/Final_Testing/resources/images/pw_one.png) no-repeat;
	background-size: 40px;
	margin: 0 auto;
}

a:HOVER#pw {
	background: url(/Final_Testing/resources/images/pw_two.png) no-repeat;
	background-size: 40px;
}

a#pw span {
	display: none;
}

a#resume {
	display: block;
	width: 40px;
	height: 40px;
	background: url(/Final_Testing/resources/images/resume_one.png)
		no-repeat;
	background-size: 40px;
	margin: 0 auto;
}

a:HOVER#resume {
	background: url(/Final_Testing/resources/images/resume_two.png)
		no-repeat;
	background-size: 40px;
}

a#resume span {
	display: none;
}

a#account {
	display: block;
	width: 40px;
	height: 40px;
	background: url(/Final_Testing/resources/images/account_one.png)
		no-repeat;
	background-size: 40px;
	margin: 0 auto;
}

a:HOVER#account {
	background: url(/Final_Testing/resources/images/account_two.png)
		no-repeat;
	background-size: 40px;
}

a#account span {
	display: none;
}
/* image */

/* button */
.button {
	background-color: #4367b0;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	display: block;
	cursor: pointer;
	color: #fff;
	font-size: 15px;
	padding: 5px 10px;
	text-decoration: none;
	margin: 0 auto;
}

.button:hover {
	background-color: #344d91;
	color: white;
}

.button:active {
	position: relative;
	top: 1px;
}
/* button */
</style>



</head>
<body>

	<div id="top">
		<h2>My Page</h2>
	</div>
	<div id="div_pro_map">

		<div id="div_pro">
			<img src="${ sessionScope.profile_img }" name="profile_img"
				onerror="this.src='/Final_Testing/resources/images/user.png'"
				title="내 프로필 사진" id="img_myprofile">
		</div>

		<div id="div_pro_search">

			<form id="profile_img_upload" method="post"
				enctype="multipart/form-data" action="#"
				onsubmit="return file_extension(this);">
				<div id="div_file">
					<div id="div_file_search">
						<input type="text" id="file_route" name="file_route"
							class="file_text" readonly /> <span class="file_wrap"> </span> <input
							type="file" value="선택" name="profile_img" id="profile_img"
							class="file_hidden" /> <input type="submit" value="Upload"
							class="button" />
					</div>
				</div>
			</form>

		</div>
	</div>

	<div id="div_table">
		<table>

			<tr>
				<td class="title">name</td>
				<td></td>
			</tr>

			<tr>
				<td class="title">e-mail</td>
				<td></td>
			</tr>

			<tr>
				<td class="title">cell-phone</td>
				<td></td>
			</tr>

			<tr>
				<td class="title">depertment</td>
				<td></td>
			</tr>

			<tr>
				<td class="title">position</td>
				<td></td>
			</tr>

		</table>
	</div>

	<div id="div_func">

		<div class="functions">
			<div class="div_text">
				<p>현재 비밀번호를 변경할 수 있습니다</p>
			</div>
			<div id="passwd_ch">
				<a href="/Final_Testing/option/passwd_ch_view" id="pw"><span>pwChange</span></a>
			</div>

		</div>

		<div class="functions" id="div_line">
			<div class="div_text">
				<p>이력서를 조회 및 수정할 수 있습니다</p>
			</div>
			<div id="resume_ch">
				<a href="/Final_Testing/option/mem_resume" id="resume"><span>resumeView</span></a>
			</div>

		</div>

		<div class="functions">
			<div class="div_text">
				<p>계정을 삭제할 수 있습니다</p>
			</div>
			<div id="account_drop">
				<a href="/Final_Testing/option/mem_resume" id="account"><span>accountDrop</span></a>
			</div>

		</div>

	</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>�α���</title>
<link href ="../../css/ch03-5.css"
		type ="text/css"
		rel = "stylesheet">
</head>
<body>
	<form action='login_ok' method="post">
		���̵� : <input type="text" name ="id" required><br>
		��й�ȣ : <input type="password" name="pw" required><br>
		<div class ="clearfix">
			<button type="submit" class="submitbtn">����</button>
			<button type="reset" class="cancelbtn">���</button>
		</div>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>ȸ�� ����</title>
<link href = "join.css" rel="stylesheet" type="text/css">
	<script src = "http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src = "join.js"></script>
</head>
<body>
<fieldset>
<legend>ȸ�� ����</legend>
<form action="joincheck.jsp" method="post">
	<table>
		<tr>
			<td><font size=2>���̵�</font></td>
			<td><input type="text" name="id" id="id"></td>
		</tr>
		<tr>
			<td><font size=2>��й�ȣ</font></td>
			<td><input type="password" name="pass" id="pass"></td>
		</tr>
		<tr>
			<td><font size=2>�̸�</font></td>
			<td><input type="text" name="name" id="name"></td>
		</tr>
		<tr>
			<td><font size=2>����</font></td>
			<td><input type="radio" name="gender" value="1" id="gender1">
			<font size=2>����</font>
			<input type="radio" name="gender" value="2" id="gender2">
			<font size=2>����</font></td>
		</tr>
		<tr>
			<td><font size=2>����</font></td>
			<td><input type="text" name="age" id="age"></td>
		</tr>
		<tr>
			<td><font size=2>E-Mail</font></td>
			<td><input type="text" name="email" id="email"></td>
		</tr>
		
		<tr>
			<td><font size=2>�ּ�</font></td>
			<td><input type="text" name="addr" id="addr"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="����" id="s">
				<input type="reset" value="�ٽ� �ۼ�" id="r">
			</td>
		</tr>
	</table>
</form>
</fieldset>
</body>
</html>
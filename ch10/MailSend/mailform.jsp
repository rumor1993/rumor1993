<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action = "MailSend.jsp" method = "post">
		<table border =1>
			<tr>
				<td colspan=2>�ڹٸ��� ������ </td>
			</tr>
			<tr>
				<td>������ ��� ����</td>
				<td><input type = "text" name = "sender"></td>
			</tr>
			<tr>
				<td>�޴� ��� ���� </td>
				<td><input type = "text" name ="receiver"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name = "subject"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea name = "content" cols=40 rows =10></textarea></td>
			</tr>
			<tr>
				<td colspan=2><input type = "submit" value="������"></td>
			</tr>
		</table>
	</form>
</body>
</html>
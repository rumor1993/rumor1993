<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Attribute Test</title>
</head>
<style>
	table{width:400px;margin:0 auto;}
 tr{height:50px;text-align:center}
 td:nth-child(2n){background:yellow; width:75%}
 td:nth-child(2n+1){background:orange;}
 tr:last-child > td {text-align:center;background:#5eba5e}
 input[type="text"]{width:96%;margin:0 1%;height:30px}
 tr:first-child > td  {background:#ef6b81}
</style>
<body>
<h1>������ �Ӽ� �׽�Ʈ</h1>
<form action="attributeTest1.jsp" method="post">
	<table border="1">
		<tr><td colspan="2">Application ������ ������ �����</td></tr>
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="name" required></td>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<td colspan="2"><input type ="submit" value="����"></td>			
		</tr>		
	</table>
</form>
</body>
</html>
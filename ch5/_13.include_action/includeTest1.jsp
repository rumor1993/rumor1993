<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
 h1{text-align: center}
 table{width:400px;margin:0 auto;}
 tr{height:50px;text-align:center}
 td:nth-child(2n){background:yellow; width:75%}
 td:nth-child(2n+1){background:orange;}
 input[type="text"]{width:96%;margin:0 1%;height:30px}
 tr:first-child > td  {background:#ef6b81}
</style>
<body>

<h1>������ �׼� �׽�Ʈ</h1>
<form action="includeTest2.jsp" method="post">
<%--hidden Ÿ���� input���� ���� ���������� ����� �ּҰ��� �����Ͽ����ϴ�. --%>
<input type="hidden" name="includePage" value="includeTest3.jsp">

	<table>
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>����</td>
			<td><input type="text" name="age"></td>
		</tr>
		<tr>
			<td>�ּ�</td>
			<td><input type="text" name="addr"></td>
		</tr>
		<tr>
			<td colspan="2"><input type ="submit" value="����"></td>			
		</tr>		
	</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
 table{width:400px;margin:0 auto;}
 tr{height:50px;text-align:center}
 td:nth-child(2n){background:yellow; width:75%}
 td:nth-child(2n+1){background:orange;}
 input[type="text"]{width:96%;margin:0 1%;height:30px}
 tr:first-child > td  {background:#ef6b81}
</style>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	if(name!=null && id!=null){
		application.setAttribute("name", name);
		application.setAttribute("id", id);
	}
%>
<h1>������ �Ӽ� �׽�Ʈ</h1>
<h2><%=name %>�� �ݰ����ϴ�.<br>
<%=name%>���� ���̵�� <%=id %>�Դϴ�.</h2>
<form action="attributeTest2.jsp" method="post">
	<table border="1">
		<tr><td colspan="2">Session ������ ������ �����</td></tr>
		<tr>
			<td>E-mail �ּ�</td>
			<td><input type="text" name="email" required></td>
		</tr>
		<tr>
			<td>�� �ּ�</td>
			<td><input type="text" name="addr" required></td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td><input type="text" name="tel" required></td>
		</tr>
		<tr>
			<td colspan="2"><input type ="submit" value="����"></td>			
		</tr>		
	</table>
</form>
</body>
</html>
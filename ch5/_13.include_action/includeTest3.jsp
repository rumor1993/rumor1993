<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%request.setCharacterEncoding("euc-kr"); %>
    <%@ page import="java.util.Enumeration" %>
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
	<h2>��Ŭ��� �� ������(includeTest3)</h2>
<table>
		<tr>
			<td>�̸�</td>
			<td><%=request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>����</td>
			<td><%=request.getParameter("age") %></td>
		</tr>
		<tr>
			<td>�ּ�</td>
			<td><%=request.getParameter("addr") %>></td>
		</tr>		
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("EUC-KR");	

	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String filename1 = request.getParameter("filename1");
	String filename2 = request.getParameter("filename2");
	
%>
<body>
	<Table border =1>
		<tr>
			<td colspan =2>���� �ٿ�ε� ��</td>
		</tr>
		<tr>
			<td>�ø����</td>
			<td><%=name %>></td>
		</tr>
		<tr>
			<td>����</td>
			<td><%=subject %></td>
		</tr>
		<tr>
			<td>���ϸ�1</td>
			<td><a href = "file_down.jsp?file_name=<%=filename1 %>"><%=request.getParameter("origfilename1") %></a></td>
		</tr>
		<tr>
			<td>���ϸ�2</td>
			<td><a href = "file_down.jsp?file_name=<%=filename2 %>"><%=request.getParameter("origfilename2") %></a></td>
		</tr>
	</Table>

</body>
</html>
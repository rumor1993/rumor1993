<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
    <% request.setCharacterEncoding("euc-kr"); %>
<body>

	<h1>Request �����Դϴ�.</h1>
	<table border="1">
		<tr>
			<th>�̸�</th>
			<td><%=request.getParameter("name") %></td>
		</tr>
		<tr>
			<th>����</th>
			<td><%if(request.getParameter("gender").equals("male")){ %>����
			<%}else{ %>����<%} %></td>
		</tr>
		<tr>
			<th>���</th>
			<td>
			<%String[] hobby = request.getParameterValues("hobby");
			for(String i : hobby){%>
			<%=i%>&nbsp;&nbsp;
			<%}%></td>
		</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import ="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<title>Attribute Test</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String name = (String)application.getAttribute("name");
	String  id = (String)application.getAttribute("id");

	
%>
<h1>������ �Ӽ� �׽�Ʈ</h1>
<table border="1">
		<tr><td colspan="2">Application ������ ������ �����</td></tr>
		<tr>
			<td>�̸�</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><%=id %></td>
		</tr>	
	</table>
	
<table border="1">
<tr><td colspan="2">Session ������ ������ �����</td></tr>
<%
	Enumeration<String> e = session.getAttributeNames();
	while(e.hasMoreElements()){
		String attributeName = e.nextElement();
		String attributeValue = (String)session.getAttribute(attributeName);
	
%>
	<tr>
		<td><%=attributeName %></td>
		<td><%=attributeValue %></td>
	</tr>
<%} %>
</table>

</body>
</html>
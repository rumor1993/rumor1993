<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Request Test3</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>��Ű����</td>
			<%
				Cookie[] cookie = request.getCookies();
			if(cookie == null){//ó�� ��û�� ��
			%>
			<td>��Ű�� �������� �ʽ��ϴ�.</td>
			<%
			}else{//�� ��°���� ���� ��û�� ��
				for(int i =0; i<cookie.length; i++){
			%>
			<td><%=cookie[i].getName() %>(<%=cookie[i].getValue() %>)&nbsp;&nbsp;</td>
			<%
				}//for end
			}//else end
			%>		
		</tr>
		<tr>
			<td>���� �����θ�</td>
			<td><%=request.getServerName() %></td>
		</tr>
		<tr>
			<td>���� ��Ʈ��ȣ</td>
			<td><%=request.getServerPort() %></td>
		</tr>
		<tr>
			<td>��û URL(Uniform Resource Identifier)</td>
			<td><%=request.getRequestURL() %></td>
		</tr>
		<tr>
			<td>��û ����</td>
			<td><%=request.getQueryString() %></td>
		</tr>
		<tr>
			<td>Ŭ���̾�Ʈ ȣ��Ʈ��</td>
			<td><%=request.getRemoteHost() %></td>
		</tr>
		<tr>
			<td>Ŭ���̾�Ʈ IP �ּ�</td>
			<td><%=request.getRemoteAddr() %></td>
		</tr>
		<tr>
			<td>��������</td>
			<td><%=request.getProtocol() %></td>
		</tr>
		<tr>
			<td>��û ���</td>
			<td><%=request.getMethod() %></td>
		</tr>
		<tr>
			<td>���ؽ�Ʈ ���</td>
			<%--���ؽ�Ʈ ���(��Ĺ���� Context�� �� ���ø����̼��� �ǹ��մϴ�. --%>
			<td><%=request.getContextPath() %></td>
		</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Application Test</title>
</head>
<body>
<%--appilcation ��ü�� �� ���ø����̼� ���ݿ� ���ļ� ���Ǵ� ������ ��� �ֽ��ϴ�. --%>
	<table border="1">
		 <tr>
		 	<td>Servlet API������ ����</td>
		 	<td><%=application.getMajorVersion() %>.
		 	<%=application.getMinorVersion() %></td>
		 </tr>
		 <tr>
		 	<td>�����̳� �̸��� ����</td>
		 	<td><%=application.getServerInfo() %></td>
		 </tr>
		 <tr>
		 	<td>�� ���ø����̼��� ���� ���Ͻý��� ���</td>
		 	<td><%=application.getRealPath("/") %></td>
		 </tr>
	</table>
<%-- getRealPath("/") : /�� context��� �Դϴ�.
	��, �� ���ø����̼� ��α��� ���϶�� �ǹ��Դϴ�.
	���� ��� ~~~~/JspProject/���� ���մϴ�. --%>
</body>
</html>
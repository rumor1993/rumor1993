<!-- config���� ��ü�� JSP�������� ���� Ŭ������ ��ȯ�Ǿ� ���� �ν��Ͻ��� ������ �� 
�����ؾ� �� �ʱ� ���� �������� ������ ���� ��ü �Դϴ�.
�̷��� �ʱ� ���� �������� �� �����̳ʰ� ������ ��  ��ü������ ����/�����Ǹ� ���� �� 1������
��ü�� �����Ǹ� ���� ���� �ν��Ͻ��� ������ config ��ü�� �����ϰ� �˴ϴ�
������ : 1. ��Ŭ���� Servers �信�� start ����
		2. ���������� http://localhost:8088/JspProject/configTest
		�Է��մϴ�.-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<title>config Test</title>
</head>
<body>
	<h2>config �׽�Ʈ</h2>
	<table border ="1">
		<tr>
			<td>�ʱ� �Ķ���� �̸�</td>
			<td>�ʱ� �Ķ���� ��</td>
		</tr>
	
	<%
	Enumeration<String> e = config.getInitParameterNames();
	while(e.hasMoreElements()){
		String init_paramName =e.nextElement(); %>
		<tr>
			<td><%=init_paramName %></td>
			<td><%=config.getInitParameter(init_paramName) %>
		</tr>
	<%} %>	
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<title> </title>
</head>
<%--
	-�ʱ�ȭ �Ķ���ʹ� web.xml�� �ۼ��մϴ�
	getInitParameterNames() :
		�� ���ø����̼� �ʱ�ȭ �Ķ������ �̸� ����� �����մϴ�.
	getInitParameter(Name) :
		�̸��� Name�� �� ���ø����̼� �ʱ�ȭ �Ķ������ ���� �о�ɴϴ�
		�������� ���� ��� null�� �����մϴ�.
 --%>
<style>
	div{background:<%=application.getInitParameter("color")%>}
</style>
<body>
	<h2>web.xml���� ������ �������� ����</h2>
	<% String color = application.getInitParameter("color"); %>
	<div style="background:<%=color%>">���� ���� ���ΰ���?</div>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--��ũ��Ʈ��(Scriptlet)
	HTML �ڵ�� �� �κ��� �Ϲ� HTML ����ó�� �״�� ����ϸ�
	�ڹ� �ڵ�� �̷���� ���� �κ��� <%..%>�� ǥ���Ǵ� ��ũ��Ʈ�� �±׸� ����Ͽ� �����Ѵ�
	
	JSP ������ ����� �� �� �����̳ʿ� ���� JSP �ڵ尡 �Ľ�(Parsing)������ ���ļ� ����
	Ŭ������ ��ȯ�˴ϴ�. �� �� �Ϲ� ���� Ŭ������ service()�޼ҵ忡 �ش��ϴ� _jspService()�޼ҵ尡
	�� �����̳ʿ� ���� �ڵ�����  �����ǵǸ� �� �޼ҵ��� ���ο� �Ľ̵� JSP�ڵ尡 ���� �ȴ�. �̷���
	�� �����̳ʿ� ���� ���� Ŭ������ �����Ǹ� �ν��Ͻ��� �����尡 �����ǰ� jspService()�޼ҵ忡 ����
	���� �������� �������  Ŭ���̾�Ʈ�� ���۵Ǿ� ��� �������� ǥ�õ˴ϴ�.--%>
<%@ page import="java.util.Calendar" %>
<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
	String ampm ="";
	if(hour<12)
		ampm = "����";
	else
		ampm="����";
%>
<!DOCTYPE html>
<html>
<head>
<title>Scriptlet Test</title>
</head>
<body>
	<h1>����ð� <%=hour %>�� <%=minute%>�� <%=second%>��</h1><br>
	<h3><%=ampm %>�Դϴ�.</h3>
	
</body>
</html>
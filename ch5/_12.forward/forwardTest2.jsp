<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>

<body>
	<h1>forwardTest2.jsp�Դϴ�. (���� ȭ�鿡 ���ϱ��?)</h1>

<jsp:forward page='<%=request.getParameter("forwardPage") %>'>
	<jsp:param name ="tel" value="010-1234-4567"/>
	<jsp:param name ="alias" value="�����"/>
</jsp:forward>
<%="���� ����� �ɱ��?" %>
</body>
</html>

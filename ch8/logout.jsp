<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	//session.removeAttribute("id");//id�Ӽ� �����մϴ�.
	session.invalidate();
%>
	<h1>�α׾ƿ� �Ǿ����ϴ�.</h1><br>
	<a href ="login.jsp">�α��� �������� �̵�</a>
</body>
</html>
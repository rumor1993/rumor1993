<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	request �Ӽ��� : <%=request.getAttribute("food") %><br>
	session �Ӽ��� : <%=session.getAttribute("food") %>
	
</body>
</html>
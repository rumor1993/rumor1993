<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	request 속성값 : <%=request.getAttribute("food") %><br>
	session 속성값 : <%=session.getAttribute("food") %>
	
</body>
</html>
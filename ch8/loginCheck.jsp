<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String ID = (String) session.getAttribute("id");
	boolean isLogin = false;
	if(ID != null){
		isLogin=true;
	}
	if(isLogin){
%>ID"<%=ID %>"�� �α����� �����Դϴ�.<br><br>
<a href="logout.jsp">�α׾ƿ�</a>
<%}else{ %>
	�α��� ���� ���� �����Դϴ�.
<%} %>
</body>
</html>
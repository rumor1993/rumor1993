<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String email = request.getParameter("email");
	String addr = request.getParameter("addr");
	String tel =request.getParameter("tel");
	session.setAttribute("email", email);
	session.setAttribute("addr", addr);
	session.setAttribute("tel", tel);
	
	String name = (String)application.getAttribute("name");
%>
<h1>������ �Ӽ� �׽�Ʈ</h1>
<%=name %>���� ������ ��� ����Ǿ����ϴ�.
<a href = "attributeTest3.jsp">Ȯ���ϱ�</a>

</body>
</html>
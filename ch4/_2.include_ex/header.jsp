<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
div{background:green; color:white; text-align:right}
</style>
<body>
	
<%
	String id ="";
	id =(String)session.getAttribute("id");
	if(id != null && !id.equals("")){
%>
<div>
	<h3><%=session.getAttribute("id") %>���� �α����ϼ̽��ϴ�. 
	<a href ="../_2.include_ex/logout.jsp">�α׾ƿ� </a></h3>
	</div>
	
<%
	} else{ 
%>
	<div>
	<h3><a href ="../_2.include_ex/login.jsp">�α���</a></h3>
	</div>
<%
	} 
%>
</body>
</html>



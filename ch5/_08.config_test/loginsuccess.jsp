<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<title>����?����?</title>
</head>
<body>
<%	String save_id=config.getInitParameter("id");
	String save_pw=config.getInitParameter("pass");
	
	String id = request.getParameter("id");
	String pass = request.getParameter("passwd");
		if(save_id.equals(id)&&save_pw.equals(pass)){%>
			�α��ο� �����ϼ̽��ϴ�.
		<%}else{ %>
			�α��ο� �����߽��ϴ�.
<%} %>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>���ȳ�</title>
</head>
<body>
<%
	String name="";
	String value="";
	//��Ű�� �����Ǿ� �ִ��� Ȯ���մϴ�.
	String cookie = request.getHeader("Cookie");
	
	if(cookie!=null){
		//��Ű���� �迭�� �����ɴϴ�.
		Cookie cookies[]=request.getCookies();
		
		//��Ű �迭���� ��Ű�̸��� "name"�� ���� ã�Ƽ� ��Ű�� �̸��� ���� �����ɴϴ�.
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("name")){
				name=cookies[i].getName(); //��Ű�� �̸��� �����ɴϴ�.
				value=cookies[i].getValue();//��Ű�� ���� �����ɴϴ�.
			}
		}//for end
%>
<h2>��Ű �̸� = <%=name %></h2>
<h2>��Ű �� = <%=value %></h2>
<%}else{ %>
	�����ϴ� ��Ű ���� �����ϴ�.
	<%} %>
</body>
</html>
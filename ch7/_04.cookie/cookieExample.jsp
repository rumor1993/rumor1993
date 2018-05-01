<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%
	String language = "korea";
	//header�� �̸� �߿��� cookie�� ���� �����ɴϴ�.
	String cookie = request.getHeader("Cookie");
	
	//��Ű�� �����ϴ��� Ȯ���մϴ�.
	if(cookie != null){
		//�����ϴ� ��Ű���� �迭�� �����ɴϴ�.
		Cookie cookies[] = request.getCookies();
		
		//��Ű�� �̸��� language1��  ���� ã�� ���� ��Ű �迭���� ���
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("language1")){
				language = cookies[i].getValue();
			}
		}
		out.println(language);
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	if(language.equals("korea")){
%>
<h3>�ȳ��ϼ���. �̰��� ��Ű �����Դϴ�.</h3>
<%}else{ %>
<h3>Hello. This is Cookie Example.</h3>
<%} %>
<fieldset>
<form action="cookieExample2.jsp" method="post">
	<input type="radio" name ="language" value="korea"
	<%if(language.equals("korea")){%>
	checked
	<%} %>
	 >�ѱ��� ������ ����
	<input type="radio" name ="language" value="english"
	<%if(language.equals("english")){ %>
	checked
	<%} %>>English page
	<input type="submit" value ="����">
</form>
</fieldset>

</body>
</html>
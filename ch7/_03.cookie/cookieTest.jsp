<%-- ��Ű�� ��Ű�� ������ �Ŀ� Ŭ���̾�Ʈ�� �����ؾ� �մϴ�

ũ�� ���� �� F12 -> Application �� -> ���� Cookies ���� --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Cookie Test</title>
</head>
<body>
<%
//��� �����մϴ�
//"name" : ����� �̸�, "hong" : ��Ű�� ��
Cookie cookie = new Cookie("name","hong");

//cookie.setMaxAge(60*60*24);//��Ű ���� �ð��� �����մϴ�.
//������ �ʷ� �Ϸ縦 �����մϴ�.
cookie.setMaxAge(6);//6�ʵ��� ��Ű ���� �ð��� �����մϴ�.
response.addCookie(cookie);//������ ��Ű�� Ŭ���̾�Ʈ�� �����մϴ�.
%>
<h2> ��Ű�̸�  : <%=cookie.getName() %></h2>
<h2> ��Ű �� : <%=cookie.getValue() %></h2>
<h2> ��Ű �����ð� : <%=cookie.getMaxAge() %>��(�̽ð��� ���� �� �Ʒ��� anchor�� Ŭ���� ������)</h2>
	<a href="cookieTest2.jsp"></a>
</body>
</html>
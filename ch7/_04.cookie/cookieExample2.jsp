<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%
	//��� ��ü�� �����ϰ� language1�� ��Ű �̸��� 
	//�Է� ���� language���� ���� �����մϴ�.
	Cookie cookie = new Cookie("language1", request.getParameter("language"));
   //�ð��� �������� ������(setMaxAge()�޼ҵ� ������� ���� ��)
   //������ ����� ��Ű�� �����˴ϴ�.
   //�޼ҵ带 ȣ���� �� ���� ������ 0�� �ָ� ��Ű�� ���� �˴ϴ�.
   cookie.setMaxAge(60*60*24);//��Ű�� ��ȿ�ð��� 24�ð����� �����մϴ�.
   response.addCookie(cookie);//Ŭ���̾�Ʈ�� ��Ű���� �����մϴ�.
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	/*cookieExample.jsp�� ���ư��ϴ�.*/
	location.href="cookieExample.jsp"
</script>
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<title>�ڹ� ��</title>
</head>
<body>
 <jsp:useBean id ="beantest" class="javabean.BeanTest"/>
 <jsp:setProperty name="beantest" property="name" param="name"/>
 	<%--Ŭ���̾�Ʈ���� 'name'�̶�� �̸��� �Ķ���� ���� name ������Ƽ�� �Ҵ�(����)
 		�ϰڴٴ� �ǹ��Դϴ�. property�� param �Ӽ��� ���� ���� ��� param �Ӽ��� 
 		���� ����
 		<jsp:setProperty name="beantest" property="name"/>
 		
 		property�� �Ӽ� ����"*"�� �����ϸ� ������ ������Ƽ�� ���� ���� �̸��� ����
 		�Ķ������ ������ �����մϴ�.
 		<jsp:setProperty name="beantest" property="*"/> --%>
 <h1>�ڹٺ� ����</h1>
 <h3><jsp:getProperty name="beantest" property="name"/></h3>
 </body>
</html>
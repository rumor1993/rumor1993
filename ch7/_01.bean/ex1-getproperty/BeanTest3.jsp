<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<title>javabean test 3</title>
</head>
<body>
<h1>�ڹٺ� ����</h1>
<jsp:useBean id="beantest" class="javabean.BeanTest" scope="page"/>
<%--id		�Ӽ� : JSP���� �ڹٺ� ��ü�� ������
	class	�Ӽ� : �ڹٺ� ���� �Ծ࿡ �°� �ۼ��� Ŭ�������� ���� �־�� �մϴ�.
				Ŭ������ ��Ű�� �ȿ� �ۼ��Ǿ� �ִٸ� ��Ű�� ��α��� ������մϴ�.
	scope	�Ӽ� : �������� page(�⺻��-pageContext��ü),
				 request,session, application �� ����
				 
	���� �±״� ������ ���� ����� �ǹ��Դϴ�.
	javabean.BeanTest beantest = new javabean.BeanTest();
	pageContext.setAttribute("beantest", beantest);--%>
<h3><jsp:getProperty name ="beantest" property="name"/></h3>
<%--<%=beantest.getName()%>��
	<jsp:getProperty>�׼� �±׷� ����� ����Դϴ�.
	name : <jsp:useBean>�� id�Ӽ����� ������ �ڹٺ� ��ü�� �̸�
	property : ����� ������Ƽ�� �̸� --%>
</body>
</html>
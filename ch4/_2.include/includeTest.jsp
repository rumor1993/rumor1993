<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- include ���þ�*(��Ƽ��)
	Ư���� JSP ���� �Ǵ� HTML ������ �ش� JSP���� ������ �� �ֵ��� ����� �����ϴ� �����Դϴ�.
	include ���þ�� �����Ǿ� ���� �������� ���ԵǴ� JSP���ϵ��� �� �����̳ʿ� ���� 
	���ε��� ������ �Ǵ� ���� �ƴ϶� �� �ҽ��� include ���þ ����� �ش� �������� ����Ǿ� ��������
	������ �� �����̳ʴ� ���� JSP���ϵ��� �ҽ��� ������ �ϳ��� ���������� �������Ѵ�.
	
	���� JSP ���������� ����Ǵ� �κ��� ���� �� �̷��� ����Ǵ� �κ���
	 ���Ϸ� ����� include ���þ�� �����մϴ�.--%>
<!DOCTYPE html>
<html>
<head>
<title>IncludeTest</title>
</head>
<body>
	<%@ include file ="header.jsp" %>
	<h1>includeTest</h1>
	<%@ include file ="footer.jsp" %>
</body>
</html>
<%-- include �׼� �±�
	include �׼��� �ӽ÷� ������� page �Ӽ����� �������� �ѱ�� �� �������� ó����
	������ ó�� ����� ���� �������� �����ϰ� �ٽ� ������ �������� ������� ��ȯ�ϴ� ����Դϴ�.
	
	include ��Ƽ��� ������
	include ��Ƽ��� ���� ������ ������ include ���þ�� ������ �������� �ҽ� �ڵ尡
	�״�� ����Ǿ� ��������� include �׼� �±״� page�Ӽ��� �������� ���� ����� ����
	��ġ�� ���Խ�ŵ�ϴ�. --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<h2>��Ŭ��� �׼� �׽�Ʈ ����</h2>
<%request.setCharacterEncoding("euc-kr"); %>
<jsp:include page='<%=request.getParameter("includePage") %>'>
	<jsp:param name ="tel" value="010-1234-5678"/>
	<jsp:param name ="alias" value="happy"/>
</jsp:include>
<h2>��Ŭ��� �׼� �׽�Ʈ ��</h2>
</body>
</html>
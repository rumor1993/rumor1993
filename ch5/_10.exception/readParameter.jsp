<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%--������ �߻��� ��� errorPage �Ӽ��� ������ �������� �����ݴϴ�. --%>
 <%@ page errorPage = "../../error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>�Ķ���� Ǯ��</title>
</head>
<body>
name �Ķ���� �� :<%=request.getParameter("name").toUpperCase() %>
<%--name �Ķ������ ���� �빮�ڷ� ��ȯ�Ͽ� ����մϴ�. --%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>

<html>
<head>
<%
  Calendar c = Calendar.getInstance();
  int hour = c.get(Calendar.HOUR_OF_DAY);
  int minute = c.get(Calendar.MINUTE);
  int second = c.get(Calendar.SECOND);
%>
<meta charset="EUC-KR">
<title>Servlet Test</title>
</head>
<style>
h3{color:red}
</style>
<body>
<h1>����ð��� <%=hour %>�� <%=minute %>�� <%=second %>�� �Դϴ�.</h1>
<h3>���� JSP�Դϴ�</h3>
</body>
</html>
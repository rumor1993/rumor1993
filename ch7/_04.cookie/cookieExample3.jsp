<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
	$(function(){
		<%-- var id="#<%=language%>";--%>
		
		var id = "input[value='<%=language%> ']"
		$("id").attr('checked','checked');
	})
</script>
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
	<input type="radio" name ="language" id="korea" value="korea"
	<%if(language.equals("korea")){%>
	checked
	<%} %>
	 >�ѱ��� ������ ����
	<input type="radio" name ="language" id="english" value="english"
	<%if(language.equals("english")){ %>
	checked
	<%} %>>English page
	<input type="submit" value ="����">
</form>
</fieldset>

</body>
</html>
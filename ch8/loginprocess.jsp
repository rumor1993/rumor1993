<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>�α��� ����</title>
</head>
<body>
<%	
	String storedID=application.getInitParameter("ID");
	String storedPW=application.getInitParameter("Pass");
	
	String inputID = request.getParameter("id");
	String inputPW = request.getParameter("pass");
	
	//����� ���̵�� ��й�ȣ�� ��ġ�ϴ� ���
		if(inputID.equals(storedID) && inputPW.equals(storedPW)){
		session.setAttribute("id", inputID);
	%>
	<script>
		var id="<%=inputID%>" + "�� ȯ���մϴ�.";
		alert(id);
	</script>
		�α��ο� �����ϼ̽��ϴ�.<br><br>
		<a href ="loginCheck.jsp">�α��� üũ</a>
	<%
	String IDStore = request.getParameter("idstore");
	Cookie cookie = new Cookie("id", request.getParameter("id"));
	
	//ID ����ϱ⸦ üũ�� ���
	if(IDStore !=null && IDStore.equals("store")){
		//cookie.setMaxAge(60*60*24);//��Ű�� ��ȿ�ð��� 24�ð�
		cookie.setMaxAge(2*60);
		response.addCookie(cookie);//Ŭ���̾�Ʈ�� ��Ű����
		out.println("<a href='login.jsp'>�α��� ȭ�� �ٽ� ����</a>");
	}else{
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	}
	}else if(inputID.equals(storedID)){//���̵� ��ġ�ϴ� ���	
	%>
	<script>
		alert("�н����尡 �ٸ��ϴ�.");
		history.go(-1);//location.href="login.jsp";s
	</script>
	<%}else{ //���̵� �ٸ����%>
	<script>
		alert("ID�� �ٸ��ϴ�.");
		history.go(-1);
	</script>
<%} %>	
</body>
</html>
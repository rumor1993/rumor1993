<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- ǥ����(expression)
	���� �Ǵ� ��ũ��Ʈ�� �±׿��� ����� ������ �޼ҵ��� ���ϰ��� ����ϱ� ���� ���Ǵ� ����Դϴ�.
	�� �����̳ʿ� ���� _jspService() �޼ҵ� ���ο� ��� ��ü�� print()�޼ҵ� ��ȣ�ȿ� ��°��
	���Ƿ� scriptlet���� �޸� �����ݷ��� ����ؼ��� �ȵ˴ϴ�.
	����) <%=���� %>
		<%=���ϰ��� �ִ� �޼ҵ�%>
		<%=����%>
--%>
<%!
//1���� 100������ ���� ���ϴ� sum
	public int sum(){
	int total =0;
	for(int i=0; i<=100; i++){
		total+=i;
	}
	return total;
}
String str = "1���� 100������ ��";
%>

<!DOCTYPE html>
<html>
<head>
<title>Expression Test</title>
</head>
<style>
	b{color:red}
</style>
<body>
	<h3><%=str %>��<b><%=sum()%></b>�Դϴ�.</h3>
	<h3><%=str %>�� 3�� ���ϸ�  <b><%=sum()*3%></b>�Դϴ�.</h3>
	<h3><%=str %>�� 1000���� ������ <b><%=sum()/1000.%></b>�Դϴ�.</h3>
</body>
</html>
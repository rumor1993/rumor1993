<%--
	1. Java Naming and Directory Interface (JNDI)�� Java ���ø����̼��� ��Ʈ��ũ���� �̸� (name)�� �̿��Ͽ�
		��ü�� ã�� ������ �� �ֵ��� �ϴ� ǥ�� API�Դϴ�.
		
	*	JNDI�� ����ϸ� Java ���α׷��̳� JSP ���������� ���� ���α׷� ���� �Ǵ� �ܺο��� ������ �ڿ��� ���� �� �� �ֽ��ϴ�.
	*	������ ���̽� Ŀ�ؼ� Ǯ���� ����Ұ� �� DataSource ��ü�� ���̹� ���񽺸� ���� �����̳ʿ��� �����մϴ�.
	
	2. DBCP (Database Connection Pool)
		�����ͺ��̽��� ����� Ŀ�ؼ��� �̸� ���� Ǯ(pool) �ӿ� ������ �ΰ� �ʿ��� �� Ŀ�ؼ��� Ǯ���� ���� �ٽ� ��ȯ�ϴ� ����� ���մϴ�.
		�� ���α׷������� �����ͺ��̽��� ȯ�漳���� ���� ���� ���� ���� XML�����̳� �Ӽ� ������ ����ؼ� �����ϰ�, 
		�̷��� ������ ������ �̸��� ����Ͽ� ȹ���ϴ� ����� ����մϴ�.
		
	*	DBCP�� �̿��� ���ؼ� Ǯ�� ����ϱ� ���� ���� ��Ĺ�� DataSource�� ����ؾ� �մϴ�.
		context.xml (���ø����̼� ���ؽ�Ʈ�� ���õ� ������ �ϴ� ����) ���Ͽ��� �� �� ������ ��ġ�� META-INF�� �����մϴ�.
		
	*	DBCP ���̺귯�� : tomcat-dbcp.jar ����
	
	3. DataSource �̿� ���
		1) JNDI Server���� lookup()�޼��带 ���� DataSource ��ü�� ���ɴϴ�.
		2) DataSource ��ü�� getConnection() �޼��带 ���ؼ� Connection Pool����
			Connection�� ȹ���մϴ�.
		3) Connection ��ü�� ���� DBMS �۾��� �����մϴ�.
		4) ��� �۾��� ������ DataSource ��ü�� ���ؼ� Connection Pool�� Connection�� �ݳ��մϴ�.
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- Connection ��ü�� JNDI�� ����ϱ� ���� ��Ű���� import �մϴ�. --%>    
<%-- �Ϲ� ������ ���̽� �۾��� ���� import �մϴ�. --%>
<%@ page import = "java.sql.*" %>

<%-- javax.sql.DataSource ��ü�� ����ϱ� ���� import �մϴ�. --%>
<%@ page import = "javax.sql.*" %>

<%-- JNDI �۾��� �ϱ� ���� import �մϴ�. --%>
<%@ page import = "javax.naming.*" %>

<%
	Connection conn = null;

	try{
		// context.xml�� ���ҽ��� ������ ���� (JNDI�� ������ ����)
		// jdbc/OracleDB�� �����Ͽ� Connection ��ü�� ���ɴϴ�.
		
		// 1. JNDI�� �̿��ϱ� ���� ��ü �����մϴ�.
		Context init = new InitialContext();
		
		// 2. JNDI�� ��� �̸��� �⺻������ java:comp/env�� ��ϵǾ� �ֽ��ϴ�.
		//	jdbc/OracleDB : JNDI ���񽺿� �����ϱ� ���� �̸��Դϴ�.
		//	lookup() : ��ϵ� naming ���񽺷κ��� �ڿ��� ã������ �� ����ϴ� �޼��� 
		// 	Context ��ü�� ����Ͽ� �̸����� Resource�� ȹ���մϴ�.
		
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		
		// 3. JNDI�� �̿��Ͽ� ����� Connection ��ü�� �����ɴϴ�.
		//	�� ��ü�� ���� Container�� DBCP�� ���� �����˴ϴ�.
		// �����⽽�ۿ�!��! ����~!�ֱ�����!!
		
		conn = ds.getConnection();
		
		out.println("<h3> ���ؼ� Ǯ�� ����Ǿ����ϴ�. </h3>");
		conn.close();
		
	}catch(Exception e){
		out.println("<h3> ���ؼ� Ǯ�� ���ῡ �����߽��ϴ�. </h3>");
		e.printStackTrace();
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>
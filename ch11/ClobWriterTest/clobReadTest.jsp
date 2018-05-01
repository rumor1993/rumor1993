<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "javax.naming.spi.InitialContextFactory" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
<%@ page import = "java.io.*" %>
<%--
	LOB(Large Object) Ÿ���� ��뷮 �����͸� �����ϱ����� ������ Ÿ��
	- BLOB(Binary Large Object), ���� ���̳ʸ� �������� ����� ���˴ϴ�.
	- CLOB(Character Large Object), ���� �������� ����� ���˴ϴ�.
	- BFILE �ܺ� ���Ͽ� ����� ���� �����Ͱ� �ִ� ����� ����� ���˴ϴ�. �ִ� 4GB���� ���尡��

	JAVA���� ORACLE��  CLOB Ÿ�� ����ϱ�
	INSERT�� 
	
	1. CLOB Ÿ���� �ʵ��� �⺻���� empty_clob()�� �����մϴ�.
	2. setAutoCommit(false) �� �����մϴ�.
	3. CLOB Ÿ�� �ʵ带 ������ ������ �ʵ忡 �����͸� �����մϴ�.
	4. CLOB Ÿ�� �ʵ忡 �����͸� �ִ� ���� �ٸ� ���� �۾��� ���� ���� LOCK�� �̴ϴ�.
	5. CLOB Ÿ�� �ʵ忡 �����͸� �ֽ��ϴ�.
	6. commit() �մϴ�.
	7. setAutoCommit(true)�� �����մϴ�.
 --%>
 
 <%
 	Connection conn = null;
 	PreparedStatement pstmt = null;
 	ResultSet rs = null;
 	StringBuffer sb = null;
 	
 	try{
 		Context init = new InitialContext();
 		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
 		conn = ds.getConnection();
 		
 		//CLOB �����͸� �о���� ���ؼ��� select ������ ResultSet��ü��
 		pstmt = conn.prepareStatement("SELECT * FROM clobtable WHERE num=1");
 		rs = pstmt.executeQuery();
 		if(rs.next()){
 			BufferedReader rd = new BufferedReader(rs.getCharacterStream("content"));
 					sb = new StringBuffer();
 			char[] buf = new char[1024];
 			int readcnt;
 			
 			//buf �ȿ� �ִ� �����͸� 1024��ŭ �о�ɴϴ�.
 		while((readcnt = rd.read(buf,0,1024)) != -1) {
 			System.out.println("readcon ="  + readcnt);
 			sb.append(buf,0,readcnt);
 		}
 			rd.close();
 	}
 	out.println(sb.toString());
 	}catch(Exception e){
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>

<%
	Connection conn = null;
	String sql = "SELECT * FROM student";
	PreparedStatement pstmt = null;
	ResultSetMetaData rsmd = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement(sql);
		
		// sql���� �����Ͽ� ������ ���ڵ���� ResultSet ��ü�� �����մϴ�.
		ResultSet rs = pstmt.executeQuery();
		rsmd = rs.getMetaData();
		
		out.println("�÷� �� : " + rsmd.getColumnCount()+"<hr>");
		for(int i=1; i<rsmd.getColumnCount(); i++){
			out.println(i+"��° �÷��� �̸� : " + rsmd.getColumnName(i)+"<br>");
			out.println(i+"��° �÷��� Ÿ���̸� : " + rsmd.getColumnTypeName(i) + "<br>");
		}
	}catch(Exception e){
		out.println(e);
	}finally{
		if(pstmt!=null)
			try{pstmt.close();
			
			}catch(SQLException ex){}
		if(conn!=null) 
			try{
				conn.close();
			}catch(SQLException ex){
				
			}
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
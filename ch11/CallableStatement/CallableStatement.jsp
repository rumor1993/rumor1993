<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>

<%
	Connection conn =null;
	String sql;
	CallableStatement cs = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		sql = "{call del_all}";
		
		// CallableStatement ��ü�� �����մϴ�.
		cs = conn.prepareCall(sql);
		cs.execute();
		out.println("���������� ���ν����� ������׽��ϴ�.");
		
	}catch(Exception e){
		out.println(e);
		
	}finally{
		if(cs!=null)
			try{cs.close();
			
			}catch(SQLException ex){}
		if(conn!=null) try{
			//close() �޼��� ���� �Ŀ��� ����Ŭ���� roll back ���� �ȵ˴ϴ�.
			//�ڿ� ȸ�� �Ǹ鼭 ����Ŭ���� �ڵ� Ŀ���� �Ǿ��� �����Դϴ�.
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
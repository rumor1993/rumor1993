<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.naming.*" %>
<%
	Connection conn = null;
	String sql = "INSERT INTO student(num,name) VALUES (11,'ȫ�浿')";
	Statement stmt =null;
	
	try{
		// JDNI�� �̿��Ͽ� ����� Connection ��ü�� �����ɴϴ�.
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		// Statement ��ü�� �����մϴ�.
		stmt = conn.createStatement();
		
		// ����, ����, ������ ���õ� SQL���� �����մϴ�.
		// ����� ���� ���� ��ȯ�մϴ�.
		
		int result = stmt.executeUpdate(sql);
		
		System.out.println("executeUpdate ����� = " + result);
		if(result != 0){
			out.println("<h3> ���ڵ尡 ��ϵǾ����ϴ�. </h3>");
		}
	}catch (Exception e){
		out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}finally{
		if(stmt!=null)
			try{
				stmt.close(); //��ü�� ����ϰ� �޸𸮿� ��ȯ�մϴ�.
							  //�޸� ���� ���� �� �ֽ��ϴ�.
			}catch(SQLException ex) {ex.printStackTrace();}
		if(conn!=null)
			try{conn.close();}
		catch(SQLException ex) {ex.printStackTrace();}
		
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
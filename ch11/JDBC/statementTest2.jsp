<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.naming.*" %>
<%
	Connection conn = null;
	String sql = "INSERT INTO student(num,name) VALUES (?,'ȫ�浿')";
	PreparedStatement pstmt =null;
	
	try{
		// JDNI�� �̿��Ͽ� ����� Connection ��ü�� �����ɴϴ�.
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		// Statement ��ü�� �����մϴ�.
		pstmt = conn.prepareStatement(sql);
		
		for(int i=0; i<=10; i++){
		pstmt.setInt(1, i); // ù��° �μ� (num�ʵ�)�� i���� �����մϴ�.
		if(pstmt.executeUpdate()!= 0){ // SQL�� �����մϴ�.  executeUpdate ����� ���� ��
			out.println("<h3> "+ i +" ���ڵ尡 ��ϵǾ����ϴ�.</h3>");
			}
		}
	}catch (Exception e){
		out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}finally{
		if(pstmt!=null)
			try{
				pstmt.close(); //��ü�� ����ϰ� �޸𸮿� ��ȯ�մϴ�.
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.naming.*" %>
<%
	Connection conn = null;
	String sql = "select * from student order by num";
	PreparedStatement pstmt =null;
	ResultSet rs = null;
	
	try{
		// JDNI�� �̿��Ͽ� ����� Connection ��ü�� �����ɴϴ�.
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();

		// Statement ��ü�� �����մϴ�.
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){  
			
			
			
			
		//	int num = rs.getInt("num");
		//	String name = rs.getString("name");
			
			//out.println("<table border=1> <tr><td>��ȣ</td><td>�̸�</td> </tr><tr> <td>"+ rs.getInt("num") + "</td><td>" + rs.getString("name") + "</td></tr>");
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
	<style>
		table{width:400px; text-align:center; margin:0 auto;}
	</style>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>��ȣ</td><td>�̸�</td>
		</tr>
		<tr>
			<td><%=rs.getInt(1) %></td><td><%=rs.getString(2) %></td>
		</tr>
	</table>
</body>
</html>
<%-- webContent ���� �Ʒ� upload ���� ���� �� ���� �ϼ��� --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- ���ε��ϱ� ���� MultipartRequest ��ü�� import�մϴ�. --%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%-- ���� �̸� �ߺ� ó���� �ϱ� ���� DefaultFileRenamePolicy ��ü�� import�մϴ�. --%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>


<%
	//application.getRealPath(path);
	//�� ���ø����̼�path�� ���� ���û��� ���� ��θ� ���ɴϴ�.
	String uploadPath = application.getRealPath("upload");
	out.println(uploadPath);
	
	int size = 10*1024*1024;//���� �ִ� ũ�⸦ 10MB�� �����մϴ�.
	String name="";
	String subject="";
	String filename1="";
	String filename2="";
	String origfilename1="";
	String origfilename2="";
	
	try{
	/*���ε带 ����ϴ� �κ��Դϴ�.
	- ù��° ���� request : ������ ������ ���� ��� ���� request��ü�� ������ �ݴϴ�.
	- �ι�° ���� uploadPath : ���ε�� ������ ��ġ �Դϴ�.
	- ����° ���� size : ���ε� �� ũ���̸� ���� ũ�⺸�� ũ�� Exception�߻��մϴ�.
	- �׹�° ���� "euc-kr" : ���� �̸��� �ѱ��� ��� ó���ϴ� �κ��Դϴ�.
	- �ټ���° ���� : �Ȱ��� ������ ���ε� �� ��� �ߺ����� �ʵ��� �ڵ����� �����̸��� ��ȯ���ִ� ����� �մϴ�.
	*/
	MultipartRequest multi = new MultipartRequest(request, uploadPath,
													size, "euc-kr",
										new DefaultFileRenamePolicy());
	name=multi.getParameter("name");
	subject=multi.getParameter("subject");
	
	//���ε�� ������ �ý��� �� ���ε�� ���� ���ϸ��� ��� �ɴϴ�.
	filename1=multi.getFilesystemName("fileName1");
	out.println("<br>multi.getFilesystemName(fileName1)="
			+filename1);
	
	//���ε�� ������ ���� ���ϸ��� ��� �ɴϴ�.
	origfilename1= multi.getOriginalFileName("fileName1");
	out.println("<br>multi.getOriginalFileName(fileName1)="
			+origfilename1);
	
	//���ε�� ������ �ý��� �� ���ε�� ���� ���ϸ��� ��� �ɴϴ�.
		filename2=multi.getFilesystemName("fileName2");
		out.println("<br>multi.getFilesystemName(fileName2)="
				+filename2);
		
		//���ε�� ������ ���� ���ϸ��� ��� �ɴϴ�.
		origfilename2= multi.getOriginalFileName("fileName2");
		out.println("<br>multi.getOriginalFileName(fileName2)="
				+origfilename2);
	}catch(Exception e){
		e.printStackTrace();
		out.print("�����Դϴ�.");
	}

%>
<!DOCTYPE html>
<html>
<head>
<title>file ���ε� ó��</title>
</head>
<body>
<form name="filecheck" action="fileCheck.jsp" method="post">
	<input type="hidden" name="name" value="<%=name %>">
	<input type="hidden" name="subject" value="<%=subject %>">
	<input type="hidden" name="filename1" value="<%=filename1 %>">
	<input type="hidden" name="filename2" value="<%=filename2 %>">
	<input type="hidden" name="origfilename1" value="<%=origfilename1 %>">
	<input type="hidden" name="origfilename2" value="<%=origfilename2 %>">
</form>
<!-- ��ũ�� Ŭ������ �� �� ������ �����͵��� filecheck.jsp�������� ���� ó���ϴ� �κ��Դϴ�. -->
<a href="#" onclick="javascript:filecheck.submit()">
���ε� Ȯ�� �� �ٿ�ε� ������ �̵�</a>
</body>
</html>
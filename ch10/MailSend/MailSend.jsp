<%-- ������ ����� smtp ���� �ּҸ� ������ ���̹��� 
		"���̵�@naver.com" ���� �մϴ�. --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.*" %>
<%-- �ڹ� ���� API�� ����ϱ� ���� ���� ��Ű���� import�մϴ� --%>
<%@ page import = "javax.activation.*" %>
<%@ page import = "javax.mail.*" %>
<%@ page import = "javax.mail.internet.*" %>

<%
	request.setCharacterEncoding("euc-kr");
	String sender = request.getParameter("sender");
	String receiver = request.getParameter("receiver");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	// SMTP ���� �ּҸ� �����մϴ�.
	String server = "smtp.naver.com";
	
	try{
		// ���� ������ Properties ��ü�� �����մϴ�.
		Properties properties = new Properties();
		
		// SMTP ���� ���� ����
		// ���̹��� ��� smtp.naver.com
		properties.put("mail.smtp.host", server);
		
		// ������ Properties ��ü�� ������ ������ �ν��Ͻ��� �����մϴ�.
		// public static Session getDefaultInstance(Properties)
		Session s = Session.getDefaultInstance(properties);
		
		// ������ ���ϰ� �޴� �ּҸ� �����մϴ�.
		Address sender_address=new InternetAddress(sender);
		Address receiver_address=new InternetAddress(receiver);
		
		// ������ ������ ���� ������ �Է��ϱ� ���� Massage ��ü�� �����ϴϴ�.
		Message message = new MimeMessage(s);
		
		// ������ ������ ������ �ѱ��� ��� ������ �ʵ��� content-type�� �����մϴ�. ���� ���� �����̱���?^^
		message.setHeader("content-type","text/html;charset=euc-kr");
		
		// ������ ���� �ּ� ������ �����մϴ�^��^
		message.setFrom(sender_address);
		
		// �޴� ���� �ּ� ������ �����մϴ�
		// Message.RecipientType�� Message Ŭ�������� ����ϴ�
		// ������ ������ �����մϴ�!!
		// Message.RecipientType.TO : �޴� ����� �ǹ��մϴ�?
		
		message.addRecipient(Message.RecipientType.TO, receiver_address);
		
		// ���� ������ �����մϴ�>_<
		message.setSubject(subject);
		
		// ������ ������ �����մϴ٤�����
		message.setContent(content,"text/html;charset=euc-kr");
		
		// ������ ��¥�� �����մϴ�.
		message.setSentDate(new java.util.Date());
		
		// public Transport getTransport(String protocol)
		//					throws NoSuchProviderException
		// ������ ��������(smtp)�� �����ϴ� Transport ��ü�� �����ɴϴ�.
		// ������ �����ϴ� Ŭ�����Դϴ�.
		
		Transport transport = s.getTransport("smtp");
		
		// ù��° ���ڴ� ������ ȣ��Ʈ �Դϴ�.
		
		
		// ù��° ���ڴ� ������ ȣ��Ʈ �Դϴ�.
		// �ι�° ���ڴ� ���̵�, ����° ���ڴ� ��й�ȣ�� �ǹ��մϴ�.
		transport.connect(server,"rumor1993","!so46821300");
		
		// getAllRecipients() : �޼����� ��� ������ �ּҸ� �����ɴϴ�.
		// ������ �ּ� ������� �޼����� �����ϴ�.
		transport.sendMessage(message,message.getAllRecipients());
		
		// ������ �����մϴ�.
		transport.close();
		
		out.println("<h3>������ ���������� ���� �Ǿ����ϴ�. </h3>");
	}catch(Exception e){
		out.println("SMPT ������ �߸� �����Ǿ��ų� , ���񽺿� ������ �ֽ��ϴ�.");
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
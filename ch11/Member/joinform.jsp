<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form name = joinform action = joinProcess.jsp
      method = "post">
            <h1>ȸ������ ������</h1>
   <hr>
      <b>���̵�</b>
      <input type = text name = id placeholder="Enter id" required="required"><br>
      <b>��й�ȣ</b> <input type = password name = pass placeholder = password required="required"><br>
      <b>�̸�</b><input type = text name = name placeholder="Enter name" required="required"><br>
      <b>����</b><input type = text name = age placeholder = "Enter age"required="required"><br>
      <b>����</b>
      	<div>
            <input type = radio name = gender value = �� checked><span>����</span>
            <input type = radio name = gender value = �� ><span>����</span>
       </div>
            
      <b>�̸��� �ּ�</b><input type = text name = email placeholder="Enter email" required="required"><br>
      <div class = clearfix>
      	<button type = submit class = submitbtn>ȸ������</button>
      	<button type = reset class = canclebtn>�ٽ��ۼ�</button> 
      </div>
      </form>
</body>
</html>
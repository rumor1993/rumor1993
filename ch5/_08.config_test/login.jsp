<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>�α��� ȭ��</title>
</head>
<body>
	<form action="http://localhost:8088/JspProject/loginTest" method="post">
		<h1>�α��� </h1>
      <hr>
      <b>���̵�</b>
        <input type="text" name="id" 
               placeholder="Enter id" required>
        <b>��й�ȣ</b>
        <input type="text" name="passwd" 
               placeholder="Enter password" required>
        <div class="clearfix">
          <button type="submit" class="submitbtn">Submit</button>
          <button type="reset" class="cancelbtn">Cancel</button>
        </div>
  </form>
</body>
</html>
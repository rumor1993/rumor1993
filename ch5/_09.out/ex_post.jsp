<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link href = "validate.css" rel="stylesheet" type="text/css">
	<script src = "http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src = "validate.js"></script>
</head>
<body>
<fieldset>
  <legend>��ȿ�� �˻�</legend>
 <form name="myform" method="post" action="send.jsp" 
       id="myform"   onSubmit="return check()">
 <label>ID</label> 
 <input type="text" size="30" name="id" id="id">
 <input type="button" value="ID�ߺ��˻�" onclick="idcheck()"><br>
  
 <label>��й�ȣ</label>
 <input type="password" name="pass" id="pass" size="42"><br>
 
 <label>�ֹι�ȣ</label>
 <input type="text" size="17" maxlength="6"
  name="jumin1" id="jumin1">
 &nbsp;-&nbsp;
 <input type="text" size="17" maxlength="7"
  name="jumin2" id="jumin2" ><br>
     
 <label>E-Mail</label> 
 <input type="text" name="email" id="email" size=10>&nbsp;@
 <input type="text" name="domain" id="domain" size=10>
   <select name="sel" id="sel" onChange="domain1()" >
     <option value="">�����Է�</option>
     <option value="naver.com">naver.com</option>
     <option value="daum.net">daum.net</option>
     <option value="nate.com">nate.com</option>
     <option value="gmail.com">gmail.com</option>
   </select><br>
   

 <label>����</label> 
  <span>  
 <input type="radio" name="gender" value="m" id="gender1"><sup>����</sup>
 <input type="radio" name="gender" id="gender2"><sup>����</sup>
 </span>  
 <br>
 <label>���</label>  
  <span> 
 <input type="checkbox" name="hobby" id="hobby1" value="����"><sup>����</sup>
 <input type="checkbox" name="hobby" id="hobby2" value="����"><sup>����</sup>
 <input type="checkbox" name="hobby" id="hobby3" value="�"><sup>�</sup>
 <input type="checkbox" name="hobby" id="hobby4" value="���"><sup>���</sup>
 <input type="checkbox" name="hobby" id="hobby5" value="����"><sup>����</sup>
 </span>  
 
 <br>
    <!-- ������ ���� hobby�迭�� ó�� -->
    
 <label>�����ȣ</label>  
 <input type="text" size="12" maxlength="3" 
        name="post1" id="post1">-
 <input type="text" size="12" maxlength="3" 
        name="post2" id="post2">
 <input type="button" value="����˻�" onClick="post()"><br>
    
 <label>�ּ�</label> 
 <input type="text" size="42" name="address" id="address"><br>
 
 <label>�ڱ�Ұ�</label> <br>
 <textarea rows="10" cols="60" name="intro" id="intro"></textarea><br><br>

 <input type="submit" value="ȸ������">
 <input type="reset" value="���">

 </form>
</fieldset>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Request Test3</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>쿠키정보</td>
			<%
				Cookie[] cookie = request.getCookies();
			if(cookie == null){//처음 요청할 때
			%>
			<td>쿠키가 존재하지 않습니다.</td>
			<%
			}else{//두 번째부터 같은 요청일 때
				for(int i =0; i<cookie.length; i++){
			%>
			<td><%=cookie[i].getName() %>(<%=cookie[i].getValue() %>)&nbsp;&nbsp;</td>
			<%
				}//for end
			}//else end
			%>		
		</tr>
		<tr>
			<td>서버 도메인명</td>
			<td><%=request.getServerName() %></td>
		</tr>
		<tr>
			<td>서버 포트번호</td>
			<td><%=request.getServerPort() %></td>
		</tr>
		<tr>
			<td>요청 URL(Uniform Resource Identifier)</td>
			<td><%=request.getRequestURL() %></td>
		</tr>
		<tr>
			<td>요청 쿼리</td>
			<td><%=request.getQueryString() %></td>
		</tr>
		<tr>
			<td>클라이언트 호스트명</td>
			<td><%=request.getRemoteHost() %></td>
		</tr>
		<tr>
			<td>클라이언트 IP 주소</td>
			<td><%=request.getRemoteAddr() %></td>
		</tr>
		<tr>
			<td>프로토콜</td>
			<td><%=request.getProtocol() %></td>
		</tr>
		<tr>
			<td>요청 방식</td>
			<td><%=request.getMethod() %></td>
		</tr>
		<tr>
			<td>컨텍스트 경로</td>
			<%--컨텍스트 경로(톰캣에서 Context는 웹 애플리케이션을 의미합니다. --%>
			<td><%=request.getContextPath() %></td>
		</tr>
	</table>
</body>
</html>
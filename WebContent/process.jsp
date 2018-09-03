<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id = "member" class = "hs.mirim.MemberInfo"/>
<jsp:setProperty name="member" property="*"/>
<!--  property="*"는 폼에서 넘어오는 모든 값을 name의 이름에 맞춰 자바빈의 속성에 넣어주는 것이다 -->
<jsp:setProperty name="member" property="password" value = "<%=member.getId() %>"/>

<table border = "1">
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty name = "member" property = "id"/></td>
		<td>비밀번호</td>
		<td><jsp:getProperty name = "member" property = "password"/></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty name = "member" property = "name"/></td>
		<td>이메일</td>
		<td><jsp:getProperty name = "member" property = "email"/></td>
	</tr>
	<tr>
		<td>주소</td>
		<td colspan = "3"><jsp:getProperty name = "member" property = "address"/></td>
	</tr>
</table>

</body>
</html>
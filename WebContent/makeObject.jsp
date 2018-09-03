<%@page import="hs.mirim.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<%--
		MemberInfo member = new MemberInfo();
		member.setName("최지향");
		member.setAddress("천안시");
		member.setId("Choi");
		
		out.println(member.getName());
	--%>
	<!-- java방식은 scope를 지정해줄 수 없다(그래서 forward를 해도 forward한 페이지에서는 자바빈을 사용할 수 없다) -->
	
	
	<jsp:useBean id = "member" class = "hs.mirim.MemberInfo" scope = "request"/>
	<%
		member.setName("최지향");
		member.setId("Choi");
	%>
	
	
	<jsp:forward page = "useObject.jsp"/>
</body>
</html>
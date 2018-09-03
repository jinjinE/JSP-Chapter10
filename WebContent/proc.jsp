<%@page import="hs.mirim.TestBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%--
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		out.println(name);
	--%><!-- 그동안 request.getParameter를 이용하여 사용했던 방식 -->
	
	<%--
		request.setCharacterEncoding("UTF-8");
	
		TestBean test = new TestBean();
		test.setName(request.getParameter("name"));
		out.println(test.getName());
	--%><!-- java방식 -->
	
	<%--useBean으로 객체를 생성한 후 setProperty와 getProperty 사용가능하다--%>
	<jsp:useBean id = "test" class = "hs.mirim.TestBean"/>
	<jsp:setProperty name = "test" property = "name"/>
	<jsp:getProperty property="name" name="test"/>입니다.
	<!-- jsp 방식 -->
	
	
	<!-- java방식과 jsp 방식을 섞어쓸 수 있지만 권장하진 않음 -->
	
</body>
</html>
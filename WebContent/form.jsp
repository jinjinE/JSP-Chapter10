<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이름을 입력하세요</h2>
<form method = "post" action = "proc.jsp">
	 이름 : <input type = "text" name = "name"><br>
	 <!-- 보통 input의 값을 넘겨받을때는 request.getParameter를 사용했지만 자바빈을 사용할경우 setproperty로 자바빈에 넣은 후 getproperty로 가져옴-->
	 <input type = "submit" value = "입력완료">
</form>
</body>
</html>
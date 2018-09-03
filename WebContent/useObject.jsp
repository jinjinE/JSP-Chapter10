<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "member" class = "hs.mirim.MemberInfo" scope = "request"/>
<!-- makeObject의 useBean의 id이름과 useObject의 useBean의 id이름이 같을 경우에 객체를 새로 생성하는 것이 아니라 같은 객체를 공유해서 사용함 -->
<jsp:setProperty name="member" property="name" value = "최승호"/>
<jsp:getProperty name="member" property="name"/>은 치킨을 좋아해<br>
<!-- 공유해서 사용하기 때문에 따로 set메서드나 setProperty를 부르지 않아도 get으로 내용을 읽어올 수 있음 -->

<br>

<%=member.getName() %> (<%= member.getId() %>) 회원님 안녕하세요.
</body>
</html>
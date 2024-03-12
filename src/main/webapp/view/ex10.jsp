<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>HTML을 활용한 서버(서블릿)에게 정보 보내기</h2>
	<form action="/01_servlet/Ex10" method="post">
		<P>이름 : <input type="text" name="userName" placeholder="이름을 입력하세요" required></P>
		<P>나이 : <input type="number" name="userAge" required></P>
		<input type="submit" value="서버에게 보내기">
		<input type="reset" value="취소">
	</form>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 : response</title>
</head>
<body>
	<%-- 
		response(응답) : 응답에 대한 정보를 가지고 있는 객체
			- 헤더 정보
			- 쿠키 정보
			- 리다이렉트 사용 :  response.sendRedirect("이동할 주소");
			
		웹 페이지 이동 
			1. a 태그를 이용한 이동 
				<a href="이동할 주소">텍스트</a>
				<a href="이동할 주소?name=value&name=value...">텍스트</a>
			2. 자바스크립트를 통한 이동
				이벤트 function 안에서 
				location.href="이동할 주소";
				location.href="이동할 주소?name=value&name=value...";
			-------------------------------------------------------------------
			3. 리다이렉트 : response.sendRedirect("이동할 주소");
						 기존의 request와 response 정보가 사라진다.
						 즉, 새로운 request와 response 정보가 만들어 진다	
						 파라미터 정보도 사라진다. 
						 주소창에는 최종 주소가 보인다. 
						 
			4. 포워딩 : request.getRequestDispatcher("이동할 주소").forward(request, response);
						 기존의 request와 response 정보가 사라지지 않는다.
						 파라미터도 유지된다.
						 주소창에는 최초 주소가 보인다. 
			
				
	--%>
</body>
</html>













































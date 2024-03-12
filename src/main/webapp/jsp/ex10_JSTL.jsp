<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : 포맷팅 (fmt) => 숫자와 날짜 포맷팅</title>
</head>
<body>
	<%-- 
		
	
	--%>
	<h2>formatNumber 숫자만 받을 수 있고 천단위로 구분</h2>
	<h3>
		<li><fmt:formatNumber value="123456.5748" /></li>
	</h3>
	<hr>
	<h2>parseNumber 숫자,문자 섞일때는 숫자만 받는다 단, 처음시작은 숫자여야 한다. 천단위 구분 없다.</h2>
	<h3>
		<li><fmt:parseNumber value="123456.5748" /></li>
		<li><fmt:parseNumber value="12345aa6.5748" /></li>
	</h3>
	<hr>
	<h2>formatNumber 정수만 구하기(반올림 처리)</h2>
	<h3>
		<li><fmt:formatNumber value="457123456.4748" pattern="#,###" /></li>
		<li><fmt:formatNumber value="457123456.5748" pattern="#,###.#"/></li>
		<li><fmt:formatNumber value="457123456" pattern="#,###.#"/></li>
		<li><fmt:formatNumber value="457123456" pattern="#,###.0"/></li>
	</h3>
	<hr>
	<h2>#, 0의 차이</h2>
	<h3>
		<li><fmt:formatNumber value="127" pattern="#,###" /></li>
		<li><fmt:formatNumber value="127" pattern="#,###.#" /></li>
		<li><fmt:formatNumber value="127" pattern="0,000" /></li>
		<li><fmt:formatNumber value="127" pattern="0,000.0" /></li>
	</h3>
	<hr>
	<h2>현재 운영체제에 맞는 화폐단위 표시(반올림)</h2>
	<h3>
		<li><fmt:formatNumber value="457123456.4748" type="currency" /></li>
		<li><fmt:formatNumber value="457123456.5748" type="currency" /></li>
		<li><fmt:formatNumber value="457123456" type="currency" /></li>
		<li><fmt:formatNumber value="457123456" type="currency" /></li>
	</h3>
	<hr>
	<h2>% 구하기 ()value*100 + "%")</h2>
	<h3>
		<li><fmt:formatNumber value="12" type="percent" /></li>
		<li><fmt:formatNumber value="0.12" type="percent" /></li>
	</h3>
	<hr>
	<h2>오늘 날짜 구하기</h2>
	<%-- 자바의 객체 생성과 같음 <jsp:useBean id="호출하는 이름"></jsp:useBean>--%>
	<jsp:useBean id="now" class="java.util.Date" />
	<h3>
		<li>오늘 날짜 : ${now}</li>
		<li><fmt:formatDate value="${now}" dateStyle="short"/> </li>
		<li><fmt:formatDate value="${now}" dateStyle="medium"/> </li>
		<li><fmt:formatDate value="${now}" dateStyle="long"/> </li>
		<li><fmt:formatDate value="${now}" dateStyle="full"/> </li>
		<hr>
		<li><fmt:formatDate value="${now}" type="time" timeStyle="short"/> </li>
		<li><fmt:formatDate value="${now}" type="time" timeStyle="medium"/> </li>
		<li><fmt:formatDate value="${now}" type="time" timeStyle="long"/> </li>
		<li><fmt:formatDate value="${now}" type="time" timeStyle="full"/> </li>
		<hr>
		<li><fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/> </li>
		<li><fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/> </li>
		<li><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/> </li>
		<li><fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/> </li>
	</h3>	
	
</body>
</html>



























<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<p>페이지에 오류가 발생했습니다<br>
	   예외 유형 : <%=exception.getClass().getName() %><br>
	   오류 메세지 : <%=exception.getMessage() %></p>
</body>
</html>
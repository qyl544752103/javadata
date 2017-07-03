<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
被包含页面<br>



<%
	
	String name1=request.getParameter("username1");
	pageContext.setAttribute("name", "lisi");

%>

第一个页面的内容：<%=name1 %><br>
第2个页面的内容：<%=pageContext.getAttribute("name") %><br>
</body>
</html>
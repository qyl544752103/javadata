<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   
   <%
   		//page范围内设置属性
   		pageContext.setAttribute("name", "name_page");
   		//request范围内设置属性
   		pageContext.setAttribute("name01", "name_request01", pageContext.REQUEST_SCOPE);
   		request.setAttribute("name", "name_request");
   		//session范围内设置属性
   		pageContext.setAttribute("name01", "name_session01",pageContext.SESSION_SCOPE);
   		session.setAttribute("name", "name_session");
   		//application范围内设置属性
   		pageContext.setAttribute("name01", "naem_application01", pageContext.APPLICATION_SCOPE);
   		application.setAttribute("name", "name_application");
   		
   		String name_page = (String)pageContext.getAttribute("name");
   		String name_request = (String)request.getAttribute("name");
   		String name_session = (String)session.getAttribute("name");
   		String name_application = (String)application.getAttribute("name");
   
   		String name_gape01 = (String)pageContext.getAttribute("name01");
   		String name_request01 = (String)pageContext.getAttribute("name01", pageContext.REQUEST_SCOPE);
   		String name_session01 = (String)pageContext.getAttribute("name01",pageContext.SESSION_SCOPE);
   		String name_application01 = (String)pageContext.getAttribute("name01", pageContext.APPLICATION_SCOPE);
   		
   

   %>
   
   <%=name_page %><br>
   <%=name_request %><br>
   <%=name_session %><br>
   <%=name_application %><br>
   <%="*******************************" %><br>
 
   <%=name_gape01 %><br>
  <%=name_request01 %><br>
   <%=name_session01 %><br>
   <%=name_application01 %><br>
	<%="*******************************" %><br>
	page范围：${pageScope.name }<br>
	page范围：${pageSCope.name01 }<br>
	request范围：${requestScope.name }<br>
	request范围： ${requestScope.name01 }<br>
	不指定范围： ${name }<br>
</body>
</html>
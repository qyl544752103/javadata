<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
jsp基础标签页面<br>
<%-- jsp的java开发标签 --%>
<%!
	//此标签用来声明全局变量，和方法
	String name = "小明";
	String age = "26";
	public void study(){
		System.out.println("有一个"+age+"学生叫："+name+"在学习");
	%>	
			他的名字叫<%=name %>年龄是<%=age %>

	<%!
	}
	
%>
<%
//程序代码标签。这里面的代码都在servlet类的的方法中
study();
System.out.println("有一个"+age+"学生叫："+name+"在学习");

%>
<%!
	//声明变量和写方法，这里面的 代码块是在servlet类体中
%>

<%
	//写一些适合在方法体里面的代码块，这里面的代码都是在servlet类的方法中
%>
<%=
	//写一些表达式，直接打印输出用
%>

<%--
	//jsp中的注释标签
 --%>
</body>
</html>
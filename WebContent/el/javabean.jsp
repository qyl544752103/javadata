<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.el.*,java.util.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		El el = new El();
		el.setID(1001);
		el.setName("阿里");
		el.setGongz(5000);
		
		Dept aa = new Dept();
		aa.setIddept(1);
		aa.setNamedept("技术部");
		el.setDept(aa);
		request.setAttribute("el", el);
		
		List list = new ArrayList();
		Dept d1 = new Dept();
		d1.setNamedept("人力部");
		Dept d2 = new Dept();
		d1.setNamedept("资源部");
		Dept d3 = new Dept();
		d1.setNamedept("产品部");
		list.add(d1);
		list.add(d2);
		list.add(d3);
		request.setAttribute("deptlist", list);
		
	%>
		员工编号：${el.ID }<br>
		员工姓名：${el.name }<br>
		员工工资：${el.gongz }
		
		<br>
		<%--dept是el类里面的属性，所以必须跟el类中的属性名字一致。
		类似上面的 id name gongz一样，  所以是el.dept.后面跟dept里面的属性名字 --%>
		部门id：${el.dept.iddept }<br>
		部门名字：${el.dept.namedept }
 
 		部门名字：${requestScope.deptlist[0].namedept }
 		部门名字：${requestScope.deptlist[1] }



</body>
</html>
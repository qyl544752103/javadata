<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	用户名：${param.username }<br>
	密码：${param.psd }<br>
	性别：${param.sex }<br>
	爱好：${paramValues.aihao[0] },${paramValues.aihao[1] },${paramValues.aihao[2] }<br>
	请求头：${header.host }<br>
	${header["user-agent"] }



</body>
</html>
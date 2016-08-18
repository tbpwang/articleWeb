<%-- Created by Administrator at 16-7-9 上午10:30 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <title>index page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<h1>首页</h1>
<form action="${ctx}/user/login" method="post">
    <label>用户名：<input type="text" name="username" placeholder="USERNAME" value="admin"> </label>
    <label>密  码：<input type="password" name="password" placeholder="PASSWORD" value="123"></label><br>
    <input type="submit" value="登陆">
</form>
${requestScope.message}
<hr>
<a href="${ctx}/register.jsp">注册</a>
</body>
</html>

<%-- Created by Administrator at 16-7-9 下午1:53 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>user register page</title>
</head>
<body>
<h1>user register page</h1>
<form action="${ctx}/user/register" method="post">
    <input type="text" name="username" placeholder="USERNAME"><br>
    <input type="password" name="password" placeholder="PASSWORD"><br>
    <input type="submit" value="REGISTER">
</form>
${requestScope.message}
</body>
</html>

<%-- Created by Administrator at 16-7-9 下午1:53 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>user register page</title>
</head>
<body>
<h1>普通用户注册</h1>
<form action="${ctx}/user/register" method="post">
    用 户 名：<input type="text" name="username" placeholder="USERNAME" required><br>
    密    码：<input type="password" name="password" placeholder="PASSWORD" required><br>
    确认密码：<input type="password" name="repassword" placeholder="REPASSWORD" required><br>
    联系电话：<input type="text" name="phone" placeholder="TELEPHONE" required><br>
    联系地址：<input type="text" name="address" placeholder="ADDRESS" required><br>
    <input type="submit" value="注册用户">
</form>
${requestScope.message}
</body>
</html>

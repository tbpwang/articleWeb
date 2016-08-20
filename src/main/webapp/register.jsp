<%-- Created by Administrator at 16-7-9 下午1:53 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>user register page</title>
    <script type="text/javascript">
        function checkValid() {
            var p1;
            var p2;
            p1 = document.userRegister.password.value;
            p2 = document.userRegister.repassword.value;
            if (p1 != p2) {
                alert("password is not matched by re_password!")
                document.userRegister.repassword.focus();
                return false;
            }
            return true;
        }
    </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<h2>普通用户注册</h2>
<hr>
<form name="userRegister" action="${ctx}/user/register" method="post">
    <label for="username">用 户 名：</label><input type="text" id="username" name="username" placeholder="USERNAME" required>*<br>
    <label for="password">密    码：</label><input type="password" id="password" name="password" placeholder="PASSWORD" required>*<br>
    <label for="repassword">确认密码：</label><input type="password" id="repassword" name="repassword" placeholder="REPASSWORD" required>*<br>
    <label for="phone">联系电话：</label><input type="tel" id="phone" name="phone" placeholder="TELEPHONE" required>*<br>
    <label for="address">联系地址：</label><input type="text" id="address" name="address" placeholder="ADDRESS" required>*<br>
    <input type="submit" onclick="return checkValid()" value="注册用户">
</form>
<hr>
<p>注：*为必填项</p>
${requestScope.message}
</body>
</html>

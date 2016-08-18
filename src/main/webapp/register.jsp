<%-- Created by Administrator at 16-7-9 下午1:53 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/inc.jsp"%>
<html>
<head>
    <title>user register page</title>
    <script>
        function checkValid() {
            var p1 = document.userRegister.password.value;
            var p2 = document.userRegister.repassword.value;
            if (p1 != p2) {
                alert("password is not matched by re_password!")
                document.userRegister.repassword.focus();
                return false;
            } else {
                return true;
            }

        }
    </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<h2>普通用户注册</h2>
<hr>
<form action="${ctx}/user/register" method="post">
    用 户 名：<input type="text" name="username" placeholder="USERNAME" required><br>
    密    码：<input type="password" id="password" name="password" placeholder="PASSWORD" required><br>
    确认密码：<input type="password" id="repassword" name="repassword" placeholder="REPASSWORD" required><br>
    联系电话：<input type="tel" name="phone" placeholder="TELEPHONE" required><br>
    联系地址：<input type="text" name="address" placeholder="ADDRESS" required><br>
    <input type="submit" onclick="return checkValid()" value="注册用户">
</form>
${requestScope.message}
</body>
</html>

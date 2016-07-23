<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp"%>
<html>
<head>
    <title>admin page</title>
</head>
<body>
<c:if test="${sessionScope.user.role eq admin}">
    <c:redirect url="/index.jsp"/>
</c:if>
<h1>admin page</h1>
Admin: ${sessionScope.user.username}
<hr>
<a href="${ctx}/user/logout">LOG OUT</a>
</body>
</html>

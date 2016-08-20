<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp" %>
<html>
<head>
    <title>user page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<%--<c:if test="${sessionScope.user.role eq user}">--%>
<%--<c:redirect url="/index.jsp"/>--%>
<%--</c:if>--%>
<h2>用户查询文章</h2>
<c:if test="${sessionScope.user.username != null}">
    <p style="text-align: right">欢迎您，用户${sessionScope.user.username}！</p>
    <hr>
    <form action="${ctx}/article/searchByKey" method="post">
        <label>标题关键字：</label>
        <input type="text" name="title">
        <label>内容关键字：</label>
        <input type="text" name="content">
        <input type="submit" value="查找文章">
    </form>
    <hr>
</c:if>
<h3>文章列表</h3>
<br>
<table>
    <tr>
        <th>序号</th>
        <th>文章标题</th>
        <th>发布时间</th>
    </tr>
    <c:forEach var="article" items="${sessionScope.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>
                <c:if test="${sessionScope.user.username != null}">
                    <a href="${ctx}/article/queryForDetail/${article.id}">${article.title}</a>
                </c:if>
                <c:if test="${sessionScope.user.username == null}">
                    ${article.title}
                </c:if>
            </td>
            <td>${article.date}</td>
        </tr>
    </c:forEach>
</table>
<hr>
<a href="${ctx}/user/logout">注销</a>
</body>
</html>

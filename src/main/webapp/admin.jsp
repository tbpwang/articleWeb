<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp" %>
<html>
<head>
    <title>admin page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
    <script>
        function del() {
            return confirm('REMOVE?');
        }
    </script>
    <%--<script>--%>
    <%--function checkRequiredInput() {--%>
    <%--var title = document.getElementsByName("title").value;--%>
    <%--}--%>
    <%--</script>--%>
</head>
<body>
<c:if test="${sessionScope.user.role eq admin}">
    <c:redirect url="${ctx}/index.jsp"/>
</c:if>
<h2>管理员页面</h2>
<%--<p style="text-align: right">Welcome! Admin: ${sessionScope.user.username}</p>--%>
<hr>
<table>
    <tr>
        <th>序号</th>
        <th>文章标题</th>
        <th>发布时间</th>
        <th colspan="2">操作</th>
    </tr>
    <c:forEach var="article" items="${sessionScope.list}" varStatus="vs">
        <td>${vs.count}</td>
        <td><a href="${ctx}/article/queryForDetail/${article.id}">${article.title}</a></td>
        <td>${article.date}</td>
        <td><a href="${ctx}/article/search/${article.id}">修改</a></td>
        <td><a class="delete" href="${ctx }/article/remove/${article.id}" onclick="return del()">删除</a></td>
        </tr>
    </c:forEach>
</table>
<hr>
<h2>发布新文章</h2>
<form action="${ctx}/article/create" method="post">
    <input type="hidden" name="userId" value="${user.id}"><br>
    <label for="title">文章题目: </label>
    <input id="title" name="title" required="required"><br>
    <label for="abstractString">文章摘要:</label>
    <input id="abstractString" name="abstractString" required="required"><br>
    <label for="content">文章内容:</label>
    <input id="content" type="text" name="content" required="required" aria-multiline="true"><br>
    <input type="submit" value="文章发布">
</form>
<hr>
<a href="${ctx}/user/logout">注销</a>
</body>
</html>

<%-- Created by Administrator at 16-7-9 下午4:08 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp"%>
<html>
<head>
    <title>admin page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
    <script>
        function del() { return confirm('REMOVE?'); }
    </script>
    <%--<script>--%>
        <%--function checkRequiredInput() {--%>
            <%--var title = document.getElementsByName("title").value;--%>
        <%--}--%>
    <%--</script>--%>
</head>
<body>
<c:if test="${sessionScope.user.role eq admin}">
    <c:redirect url="/index.jsp"/>
</c:if>
<h2>管理员页面</h2>
<p style="text-align: right">Welcome! Admin: ${sessionScope.user.username}</p>
<hr>
<h2>Article List</h2>
<hr>
<table border="1">
    <tr>
        <th>序号</th>
        <th>文章题目</th>
        <th>发布时间</th>
        <th colspan="2">OPERATION</th>
    </tr>
    <c:forEach var="article" items="${sessionScope.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td><a href="${ctx}/article/queryForDetail/${article.id}">${article.title}</a></td>
            <td>${article.date}</td>
            <td><a href="${ctx}/article/search/${article.id}">EDIT</a></td>
            <td><a class="delete" href="${ctx }/article/remove/${article.id}" onclick="return del()">REMOVE</a></td>
        </tr>
    </c:forEach>
</table>
<hr>
<h2>Article Create</h2>
<form action="${ctx}/article/create" method="post">
    <input type="hidden" name="userId" value="${user.id}"><br>
    文章题目*: <label>
    <input id="title" name="title" required="required">
</label><br>
    文章摘要*: <label>
    <input name="abstractString" required="required">
</label><br>
    文章内容*: <label>
    <input type="text" name="content" required="required">
</label><br>
    发布日期*: <label>
    <input type="date" name="date" required="required">
</label><br>
    <input type="submit"  onclick="checkRequiredInput()" value="添加文章">
</form>
<label >注：标示*的为必填项</label>
<hr>
<a href="${ctx}/user/logout">注销</a>
</body>
</html>

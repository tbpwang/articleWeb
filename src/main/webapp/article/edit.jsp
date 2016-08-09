<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>article edit page</title>
</head>
<body>
<h1>Article Edit</h1>
<form action="${ctx}/article/modify" method="post">
    <input type="hidden" name="id" value="${sessionScope.article.id}">
    <input type="hidden" name="userId" value="${sessionScope.article.userId}"><br>
    TITLE: <input name="title" value="${sessionScope.article.title}"><br>
    ABSTRACT: <input name="abstractString" value="${sessionScope.article.abstractString}"><br>
    CONTENT: <input type="text" name="content" value="${sessionScope.article.content}"><br>
    <input type="submit" value="MODIFY">
</form>
</body>
</html>
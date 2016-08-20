<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>article edit page</title>
</head>
<body>
<h2>修改文章</h2>
<form action="${ctx}/article/modify" method="post">
    <input type="hidden" name="id" value="${sessionScope.article.id}">
    <label for="title">文章标题: </label> <input name="title" id="title" value="${sessionScope.article.title}"><br>
    <label for="abstractString">文章摘要: </label> <input name="abstractString"  id="abstractString" value="${sessionScope.article.abstractString}"><br>
    <label for="content">文章内容: </label> <input type="text"  id="content" name="content" value="${sessionScope.article.content}"><br>
    <input type="submit" value="修改">
</form>
</body>
</html>
<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>article detail page</title>
</head>
<body>
<span style="text-align: center"><h1>文章详情</h1></span>
<hr>
<h2>${sessionScope.article.title}</h2>
<p style="text-align: right">
    发布时间: ${sessionScope.article.date}
</p>
<p>
    摘要: ${sessionScope.article.abstractString}
</p>
<p>
    文章内容: ${sessionScope.article.content}
</p>
</body>
</html>
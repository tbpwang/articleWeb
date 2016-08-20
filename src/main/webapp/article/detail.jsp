<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/common/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>article detail page</title>
</head>
<body>
<h2>文章详情</h2>
<hr>
<h3 style="text-align: center">${sessionScope.article.title}</h3>
<p style="text-align: right">
    发布时间: ${sessionScope.article.date}
</p>
<p>
    摘要: ${sessionScope.article.abstractString}
</p>
<p>
    正文: ${sessionScope.article.content}
</p>
</body>
</html>
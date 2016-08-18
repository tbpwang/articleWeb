<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>article list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <h2>Article List</h2>
        <hr/>
        <c:import url="${ctx}/article/create.jsp"/>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>ID</th>
                <th>TITLE</th>
                <th>ABSTRACTSTRING</th>
                <th>CONTENT</th>
                <th>DATE</th>
                <th>USERID</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="article" items="${sessionScope.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${article.id}</td>
                <td>${article.title}</td>
                <td>${article.abstractString}</td>
                <td>${article.content}</td>
                <td>${article.date}</td>
                <td>${article.userId}</td>
                <td><a href="${ctx}/article/search/${article.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/article/remove/${article.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
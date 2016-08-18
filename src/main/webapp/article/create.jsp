<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>article add page</title>
    </head>
    <body>
        <h2>Article Create</h2>
        <form action="${ctx}/article/create" method="post">
             <input type="hidden" name="userId" value="${user.id}"><br>
            TITLE: <input name="title"><br>
            ABSTRACTSTRING: <input name="abstractString"><br>
            CONTENT: <input name="content"><br>
            DATE: <input name="date"><br>
            <input type="submit" value="CREATE">
        </form>
    </body>
</html>
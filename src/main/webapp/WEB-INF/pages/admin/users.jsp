<%--
  Created by IntelliJ IDEA.
  User: Johnn
  Date: 2017/2/10
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge">
    <meta name="viewport" content="width=device-width,inital-scale=1">
    <title>SpringMVC 用户管理</title>

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="container">
    <h1>SpringMVC 博客系统-用户管理</h1>
    <hr/>

    <h3>所有用户<a href="/admin/users/add" type="button" class="btn btn-primary btn-sm">添加</a> </h3>

    <%--如果用户列表为空--%>
    <c:if test="${empty userList}">
        <div class="alert table-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>user表为空，请<a href="/admin/users/add" type="button" class="btn btn-primary btn-sm">添加</a>
        </div>
    </c:if>
    <%--如果用户列表非空--%>
<c:if test="${empty userList}">
    <table class="Table table-bordred table-striped">
    <tr>
        <th>ID</th>
        <th>昵称</th>
        <th>姓名</th>
        <th>密码</th>
        <th>操作</th>
    </tr>


    <c:forEach items="${userList}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.nickname}</td>
            <td>${user.fristName} ${user.lastName}</td>
            <td>${user.password}</td>
            <td>
                <a href="/admin/users/show/${user.id}"type="button" class="btn btn-sm btn-success">详情</a>
                <a href="/admin/users/update/${user.id}"type="button" class="btn btn-sm btn-warning">修改</a>
                <a href="/admin/users/delete/${user.id}"type="button" class="btn btn-sm btn-danger">删除</a>

            </td>
        </tr>
    </c:forEach>
    </table>
</c:if>
</div>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: baidu
  Date: 15/12/8
  Time: 下午4:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>SpringMVC 用户管理</title>

  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="../css/bootstrap.min.css">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

  <!--[if lt IE 9]>
  <script src="../js/html5shiv.min.js"></script>
  <script src="../js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
<div class="container">
  <h1>SpringMVC 博客系统-用户管理</h1>
  <hr/>

  <h3>所有用户 <a href="/user/addUser" type="button" class="btn btn-default btn-sm">添加</a></h3>

  <!-- 如果用户列表为空 -->
  <c:if test="${empty userList}">
    <p class="bg-warning">
      <br/>
      User表为空，请<a href="/user/addUser" type="button" class="btn btn-default btn-sm">添加</a>
      <br/>
      <br/>
    </p>
  </c:if>

  <!-- 如果用户列表非空 -->
  <c:if test="${!empty userList}">
    <table class="table table-bordered table-striped">
      <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>密码</th>
        <th>操作</th>
      </tr>

      <c:forEach items="${userList}" var="user">
        <tr>
          <td>${user.id}</td>
          <td>${user.firstName} ${user.lastName}</td>
          <td>${user.password}</td>
          <td>
            <a href="/user/showUser/${user.id}" type="button" class="btn btn-sm btn-success">详情</a>
            <a href="/user/updateUser/${user.id}" type="button" class="btn btn-sm btn-warning">修改</a>
            <a href="/user/deleteUser/${user.id}" type="button" class="btn btn-sm btn-danger">删除</a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="../js/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
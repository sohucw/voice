<%--
  Created by IntelliJ IDEA.
  User: baidu
  Date: 15/12/8
  Time: 下午4:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>SpringMVC 添加用户</title>

  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">

</head>
<body>
<div class="container">
  <h1>SpringMVC 修改用户</h1>
  <hr/>
  <form:form action="/user/updateUserPost" method="post" commandName="user" role="form">
    <div class="form-group">
      <label for="firstName">First Name:</label>
      <input type="text" class="form-control" id="firstName" name="firstName" value="${user.firstName}" placeholder="Enter FirstName:"/>
    </div>
    <div class="form-group">
      <label for="lastName">Last Name:</label>
      <input type="text" class="form-control" id="lastName" name="lastName" value="${user.lastName}" placeholder="Enter LastName:"/>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="text" class="form-control" id="password" name="password" value="${user.password}" placeholder="Enter Password:"/>
    </div>


    <!-- 把 id 一并写入 userP 中 -->
    <input type="hidden" id="id" name="id" value="${user.id}"/>

    <div class="form-group">

      <button type="submit" class="btn btn-sm btn-success">提交</button>

    </div>


  </form:form>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</body>
</html>
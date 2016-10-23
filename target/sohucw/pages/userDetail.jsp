<%--
  Created by IntelliJ IDEA.
  User: baidu
  Date: 15/12/8
  Time: 下午5:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>SpringMVC 用户详情</title>

  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="<%=request.getContextPath()%>/js/html5shiv.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
<div class="container">
  <h1>SpringMVC 用户详情</h1>
  <hr/>

  <table class="table tavble-bordered table-striped">
    <tr>
      <th>ID</th>
      <td>${user.id}</td>
    </tr>
    <tr>
      <th>First Name</th>
      <td>${user.firstName}</td>
    </tr>
    <tr>
      <th>Last Name</th>
      <td>${user.lastName}</td>
    </tr>
    <tr>
      <th>Password</th>
      <td>${user.password}</td>
    </tr>
  </table>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</body>
</html>

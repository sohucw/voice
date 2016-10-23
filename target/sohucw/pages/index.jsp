<%--
  Created by IntelliJ IDEA.
  User: baidu
  Date: 15/12/7
  Time: 下午6:46
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
  <title>SpringMVC Demo 首页</title>

  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
</head>
<body>
<h1>这里是SpringMVC Demo首页</h1>

<h3>出现此页面，说明配置成功。</h3>

<div>
  <a href="/user/users">用户列表页面</a>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript">
  $(function () {
    var data = {userName: "MyUsername", password:"Password"};
    $.ajax({
      url: '/user/test',
      dataType : 'json',
      type : 'get',
      contentType: "application/json",
      data: data,
      success: function(response){
        console.log(response);
        console.log(response.data.firstName)
      }
    });
  })
</script>
</body>
</html>
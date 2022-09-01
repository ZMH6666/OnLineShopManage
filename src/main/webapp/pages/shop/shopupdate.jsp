<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/6/3
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>编辑店铺</title>


    <script src="./layui/layui/layui.js"></script>
    <script src="./js/jquery.js"></script>
    <link type="text/css" rel="stylesheet" href="./layui/layui/css/layui.css" />
    <link rel="stylesheet" href="./layui/layui/css/layui.css">

</head>

<body>

<div class="layui-layout layui-layout-admin">
    <%--    头部--%>
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black">电子商城后台管理</div>

        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="javascript:;">
                    <img src="login.jpg"
                         class="layui-nav-img">
                    ${username}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="main">首页</a></dd>
                    <dd><a href="logout">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <%--侧边栏--%>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item"><a href="main">首页</a></li>

                <li class="layui-nav-item ">
                    <a class="" href="javascript:;">商品管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="goodslist">商品列表</a></dd>
                        <%--                        <dd><a href="pages/goods/goodslist.jsp">商品列表</a></dd>--%>
                        <dd><a href="goodsadd">添加商品</a></dd>
                        <dd><a href="hasloadgoods">上架商品</a></dd>

                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;">商铺管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="shoplist">商铺列表</a></dd>
                        <dd><a href="shopadd">添加商铺</a></dd>

                    </dl>
                </li>
                <li class="layui-nav-item ">
                    <a href="javascript:;">订单管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="orderlist">订单列表</a></dd>
                    </dl>
                </li>

            </ul>
        </div>
    </div>

    <div class="layui-body" style="padding: 15px;">
        <div class="weadmin-nav" style="padding-bottom: 15px">
            <span class="layui-breadcrumb">
                <a href="main">首页</a>
                <a href="shoplist">商铺管理</a>
                <a>
                    <cite>编辑商铺</cite></a>
            </span>

        </div>
        <!-- 内容主体区域 -->
        <div style="width: 650px; position: relative; left:25%; padding-top: 20px">
            <form class="layui-form" action="shopupdate" method="post" >
                <input type="hidden" name="id" value="${shop.id}"/>
                <div class="layui-form-item" style="padding-bottom: 10px">
                    <label class="layui-form-label">
                        <span style="color: red">*</span>商铺名</label>
                    <div class="layui-input-block">
                        <input type="text" name="name" required  lay-verify="required" value="${shop.name}" autocomplete="off" class="layui-input">
                    </div>
                    <%--                    <div class="layui-form-mid layui-word-aux">请输入</div>--%>
                </div>

                <div class="layui-form-item" style="padding-bottom:10px">
                    <label class="layui-form-label">
                        <span style="color: red">*</span>初始评分
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" lay-verify="number" name="score" required  lay-verify="required" value="${shop.score}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">
                        <%--                        <span style="color: red">*</span>--%>
                        简介</label>
                    <div class="layui-input-block">
                        <textarea name="describe" value="${shop.describe}"  class="layui-textarea">${shop.describe}</textarea>
                    </div>
                </div>

                <div class="layui-form-item" style="padding-bottom: 10px">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>


    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        电子商城
    </div>

</div>

<script>
    var existShop = '<%=request.getAttribute("existShop")%>';

    if(existShop =='true' ){
        layer.msg("该商铺名已经存在，请重新设置", {icon: 2});
    }


</script>
</body>


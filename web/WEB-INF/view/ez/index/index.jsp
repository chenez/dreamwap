<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="description" content="职业规划成功指数">
    <meta name="keywords" content="职业规划成功指数">
    ‍<meta name="generator" content="Hbuilder tool" />
    <meta name="author" content="陈恩泽">
    <title>职业规划成功指数</title>
    <link rel="stylesheet" type="text/css" href="/static/css/build.css">
    <script type="text/javascript" src="/static/js/jquery-2.0.3.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/static/layui/layui.js" charset="utf-8"></script>

    <script>
        //Demo
        layui.use(['layer', 'form','jquery'], function(){
            var layer = layui.layer
                    ,form = layui.form()
                    ,$ = layui.jquery;

        });
        //点击开始测试按钮
        function kscs(){
            var node1=$('#contain1');
            var node2=$('#contain2');
            if(node1.is(':visible') && node2.is(':hidden')){　　//如果node是隐藏的则显示node元素，否则隐藏
                node1.hide();
                node2.show();
            }else{
                node1.show();
                node2.hide();
            }
        };
        //点击立即提交按钮
        function ljtj(){

            var one=$("input[name='one']:checked").val();
            var two=$("input[name='two']:checked").val();
            var three=$("input[name='three']:checked").val();
            var four=$("input[name='four']:checked").val();
            var five=$("input[name='five']:checked").val();
            var six=$("input[name='six']:checked").val();
            var seven=$("input[name='seven']:checked").val();
            var eight=$("input[name='eight']:checked").val();
            if(!one || !two || !three || !four || !five || !six || !seven || !eight){
                alert("您还有题目有没有选择！");
            }else{
                $(window).scrollTop(0);
                var node2=$('#contain2');
                var node3=$('#contain3');
                if(node2.is(':visible') && node3.is(':hidden')){　　//如果node是隐藏的则显示node元素，否则隐藏　　
                    node2.hide();
                    node3.show();
                }else{
                    node2.show();
                    node3.hide();
                }

                var onesixfour=parseInt(one)+parseInt(six)+parseInt(four);
                var threeight=parseInt(three)+parseInt(eight);
                var fivetwoseven=parseInt(five)+parseInt(two)+parseInt(seven);
                if(onesixfour >= 2 && fivetwoseven >= 2 && threeight >=1){
                    $("#one").show();
                }else if(onesixfour >= 2 && fivetwoseven >= 2 && threeight < 1){
                    $("#twoone").show();
                }else if(onesixfour >= 2 && fivetwoseven < 2 && threeight >= 1){
                    $("#twotwo").show();
                }else if(onesixfour < 2 && fivetwoseven >= 2 && threeight >= 1){
                    $("#twothree").show();
                }else if(onesixfour < 2 && fivetwoseven >= 2 && threeight <1){
                    $("#three").show();
                }else if(onesixfour < 2 && fivetwoseven < 2 && threeight >= 1){
                    $("#four").show();
                }else if(onesixfour >= 2 && fivetwoseven < 2 && threeight <1){
                    $("#five").show();
                }else if(onesixfour == 1 && fivetwoseven == 1 && threeight == 0){
                    $("#six").show();
                }else if(onesixfour == 0 && fivetwoseven == 0 && threeight == 0){
                    $("#seven").show();
                }else{//没有符合条件的显示第三个
                    $("#three").show();
                }
            }
        };


    </script>
</head>
<!--分享链接缩略图-->
<div style='display:none;'>
    <img src="/static/images/suoluetu.png"/>
</div>

<body class="page_index">
<div id="contain1" >
    <div class="page_index">
        <div align="center" class="logo-w">
            <img src="/static/images/logo.png"/>
        </div>
        <h2>职业规划成功指数</h2>
        <div class="ljcy">
            <a href="javascript:void(0)" class="button button-glow button-rounded button-zdy button-primary" onclick="kscs()">开始测试</a>
        </div>
    </div>
    <div class="fter1">上海织梦人才咨询有限公司-版权所有©2015-2020</div>
</div>

<div id="contain2" style="display: none;">
    <div class="page_index">
        <div class="comtainer">
            <h2>职业规划成功指数</h2>
            <hr>
            <form class="layui-form layui-form-pane" >
                <blockquote class="layui-elem-quote">1、你对当前从事的职业中取得的成就满意吗？</blockquote>
                <div class="layui-form-item whitebg" pane>
                    <div class="layui-input-block" align="center">
                        <input type="radio" name="one" value="0" title="是">
                        <input type="radio" name="one" value="1" title="否">
                    </div>
                </div>

                <blockquote class="layui-elem-quote">2、通过实际的经验，你有觉得存在另外一个、你做了会更开心的职业吗？</blockquote>
                <div class="layui-form-item whitebg" pane>
                    <div class="layui-input-block" align="center">
                        <input type="radio" name="two" value="1" title="是">
                        <input type="radio" name="two" value="0" title="否">
                    </div>
                </div>

                <blockquote class="layui-elem-quote">3、你认为你的知识和能力储备足以胜任当前的职业吗？</blockquote>
                <div class="layui-form-item whitebg" pane>
                    <div class="layui-input-block" align="center">
                        <input type="radio" name="three" value="0" title="是">
                        <input type="radio" name="three" value="1" title="否">
                    </div>
                </div>

                <blockquote class="layui-elem-quote">4、你对当前从事的职业的工作内容感兴趣吗？</blockquote>
                <div class="layui-form-item whitebg" pane>
                    <div class="layui-input-block" align="center">
                        <input type="radio" name="four" value="0" title="是">
                        <input type="radio" name="four" value="1" title="否">
                    </div>
                </div>

                <blockquote class="layui-elem-quote">5、通过实际的经验，你有觉得存在另外一个、你做了会取得更好成就的职业吗？</blockquote>
                <div class="layui-form-item whitebg" pane>
                    <div class="layui-input-block" align="center">
                        <input type="radio" name="five" value="1" title="是">
                        <input type="radio" name="five" value="0" title="否">
                    </div>
                </div>

                <blockquote class="layui-elem-quote">6、你对当前从事职业带给你的生活状态满意吗？</blockquote>
                <div class="layui-form-item whitebg" pane>
                    <div class="layui-input-block" align="center">
                        <input type="radio" name="six" value="0" title="是">
                        <input type="radio" name="six" value="1" title="否">
                    </div>
                </div>

                <blockquote class="layui-elem-quote">7、当前而论，你有觉得如果在早期能有更多了解的情况下，个人发展方面会有更好的选择吗？</blockquote>
                <div class="layui-form-item whitebg" pane>
                    <div class="layui-input-block" align="center">
                        <input type="radio" name="seven" value="1" title="是">
                        <input type="radio" name="seven" value="0" title="否">
                    </div>
                </div>

                <blockquote class="layui-elem-quote">8、你认为如果青少年时期有更针对性的准备和积累，你在目前的职业会取得更高的成就吗？</blockquote>
                <div class="layui-form-item whitebg" pane>
                    <div class="layui-input-block" align="center">
                        <input type="radio" name="eight" value="1" title="是">
                        <input type="radio" name="eight" value="0" title="否">
                    </div>
                </div>

                <div class="layui-form-item" align="center">
                    <!-- <button class="layui-btn" lay-submit="" lay-filter="formDemo">立即提交</button>-->
                    <a href="javascript:void(0)" class="layui-btn" style="width: 80%;" onclick="ljtj()">立即提交</a>
                </div>
            </form>
        </div>
    </div>
    <div class="fter">上海织梦人才咨询有限公司-版权所有©2015-2020</div>
</div>

<div id="contain3" style="display: none;">
    <div class="page_index">
        <div class="comtainer">
            <!--<h2>评测结果 </h2>
            <hr>-->
            <form class="layui-form layui-form-pane" action="" >
                <div id="one" style="display: none;">
                    <blockquote class="layui-elem-quote first-quote">您的职业遗憾度：
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                    </blockquote>
                    <blockquote class="layui-elem-quote layui-quote-nm whitebg">
                        <p class="texindext">
                            您的职业生涯似乎满满都是遗憾。如果重新来过，你可能会做出更合适的选择，可能会做更好的准备，从而获得更多的成就和满足。
                        </p>
                        <p class="texindext">
                            不知道当年的你，有没有过困惑，我想象中的目标职业到底是怎么样的？
                            不知道后来的你，有没有过后悔，如果当年有人指点你更好的学习准备，你如今会做的更好？
                        </p>
                        <p class="texindext bold">
                            如今，你有机会来指点一下小朋友和家长了，还是有报酬的那种。
                        </p>
                        <p class="texindext">
                            只需要简单的在线注册，你就有机会将你的<span class="bold">职业经验和体会</span>以<span class="bold">聊天的形式</span>在线分享给感兴趣的家庭并<span class="bold">收取报酬</span>。
                        </p>
                        <p class="pb5 center">
                            <a href="http://www.qidianzhan.com.cn/wap/" class="layui-btn half"><i class="fa fa-sign-in"></i>在线注册</a>
                            <a href="http://mp.weixin.qq.com/s/hOLqAoS9_GDh8RLYrAWJbA" class="layui-btn half"><i class="fa fa-bars"></i>了解更多</a>
                        </p>
                        <p class="texindext">
                            或者你的朋友们可能希望能够分享他们的体会，你可以把本测试分享到朋友圈，<span class="bold">注：不会显示你的测试结果哦</span>！
                        </p>
                    </blockquote>
                </div>

                <div id="twoone" style="display: none;">
                    <blockquote class="layui-elem-quote first-quote">您的职业遗憾度：
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                    </blockquote>
                    <blockquote class="layui-elem-quote layui-quote-nm whitebg">
                        <p class="texindext">
                            您的职业生涯似乎有不少遗憾。尽管你对目前的职业做好了准备，但是可能当前职业不是你认为最适合的选择，所以你在当前职业没有得到充分的满足。
                        </p>
                        <p class="texindext">
                            不知道当年的你，有没有过困惑，我想象中的目标职业到底是怎么样的？
                            在做每一次选择之前，有没有希望过能够多了解一些不同的方向和可能性？
                        </p>
                        <p class="texindext bold">
                            如今，你有机会来指点一下小朋友和家长了，还是有报酬的那种。
                        </p>
                        <p class="texindext">
                            只需要简单的在线注册，你就有机会将你的<span class="bold">职业经验和体会</span>以<span class="bold">聊天的形式</span>在线分享给感兴趣的家庭并<span class="bold">收取报酬</span>。
                        </p>
                        <p class="pb5 center">
                            <a href="http://www.qidianzhan.com.cn/wap/" class="layui-btn half"><i class="fa fa-sign-in"></i>在线注册</a>
                            <a href="http://mp.weixin.qq.com/s/hOLqAoS9_GDh8RLYrAWJbA" class="layui-btn half"><i class="fa fa-bars"></i>了解更多</a>
                        </p>
                        <p class="texindext">
                            或者你的朋友们可能希望能够分享他们的体会，你可以把本测试分享到朋友圈，<span class="bold">注：不会显示你的测试结果哦</span>！
                        </p>
                    </blockquote>
                </div>

                <div id="twotwo" style="display: none;">
                    <blockquote class="layui-elem-quote first-quote">您的职业遗憾度：
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                    </blockquote>
                    <blockquote class="layui-elem-quote layui-quote-nm whitebg">
                        <p class="texindext">
                            您的职业生涯似乎有不少遗憾。虽然你目前从事的职业是您最适合的选择，但是可能由于早期没有做好充分的准备，你目前在职业中没有获得满意的状态。
                        </p>
                        <p class="texindext">
                            不知道你在职业的道路上有没有过后悔，如果当年有人指点你更好的学习准备，你如今会做的更好？
                        </p>
                        <p class="texindext bold">
                            如今，你有机会来指点一下小朋友和家长了，还是有报酬的那种。
                        </p>
                        <p class="texindext">
                            只需要简单的在线注册，你就有机会将你的<span class="bold">职业经验和体会</span>以<span class="bold">聊天的形式</span>在线分享给感兴趣的家庭并<span class="bold">收取报酬</span>。
                        </p>
                        <p class="pb5 center">
                            <a href="http://www.qidianzhan.com.cn/wap/" class="layui-btn half"><i class="fa fa-sign-in"></i>在线注册</a>
                            <a href="http://mp.weixin.qq.com/s/hOLqAoS9_GDh8RLYrAWJbA" class="layui-btn half"><i class="fa fa-bars"></i>了解更多</a>
                        </p>
                        <p class="texindext">
                            或者你的朋友们可能希望能够分享他们的体会，你可以把本测试分享到朋友圈，<span class="bold">注：不会显示你的测试结果哦</span>！
                        </p>
                    </blockquote>
                </div>
                <div id="twothree" style="display: none;">
                    <blockquote class="layui-elem-quote first-quote">您的职业遗憾度：
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star-o  star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                    </blockquote>
                    <blockquote class="layui-elem-quote layui-quote-nm whitebg">
                        <p class="texindext">
                            您的职业生涯似乎有一些遗憾。虽然你对当前的职业感到满意，但是你似乎觉得其实还有更好的选择，或者目前的这份，您可以做到更好。
                        </p>
                        <p class="texindext">
                            不知道你在职业的道路上有没有过后悔，如果当年有人指点你更好的学习准备，你如今会做的更好？
                            在做每一次选择之前，有没有希望过能够多了解一些不同的方向和可能性？
                        </p>
                        <p class="texindext bold">
                            如今，你有机会来指点一下小朋友和家长了，还是有报酬的那种。
                        </p>
                        <p class="texindext">
                            只需要简单的在线注册，你就有机会将你的<span class="bold">职业经验和体会</span>以<span class="bold">聊天的形式</span>在线分享给感兴趣的家庭并<span class="bold">收取报酬</span>。
                        </p>
                        <p class="pb5 center">
                            <a href="http://www.qidianzhan.com.cn/wap/" class="layui-btn half"><i class="fa fa-sign-in"></i>在线注册</a>
                            <a href="http://mp.weixin.qq.com/s/hOLqAoS9_GDh8RLYrAWJbA" class="layui-btn half"><i class="fa fa-bars"></i>了解更多</a>
                        </p>
                        <p class="texindext">
                            或者你的朋友们可能希望能够分享他们的体会，你可以把本测试分享到朋友圈，<span class="bold">注：不会显示你的测试结果哦</span>！
                        </p>
                    </blockquote>
                </div>

                <div id="three" style="display: none;">
                    <blockquote class="layui-elem-quote first-quote">您的职业遗憾度：
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                    </blockquote>
                    <blockquote class="layui-elem-quote layui-quote-nm whitebg">
                        <p class="texindext">
                            您的职业生涯似乎有一些遗憾。虽然你为目前职业做好了准备，也取得了满意的状态，但是你还是觉得可能有更好的选择。可能有些职业会让您更开心，更成功。
                        </p>
                        <p class="texindext">
                            不知道当年的你，有没有过困惑，我想象中的目标职业到底是怎么样的？
                            在做每一次选择之前，有没有希望过能够多了解一些不同的方向和可能性？
                        </p>
                        <p class="texindext bold">
                            如今，你有机会来指点一下小朋友和家长了，还是有报酬的那种。
                        </p>
                        <p class="texindext">
                            只需要简单的在线注册，你就有机会将你的<span class="bold">职业经验和体会</span>以<span class="bold">聊天的形式</span>在线分享给感兴趣的家庭并<span class="bold">收取报酬</span>。
                        </p>
                        <p class="pb5 center">
                            <a href="http://www.qidianzhan.com.cn/wap/" class="layui-btn half"><i class="fa fa-sign-in"></i>在线注册</a>
                            <a href="http://mp.weixin.qq.com/s/hOLqAoS9_GDh8RLYrAWJbA" class="layui-btn half"><i class="fa fa-bars"></i>了解更多</a>
                        </p>
                        <p class="texindext">
                            或者你的朋友们可能希望能够分享他们的体会，你可以把本测试分享到朋友圈，<span class="bold">注：不会显示你的测试结果哦</span>！
                        </p>
                    </blockquote>
                </div>

                <div id="four" style="display: none;">
                    <blockquote class="layui-elem-quote first-quote">您的职业遗憾度：
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                    </blockquote>
                    <blockquote class="layui-elem-quote layui-quote-nm whitebg">
                        <p class="texindext">
                            您的职业生涯似乎有些许遗憾。你做出了正确的选择，选择了适合自己的职业，也从中获得了满足。但是你似乎觉得如果当初准备的更好，现在的成就还不至于此。
                        </p>
                        <p class="texindext">
                            不知道你在职业的道路上有没有过后悔，如果当年有人指点你更好的学习准备，你如今会做的更好？
                        </p>
                        <p class="texindext bold">
                            如今，你有机会来指点一下小朋友和家长了，还是有报酬的那种。
                        </p>
                        <p class="texindext">
                            只需要简单的在线注册，你就有机会将你的<span class="bold">职业经验和体会</span>以<span class="bold">聊天的形式</span>在线分享给感兴趣的家庭并<span class="bold">收取报酬</span>。
                        </p>
                        <p class="pb5 center">
                            <a href="http://www.qidianzhan.com.cn/wap/" class="layui-btn half"><i class="fa fa-sign-in"></i>在线注册</a>
                            <a href="http://mp.weixin.qq.com/s/hOLqAoS9_GDh8RLYrAWJbA" class="layui-btn half"><i class="fa fa-bars"></i>了解更多</a>
                        </p>
                        <p class="texindext">
                            或者你的朋友们可能希望能够分享他们的体会，你可以把本测试分享到朋友圈，<span class="bold">注：不会显示你的测试结果哦</span>！
                        </p>
                    </blockquote>
                </div>

                <div id="five" style="display: none;">
                    <blockquote class="layui-elem-quote first-quote">您的职业遗憾度：
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                    </blockquote>
                    <blockquote class="layui-elem-quote layui-quote-nm whitebg">
                        <p class="texindext">
                            您的职业生涯谈不上有多少遗憾，因为你自己也不觉得有更好的选择或者有什么应该做的没做。可能只算是对自己还不太满意。
                        </p>
                        <p class="texindext">
                            可能当初的你也对目前从事的行业充满期望和憧憬。但是现实可能和你想象的并不是完全一样。
                        </p>
                        <p class="texindext bold">
                            如今，你有机会来指点一下小朋友和家长了，还是有报酬的那种。
                        </p>
                        <p class="texindext">
                            只需要简单的在线注册，你就有机会将你的<span class="bold">职业经验和体会</span>以<span class="bold">聊天的形式</span>在线分享给感兴趣的家庭并<span class="bold">收取报酬</span>。
                        </p>
                        <p class="pb5 center">
                            <a href="http://www.qidianzhan.com.cn/wap/" class="layui-btn half"><i class="fa fa-sign-in"></i>在线注册</a>
                            <a href="http://mp.weixin.qq.com/s/hOLqAoS9_GDh8RLYrAWJbA" class="layui-btn half"><i class="fa fa-bars"></i>了解更多</a>
                        </p>
                        <p class="texindext">
                            或者你的朋友们可能希望能够分享他们的体会，你可以把本测试分享到朋友圈，<span class="bold">注：不会显示你的测试结果哦</span>！
                        </p>
                    </blockquote>
                </div>

                <div id="six" style="display: none;">
                    <blockquote class="layui-elem-quote first-quote">您的职业遗憾度：
                        <i class="fa fa-star star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                    </blockquote>
                    <blockquote class="layui-elem-quote layui-quote-nm whitebg">
                        <p class="texindext">
                            您的职业生涯基本没有遗憾。您基本上做出了最适合自己的选择，做好了充分的准备，也取得了自己满意的状态和成就。
                        </p>
                        <p class="texindext">
                            不知道您对自己的发展旅程和当时的选择方法有没有什么心得呢？
                        </p>
                        <p class="texindext bold">
                            如今，你有机会来指点一下小朋友和家长了，还是有报酬的那种。
                        </p>
                        <p class="texindext">
                            只需要简单的在线注册，你就有机会将你的<span class="bold">职业经验和体会</span>以<span class="bold">聊天的形式</span>在线分享给感兴趣的家庭并<span class="bold">收取报酬</span>。
                        </p>
                        <p class="pb5 center">
                            <a href="http://www.qidianzhan.com.cn/wap/" class="layui-btn half"><i class="fa fa-sign-in"></i>在线注册</a>
                            <a href="http://mp.weixin.qq.com/s/hOLqAoS9_GDh8RLYrAWJbA" class="layui-btn half"><i class="fa fa-bars"></i>了解更多</a>
                        </p>
                        <p class="texindext">
                            或者你的朋友们可能希望能够分享他们的体会，你可以把本测试分享到朋友圈，<span class="bold">注：不会显示你的测试结果哦</span>！
                        </p>
                    </blockquote>
                </div>
                <div id="seven" style="display: none;">
                    <blockquote class="layui-elem-quote first-quote">您的职业遗憾度：
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                        <i class="fa fa-star-o star-warm"></i>
                    </blockquote>
                    <blockquote class="layui-elem-quote layui-quote-nm whitebg">
                        <p class="texindext">
                            您的职业生涯完美无缺。您做出了最佳选择，也做好了最充分的准备，满意的状态和成就也就水到渠成。
                        </p>
                        <p class="texindext">
                            不知道您对自己的发展旅程和当时的选择方法有没有什么心得呢？
                        </p>
                        <p class="texindext bold">
                            如今，你有机会来指点一下小朋友和家长了，还是有报酬的那种。
                        </p>
                        <p class="texindext">
                            只需要简单的在线注册，你就有机会将你的<span class="bold">职业经验和体会</span>以<span class="bold">聊天的形式</span>在线分享给感兴趣的家庭并<span class="bold">收取报酬</span>。
                        </p>
                        <p class="pb5 center">
                            <a href="http://www.qidianzhan.com.cn/wap/" class="layui-btn half"><i class="fa fa-sign-in"></i>在线注册</a>
                            <a href="http://mp.weixin.qq.com/s/hOLqAoS9_GDh8RLYrAWJbA" class="layui-btn half"><i class="fa fa-bars"></i>了解更多</a>
                        </p>
                        <p class="texindext">
                            或者你的朋友们可能希望能够分享他们的体会，你可以把本测试分享到朋友圈，<span class="bold">注：不会显示你的测试结果哦</span>！
                        </p>
                    </blockquote>
                </div>
                <p class="mt10 center">
                    <button id="btn-share" type="button"  class="layui-btn layui-btn-normal eightp" ><i class="fa fa-share-square-o "></i>分享到朋友圈</button>
                </p>
                <div class="layui-tab layui-tab-brief">
                    <ul class="layui-tab-title">
                        <li class="layui-this">关于我们</li>
                    </ul>
                    <div class="layui-tab-content">
                        <p class="texindextab">
                            起点站（<a href="http://www.qidianzhan.com.cn" target="_blank">www.qidianzhan.com.cn</a>）是一个专注于青少年发展规划的在线服务平台。一方面通过与中科大统计系的合作研究为青少年发展规划提供数据支持，另一方面打造了一个在线的职业经验分享平台，用各行业人士的经验来帮助青少年寻找适合自己的目标。
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="fter">上海织梦人才咨询有限公司-版权所有©2015-2020</div>
</div>
<div id="share" style="display:none;">
    <img class="goup" src="/static/images/goup.png">
    <div class="title">点击“...”分享好友 或 聊天群</div>
</div>
<script type="text/javascript">
    $(function(){

        $("#btn-share").click(function(){
            $("#share").show();
        });

        $("#share").click(function(){
            $(this).hide();
        });
    });

</script>

</body>

</html>






<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <base href="<%=basePath%>">
    <title>后台主页面</title>
    <script type="text/javascript">
        var itemHeight = 40;
        var dividerHeight = 1;

        function openMenu(obj) {
            menuTitleId = obj.id;
            menuId = "menu" + menuTitleId.substring(10);
            indicatorId = "indicator" + menuTitleId.substring(10);

            menu = document.getElementById(menuId);
            indicator = document.getElementById(indicatorId);
            height = menu.style.height;

            if (height == "0px" || height == "") {
                childAmount = menu.getElementsByTagName('div').length;
                dividerAmount = menu.getElementsByTagName('li').length;
                height = childAmount * itemHeight + dividerAmount * dividerHeight;
                menu.style.height = height + "px";
                indicator.style.transform = "rotate(180deg)";
            } else {
                menu.style.height = "0px";
                indicator.style.transform = "rotate(0deg)";
            }
        }
    </script>


    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        #header {
            position: absolute;
            display: flex;
            justify-content: center;
            align-items: center;
            left: 28%;
            height: 90px;
            width: 800px;
            //background-image: url(images/admin/bb.jpg);
            margin: 0px 0px 3px 0px;
            font-size: 1.2em;
        }

        #header h1 {
            text-align: center;
            font-family: 华文中宋;
            color: #000000;
            text-shadow: 1px 1.5px 0.5px rgb(255, 169, 233);
        }

        #header h1 username {
            text-align: center;
            font-family: 华文中宋;
            color: #ff1fcf;
            font-size: 35px;
            font-weight: bold;
        }

        .div1 {
            margin-left: 20%;
            position: absolute;
            left: 0%;
            top: 0%;
            width: 40%;
            height: 99%;
        }

        .div2 {
            position: absolute;
            width: 20%;
            height: 100%;
        }

        .navigator {
            position: absolute;
            width: 320px;
            height: 99%;
            overflow: hidden;
            box-shadow: 1px 1px 4px gray;
            /* border-bottom: 1px solid black;
            border-top: 1px solid black; */
            border: 1px solid gray;
            border-radius: 5px;
        }

        #content {
            position: relative;
            left: 30%;
            top: 15%;
            height: auto;
            width: 780px;
            padding: 10px;
        }

        #content iframe {
            height: 300px;
            width: 780px;
        }

        .menu {
            overflow: hidden;
            height: 0px;
            transition: all 0.3s ease;
        }

        .menu_title {
            width: 305px;
            height: 50px;
            line-height: 50px;
            background: #449be2;
            color: white;
            font-size: 20px;
            padding-left: 15px;
            transition: all 0.3s ease;
            cursor: pointer;
            position: relative;
            font-weight: bold;
            overflow: hidden;
        }

        .menu_title:hover {
            background: #dedede;
            color: black;
        }

        .indicator {
            width: 50px;
            height: 50px;
            font-weight: bold;
            position: absolute;
            right: 0px;
            top: 0px;
            transition: all 0.3s ease;
            font-weight: bold;
            text-align: center;
        }

        .item {
            width: 290px;
            height: 40px;
            line-height: 40px;
            background: gray;
            color: white;
            padding-left: 30px;
            transition: all 0.3s ease;
            cursor: pointer;
            overflow: hidden;
        }

        .item:hover {
            background: #1b97fc;
        }

        .item a {
            width: 290px;
            height: 40px;
            display: block;
            text-decoration: none;
            color: white;
            text-decoration: none;
        }

        .item_divider {
            width: 322px;
            height: 1px;
            background: white;
            display: block;
            opacity: 0.8;
        }

        .menu_divider {
            width: 100%;
            height: 1px;
            background: gray;
        }
    </style>
</head>





<body>
    <div class="div1">
        <div id="header">
            <br>
            <br>
            <h1>欢迎<username>${auser.aname}</username>进入后台管理系统！</h1>
        </div>
        <div id="content">
            <iframe src="adminGoods/selectGoods" name="center" frameborder="0"></iframe>
        </div>
    </div>
    
    <div class="div2">
        <div class="navigator">
            <ul>
                <div id="menu_title1" class="menu_title" onclick="openMenu(this)">
                    商品管理
                    <div class="indicator" id="indicator1">^</div>
                </div>
                <div class="menu" id="menu1">
                    <div class="item"><a href="adminGoods/toAddGoods" target="center">添加商品</a></div>

                    <div class="item"><a href="adminGoods/selectGoods?act=deleteSelect" target="center">删除商品</a></div>

                    <div class="item"><a href="adminGoods/selectGoods?act=updateSelect" target="center">修改商品</a></div>

                    <div class="item"><a href="adminGoods/selectGoods" target="center">查询商品</a></div>
                </div>

                <li class="menu_divider"></li>

                <div id="menu_title2" class="menu_title" onclick="openMenu(this)">
                    类型管理
                    <div class="indicator" id="indicator2">^</div>
                </div>
                <div class="menu" id="menu2">
                    <div class="item"><a href="adminType/toAddType" target="center">添加类型</a></div>

                    <div class="item"><a href="adminType/toDeleteType" target="center">删除类型</a></div>
                </div>

                <li class="menu_divider"></li>

                <div id="menu_title3" class="menu_title" onclick="openMenu(this)">
                    用户管理
                    <div class="indicator" id="indicator3">^</div>
                </div>
                <div class="menu" id="menu3">

                    <div class="item"><a href="adminUser/userInfo" target="center">删除用户</a></div>

                </div>

                <li class="menu_divider"></li>

                <div id="menu_title4" class="menu_title" onclick="openMenu(this)">
                    订单管理
                    <div class="indicator" id="indicator4">^</div>
                </div>
                <div class="menu" id="menu4">

                    <div class="item"><a href="adminOrder/orderInfo" target="center">删除订单</a></div>

                </div>

                <li class="menu_divider"></li>

                <div id="menu_title5" class="menu_title" onclick="openMenu(this)">
                    公告管理
                    <div class="indicator" id="indicator5">^</div>
                </div>
                <div class="menu" id="menu5">
                    <div class="item"><a href="adminNotice/toAddNotice" target="center">添加公告</a></div>

                    <div class="item"><a href="adminNotice/deleteNoticeSelect" target="center">删除公告</a></div>
                </div>

                <li class="menu_divider"></li>

                <div id="menu_title6" class="menu_title" onclick="openMenu(this)">
                    退出
                    <div class="indicator" id="indicator6">^</div>
                </div>
                <div class="menu" id="menu6">

                    <div class="item"><a href="adminGoods/selectGoods" name="center" frameborder="0">安全退出</a></div>

                </div>
            </ul>
        </div>
    </div>
</body>

</html>



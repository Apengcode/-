<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台登录</title>
    <style type="text/css">
        table {
            text-align: center;
        }

        .textSize {
            width: 120px;
            height: 25px;
        }

        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            margin: 10px 10px auto;
            background-image: url(images/admin/bb.jpg);
        }

        button {
            font-size: 1.5em;
            width: 60px;
            height: 30px;
            border-radius: 5px;
            border-width: 1px;
            outline: none;
        }

        button:hover {
            box-shadow: 1px 1px 1px black;
        }
        button:active{
            font-size: 1.5em;
            width: 60px;
            height: 30px;
            border-radius: 5px;
            border-width: 1px;
            outline: none;
            opacity: 0.4 ;
        }
        table {
            padding-left: 42%;
        }
    </style>
    <script type="text/javascript">
        //确定按钮
        function gogo() {
            document.forms[0].submit();
        }
        //取消按钮
        function cancel() {
            document.forms[0].action = "";
        }
    </script>
</head>

<body>
    <form:form action="admin/login" modelAttribute="auser" method="post">
        <table>
            <tr>
                <td colspan="2">

                </td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td>
                    <form:input path="aname" cssClass="textSize" />
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td>
                    <form:password path="apwd" cssClass="textSize" maxlength="20" />
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <button type="button" class="button" onclick="gogo()">登录</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" class="button" onclick="cancel()">取消</button>
                </td>
            </tr>
        </table>
    </form:form>
    ${msg }
</body>

</html>
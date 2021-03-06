<%--
  Created by IntelliJ IDEA.
  User: Mr.Zhang
  Date: 2018/5/13
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>盒饭标准菜谱</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <link rel="stylesheet" type="text/css" href="css/foodMenu.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
    <script src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.tabletojson.js"></script>
    <script type="text/javascript">

        function exportExcel(fileName,tableId){
            var table = $("#"+tableId).tableToJSON();
            console.log(table);
            var json = JSON.stringify(table);
            var nodes = $("#"+tableId+" thead tr").children();
            var headers = "";
            $.each(nodes,function(i,item){
                headers += item.innerHTML+",";
            })
            alert(headers)
            //调用post方法
            alert(json);
            post('/export.do', {fileName :fileName,headers:headers,json:json});
        }
        function post(url, params) {
            var temp = document.createElement("form");
            temp.action = url;
            temp.method = "post";
            temp.style.display = "none";
            for (var x in params) {
                var opt = document.createElement("input");
                opt.name = x;
                opt.value = params[x];
                temp.appendChild(opt);
            }
            document.body.appendChild(temp);
            temp.submit();
            return temp;
        }

    </script>
    <style type="text/css">
        th,td{
            text-align: center;
        }
    </style>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">首页</a></li>
                <li><a href="#" target="_blank">订餐首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="http://www.jscss.me">管理员</a></li>
                <li><a href="http://www.jscss.me">修改密码</a></li>
                <li><a href="http://www.jscss.me">注销</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>订单相关</a>
                    <ul class="sub-menu">
                        <li><a href="Items.html"><i class="icon-font">&#xe008;</i>商品管理</a></li>
                        <li><a href="foodMenu.html"><i class="icon-font">&#xe008;</i>标准菜谱</a></li>
                        <li><a href="orders.html"><i class="icon-font">&#xe005;</i>确认订餐单</a></li>
                        <li><a href="weekOrders.html"><i class="icon-font">&#xe012;</i>周订餐汇总</a></li>
                        <li><a href="monthRefund.html"><i class="icon-font">&#xe006;</i>月总退餐表</a></li>
                        <li><a href="statistics.html"><i class="icon-font">&#xe052;</i>数据统计</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>其他操作</a>
                    <ul class="sub-menu">
                        <li><a href="deliveryMen.html"><i class="icon-font">&#xe017;</i>送餐员管理</a></li>
                        <li><a href="customerAdvice.html"><i class="icon-font">&#xe004;</i>客户意见回复</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="/jscss/admin">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">商品管理</span></div>
        </div>

        <div class="result-wrap">
            <div class="result-content">
                <table id="menu" border=0 cellpadding=0 cellspacing=0 width=1048 style='border-collapse:collapse;table-layout:fixed;width:786pt;margin-left: 9%'>
                    <col class=x71 width=79 style='mso-width-source:userset;width:59pt'>
                    <col class=x71 width=63 style='mso-width-source:userset;width:47pt'>
                    <col class=x71 width=57 style='mso-width-source:userset;width:42pt'>
                    <col class=x73 width=55 style='mso-width-source:userset;width:41pt'>
                    <col class=x73 width=157 style='mso-width-source:userset;width:117pt'>
                    <col class=x73 width=137 style='mso-width-source:userset;width:102pt'>
                    <col class=x73 width=97 style='mso-width-source:userset;width:72pt'>
                    <col class=x73 width=137 style='mso-width-source:userset;width:102pt'>
                    <col class=x73 width=121 style='mso-width-source:userset;width:90pt'>
                    <col class=x71 width=145 style='mso-width-source:userset;width:108pt'>
                    <caption class=x121>
                        盒饭标准菜谱（６天 5月７日~5月１２日 ）
                    </caption>
<%--                    <tr height=28 class=x69 style='mso-height-source:userset;height:21pt' id='r0'>
                        <td height=28 class=x74 width=79 style='height:21pt;width:59.25pt;' ></td>
                        <td colspan=9 id='tc0' class=x121>盒饭标准菜谱（６天 5月７日~5月１２日 ）</td>
                    </tr>--%>
                    <thead>
                    <tr height=42 class=x70 style='mso-height-source:userset;height:32pt' id='r1'>
                        <td height=42 class=x75 style='height:32pt;' >日期</td>
                        <td height=42 class=x124 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:32pt;width:131.25pt;padding: 0'  align=left valign=top>时期</td>
                        <td height=42 class=x124 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:32pt;width:131.25pt;padding: 0'  align=left valign=top>餐次</td>
                        <td height=42 class=x124 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:32pt;width:131.25pt;padding: 0'  align=left valign=top>价格</td>
                        <td class=x77>主荤</td>
                        <td class=x77>配荤1</td>
                        <td class=x77>素菜</td>
                        <td class=x77>配荤2</td>
                        <td class=x77>饮品、水果</td>
                        <td class=x93>备注</td>
                    </tr>
                    </thead>

                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r2'>
                        <td rowspan=4 height=96 class=x125 align=right x:num="43227" style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >5月7日</td>
                        <td rowspan=4 height=96 class=x126 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >周<br><br>一</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >午餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >干豆角红烧肉</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >蒜黄鸡蛋</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >上汤娃娃菜</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >酸奶</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r3'>
                        <td class=x81>18元</td>
                        <td class=x81>小炒蒙古肉</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r4'>
                        <td rowspan=2 height=48 class=x127 style='mso-ignore:style;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;font-size:11pt;color:#000000;font-weight:400;text-decoration:none;text-line-through:none;font-family:"宋体";border-top:1px solid #A6A6A6;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;border-left:1px solid #A6A6A6;mso-diagonal-down:none;mso-diagonal-up:none;background:#F2F2F2;mso-pattern:auto none;' >晚餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >干烧剥皮鱼</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >花菜烧肉</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >蒸水蛋</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >香蕉</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r5'>
                        <td class=x81>18元</td>
                        <td class=x81>椒盐鸡腿排</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r6'>
                        <td rowspan=4 height=96 class=x125 align=right x:num="43228" style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >5月8日</td>
                        <td rowspan=4 height=96 class=x126 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >周<br><br>二</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >午餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x128 style='height:36pt;' >回锅牛肉</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >豆角肉丝</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >香拌土豆丝</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >橙汁</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r7'>
                        <td class=x81>18元</td>
                        <td class=x81>牙签肉</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r8'>
                        <td rowspan=2 height=48 class=x127 style='mso-ignore:style;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;font-size:11pt;color:#000000;font-weight:400;text-decoration:none;text-line-through:none;font-family:"宋体";border-top:1px solid #A6A6A6;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;border-left:1px solid #A6A6A6;mso-diagonal-down:none;mso-diagonal-up:none;background:#F2F2F2;mso-pattern:auto none;' >晚餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >莴苣烧土鸡</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >肉沫冬瓜</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >油渣小白菜</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >橘子</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r9'>
                        <td class=x81>18元</td>
                        <td class=x81>泡椒鸡杂</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r10'>
                        <td rowspan=4 height=96 class=x125 align=right x:num="43229" style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >5月9日</td>
                        <td rowspan=4 height=96 class=x126 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >周<br><br>三</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >午餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >秘制卤水鸭</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >番茄炒蛋</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >清炒南瓜片</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >苹果</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r11'>
                        <td class=x81>18元</td>
                        <td class=x81>红烧鱼块</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r12'>
                        <td rowspan=2 height=48 class=x127 style='mso-ignore:style;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;font-size:11pt;color:#000000;font-weight:400;text-decoration:none;text-line-through:none;font-family:"宋体";border-top:1px solid #A6A6A6;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;border-left:1px solid #A6A6A6;mso-diagonal-down:none;mso-diagonal-up:none;background:#F2F2F2;mso-pattern:auto none;' >晚餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >粉蒸排骨</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >农家小炒肉</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >剁椒大白菜</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >酸奶</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r13'>
                        <td class=x81>18元</td>
                        <td class=x81>小炒湘味鸡</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r14'>
                        <td rowspan=4 height=96 class=x125 align=right x:num="43230" style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >5月10日</td>
                        <td rowspan=4 height=96 class=x126 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >周<br><br>四</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >午餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >葱油白切鸡</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >红烧双丸</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >清炒豆芽</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >香蕉</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r15'>
                        <td class=x81>18元</td>
                        <td class=x81>糖醋里脊</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r16'>
                        <td rowspan=2 height=48 class=x127 style='mso-ignore:style;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;font-size:11pt;color:#000000;font-weight:400;text-decoration:none;text-line-through:none;font-family:"宋体";border-top:1px solid #A6A6A6;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;border-left:1px solid #A6A6A6;mso-diagonal-down:none;mso-diagonal-up:none;background:#F2F2F2;mso-pattern:auto none;' >晚餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >香辣猪肘</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >杏鲍菇烧肉</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >红椒笋丝</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >橘子</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r17'>
                        <td class=x81>18元</td>
                        <td class=x81>红油牛肚</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r18'>
                        <td rowspan=4 height=96 class=x125 align=right x:num="43231" style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >5月11日</td>
                        <td rowspan=4 height=96 class=x126 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >周<br><br>五</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >午餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >宫爆鸡丁</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >土豆牛肉</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >韭菜鸡蛋</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >酸奶</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r19'>
                        <td class=x81>18元</td>
                        <td class=x81>鱼香肉丝</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r20'>
                        <td rowspan=2 height=48 class=x127 style='mso-ignore:style;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;font-size:11pt;color:#000000;font-weight:400;text-decoration:none;text-line-through:none;font-family:"宋体";border-top:1px solid #A6A6A6;border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;border-left:1px solid #A6A6A6;mso-diagonal-down:none;mso-diagonal-up:none;background:#F2F2F2;mso-pattern:auto none;' >晚餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x128 style='height:36pt;' >红烧鱼块</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >香干回锅肉</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >酸辣藕丁</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >橙汁</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x71 style='mso-height-source:userset;height:18pt' id='r21'>
                        <td class=x81>18元</td>
                        <td class=x81>口味顺风</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r22'>
                        <td rowspan=4 height=96 class=x125 align=right x:num="43232" style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >5月12日</td>
                        <td rowspan=4 height=96 class=x126 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:72pt;' >周<br><br>六</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >午餐</td>
                        <td class=x81>15元</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >家常豆腐烧肉</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >泡菜苕粉肉丝</td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >清炒冬瓜片</td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' >脐橙</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r23'>
                        <td class=x81>18元</td>
                        <td class=x81>番茄炒蛋</td>
                        <td class=x94></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r24'>
                        <td rowspan=2 height=48 class=x129 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #808080;height:36pt;' ></td>
                        <td class=x81></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' ></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' ></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' ></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' ></td>
                        <td rowspan=2 height=48 class=x127 style='border-right:1px solid #A6A6A6;border-bottom:1px solid #A6A6A6;height:36pt;' ></td>
                        <td rowspan=2 height=48 class=x130 style='border-right:4px double #808080;border-bottom:1px solid #A6A6A6;height:36pt;' ></td>
                    </tr>
                    <tr height=24 class=x69 style='mso-height-source:userset;height:18pt' id='r25'>
                        <td class=x90></td>
                    </tr>

<%--                    <caption>
                        <font class="font4">支付宝账号：</font><font class="font6">18971275086<span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></font><font class="font4">微信账号：18971275086 （请备注班级&amp;姓名）</font>
                    </caption>--%>
                    <tr height=20 class=x71 style='mso-height-source:userset;height:15pt' id='r26'>
                    <td height=20 class=x91 style='height:15pt;' ></td>
                    <td colspan=9 id='tc3' class=x131 style='border-right:4px double #808080;border-bottom:4px double #808080;' ><font class="font4">支付宝账号：</font><font class="font6">18971275086<span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></font><font class="font4">微信账号：18971275086 （请备注班级&amp;姓名）</font></td>
                </tr>
                </table>
                <button onclick="exportExcel('ceshi','menu')">导出为表格</button>
            </div>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>

<!--获取当前月-->
<script>
    $(document).ready(function () {
        dt = new Date();
        var y=dt.getFullYear();//获取年
        var m=dt.getMonth()+1;//获取月,区间0-11 ,所以需要加1
        $('#showTime').html('当前月份:'+y+'-'+m);
    })

</script>

if (typeof(webnoticeurl) == 'undefined') {
    var webnoticeurl = '#';
}
if (typeof(webnoticetit) == 'undefined') {
    var webnoticetit = '';
}
if (typeof(quick_qq) == 'undefined') {
    var quick_qq = '';
}
$(document).ready(function () {
    $("#service_qq").mouseleave(function () {
        $("#service_qq").hide()
    })
});
function createqq() {
    var qqArr = ["小麦:188239032:17", "小粉:188239031:13", "小芸:2354858040:16", "小黄:188239033:15"];
    var qqArr2 = ["木子:188239037:19", "小图:188239036:18", "小潘:641032707:14", "小徐:2630603763:14"];　var qqArr3 = ["小刘:188239035:14", "小叮:188239034:18", "番番:1878727110:20", "小小:1936028159:19"];　var html = "";　qqArr.sort(function () {
        return Math.random() > 0.5 ? -1 : 1
    });
    qqArr2.sort(function () {
        return Math.random() > 0.5 ? -1 : 1
    });
    qqArr3.sort(function () {
        return Math.random() > 0.5 ? -1 : 1
    });
    if (webqq == undefined) {
        webqq = '137848754'
    }
    html += "<p class=\"up\"><span class='kf2gre'>值班时间：</span><span>　</span><span>9:00 - 12:00 ， 13:30 - 17:30 ， 19:00 - 21:00</span> (周日无晚班)</p>";
    html += "<ul>";
    html += "<li>";
    html += "<span class='kf2gre'>新手帮助：</span>";
    html += "<div>";
    html += "<img src='http://wpa.qq.com/pa?p=1:" + qqArr[0].split(':')[1] + ":17' border='0'/><a class='kf2gre' href='tencent://message/?uin=" + qqArr[0].split(':')[1] + "'>客服" + qqArr[0].split(':')[0] + "</a>";
    html += "<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对" + qqArr[0].split(':')[0] + "评分','/dialog/kefu/?id=" + qqArr[0].split(':')[2] + "');\" >（我要给她评分）</a>";
    html += "<img src='http://wpa.qq.com/pa?p=1:" + qqArr[1].split(':')[1] + ":17' border='0'/><a class='kf2gre' href='tencent://message/?uin=" + qqArr[1].split(':')[1] + "'>客服" + qqArr[1].split(':')[0] + "</a>";
    html += "<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对" + qqArr[1].split(':')[0] + "评分','/dialog/kefu/?id=" + qqArr[1].split(':')[2] + "');\" >（我要给她评分）</a>";
    html += "</div>";
    html += "</li>";
    html += "<div class=\"cle\">&nbsp;</div>";
    html += "<li>";
    html += "<span></span>";
    html += "<div>";
    html += "<img src='http://wpa.qq.com/pa?p=1:" + qqArr[2].split(':')[1] + ":17' border='0'/><a class='kf2gre' href='tencent://message/?uin=" + qqArr[2].split(':')[1] + "'>客服" + qqArr[2].split(':')[0] + "</a>";
    html += "<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对" + qqArr[2].split(':')[0] + "评分','/dialog/kefu/?id=" + qqArr[2].split(':')[2] + "');\" >（我要给她评分）</a>";
    html += "<img src='http://wpa.qq.com/pa?p=1:" + qqArr[3].split(':')[1] + ":17' border='0'/><a class='kf2gre' href='tencent://message/?uin=" + qqArr[3].split(':')[1] + "'>客服" + qqArr[3].split(':')[0] + "</a>";
    html += "<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对" + qqArr[3].split(':')[0] + "评分','/dialog/kefu/?id=" + qqArr[3].split(':')[2] + "');\" >（我要给她评分）</a>";
    html += "</div>";
    html += "</li>";
    html += "<div class=\"cle\">&nbsp;</div>";
    /*html+="<li>";html+="<span class='kf2gre'>信托管家：</span>";html+="<div>";html+="<img src='http://wpa.qq.com/pa?p=1:"+qqArr3[0].split(':')[1]+":17' border='0'/><a class='kf2gre' href='tencent://message/?uin="+qqArr3[0].split(':')[1]+"'>客服"+qqArr3[0].split(':')[0]+"</a>";html+="<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对"+qqArr3[0].split(':')[0]+"评分','/dialog/kefu/?id="+qqArr3[0].split(':')[2]+"');\" >（我要给她评分）</a>";html+="<img src='http://wpa.qq.com/pa?p=1:"+qqArr3[1].split(':')[1]+":17' border='0'/><a class='kf2gre' href='tencent://message/?uin="+qqArr3[1].split(':')[1]+"'>客服"+qqArr3[1].split(':')[0]+"</a>";html+="<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对"+qqArr3[1].split(':')[0]+"评分','/dialog/kefu/?id="+qqArr3[1].split(':')[2]+"');\" >（我要给她评分）</a>";html+="</div>";html+="</li>";html+="<div class=\"cle\">&nbsp;</div>";html+="<li>";html+="<span></span>";html+="<div>";html+="<img src='http://wpa.qq.com/pa?p=1:"+qqArr3[2].split(':')[1]+":17' border='0'/><a class='kf2gre' href='tencent://message/?uin="+qqArr3[2].split(':')[1]+"'>客服"+qqArr3[2].split(':')[0]+"</a>";html+="<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对"+qqArr3[2].split(':')[0]+"评分','/dialog/kefu/?id="+qqArr3[2].split(':')[2]+"');\" >（我要给她评分）</a>";html+="<img src='http://wpa.qq.com/pa?p=1:"+qqArr3[3].split(':')[1]+":17' border='0'/><a class='kf2gre' href='tencent://message/?uin="+qqArr3[3].split(':')[1]+"'>客服"+qqArr3[3].split(':')[0]+"</a>";html+="<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对"+qqArr3[3].split(':')[0]+"评分','/dialog/kefu/?id="+qqArr3[3].split(':')[2]+"');\" >（我要给她评分）</a>";html+="</div>";html+="</li>";*/
    html += "<div class=\"cle\">&nbsp;</div>";
    html += "<li>";
    html += "<span class='kf2gre'>充值提现：</span>";
    html += "<div>";
    html += "<img src='http://wpa.qq.com/pa?p=1:188239038:17' border='0'/><a class='kf2gre' href='tencent://message/?uin=188239038'>充值帮助</a>";
    html += "<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对充值客服评分','/dialog/kefu/?id=8');\">（我要给她评分）</a>";
    /*html+="<img src='http://wpa.qq.com/pa?p=1:188239039:17' border='0'/><a class='kf2gre' href='tencent://message/?uin=188239039'>提现客服</a>";html+="<a href='javascript:;' class=\"kf2c\" onclick=\"dialog(635,415,'对提现客服评分','/dialog/kefu/?id=7');\">（我要给她评分）</a>";*/
    html += "</div>";
    html += "</li>";
    html += "<div class=\"cle\">&nbsp;</div>";
    html += "<li>";
    html += "<span class='kf2gre'>&nbsp;企业QQ：</span>";
    html += "<div><img border=\"0\" SRC='/images/pa.gif'><a class='kf2gre' href='javascript:;' onclick=\"javascript:window.open('http://b.qq.com/webc.htm?new=0&sid=4006079159&eid=218808P8z8p8y8z808R8p&o=www.huatutu.com.cn&q=7&ref='+document.location, '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');\">企业QQ</a>&nbsp;&nbsp;&nbsp;&nbsp;<a class=\"kf2gre\" target=\"_blank\" href=\"" + webnoticeurl + "/\">" + webnoticetit + "</a>";
    html += "</div>";
    html += "</li>";
    html += "<div class=\"cle\">&nbsp;</div>";
    html += "</ul>";
    html += "<p class=\"down\" style=\"height:50px;line-height:20px;\"><strong class='kf2gre'>交流群:</strong><b>" + webqq + "</b>" + quick_qq + "<span>(注:客服不会要求您操作任务、充值，谨防受骗)</span></p>";
    $("#service_qq").html(html).show();
}
function showcsqq() {
    createqq()
}
/*height:275px;*height:290px;*/
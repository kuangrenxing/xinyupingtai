<?php $_tplModify=filemtime('D:\damaihu\xinyupingtai7\cache\default\help\taskin.php');if(filemtime('D:\damaihu\xinyupingtai7\templates\default\header.htm')>$_tplModify||filemtime('D:\damaihu\xinyupingtai7\templates\default\headerBase.htm')>$_tplModify||filemtime('D:\damaihu\xinyupingtai7\templates\default\footer.htm')>$_tplModify){include(template::load_base('D:\damaihu\xinyupingtai7\templates\default\help\taskin.htm','D:\damaihu\xinyupingtai7\cache\default\help\taskin.php',true));exit;}?><?php !defined("IN_JB")&&exit("error");$__tplUrl = '/templates/default/help/';$title='职业刷客 - 互动吧平台';$keywords='';$description='';$cssList=array(0=>'http://damaihu.tertw.net/css/member/member.css');echo '

';echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>';echo $title;echo '</title>
<meta name="description" content="';echo $description;echo '" />
<meta name="keywords" content="';echo $keywords;echo '" />
';if($cssList){echo '
';if($cssList){foreach($cssList as $v){echo '
<link rel="stylesheet" type="text/css" href="';echo $v;echo '" />
';}}echo '
';}else{echo '
<link href="http://damaihu.tertw.net/css/bbs/bbs.css" rel="stylesheet" type="text/css" />
';}echo '
<script type="text/javascript" src="http://damaihu.tertw.net/javascript/jquery.min.js"></script><script type="text/javascript" src="http://damaihu.tertw.net/javascript/common.func.js"></script>
';if($jsList){foreach($jsList as $v){echo '
<script type="text/javascript" src="';echo $v;echo '"></script>
';}}echo '
<script type="text/javascript">
';if($showMessage){echo '
alert(\'';echo common::bf_addcslashes($showMessage);echo '\');
';}echo '
$.ajaxSetup({';echo 'cache:false';echo '});
var memberLogined=';echo $memberLogined?'true':'false';echo ';
var loginUsername=\'';echo $memberLogined?$member['username']:'';echo '\';
var weburl=\'';echo $weburl;echo '\';
var weburl2=\'';echo $weburl2;echo '\';
var sys_hash2=\'';echo $sys_hash2;echo '\';
var webqq = 195230378 ;
</script>
</head>
<body>
	<!--头部开始-->
	<div id="dmh_head">
	<div class="kd">
	    <div class="kmain">
			<div class="hy">
				<a href="###" class="dmhtel">手机版</a>
				';if($memberLogined){echo '
				<DIV style="float: left;">
                    <SPAN style="color:#1595DE">|</SPAN>
                    <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/info/?username=';echo $member['username'];echo '">';echo $member['username'];echo '</A>
                    <IMG title="积分：';echo $memberFields['credits'];echo '" alt="积分" src="';echo $memberLevel['icon'];echo '">
                    <A class="col3" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/logout/">退出</A>	
                    </div>
				';}else{echo '亲，欢迎来到';echo $web_name;echo '
				<div style="float:left;">
				    <SPAN style="color:#1595DE">|</SPAN>
					<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/login/" class="chengse">登录</a>
					<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/reg/" class="lvse">免费注册</a>
				</div>
				  ';}echo '	
			</div>
			<div class="top_btn">
			
			';if($memberLogined){echo '
			<ul class="quick-menu">
			 <LI class="menu-item">
                <DIV class="menu">
                 <A style="margin: 0px; width: 50px;" class="menu-hd" tabIndex="0" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/eids/">单号搜索<b></b></A>
                <DIV style="width: 88px; line-height: 1.7;" id="menu-0" class="menu-bd">
                <DIV style="padding: 8px 5px;" class="menu-bd-panel">
                <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t730/" rel="nofollow" target="_top">使用教程</A>
                <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t730/" rel="nofollow" target="_top">如何激活</A></DIV>
                </DIV></DIV>
			 </LI>
 
               <LI style="margin-top: -2px;">|</LI>
               <LI class="menu-item">
                <DIV class="menu"><A style="margin: 0px;" class="menu-hd" tabIndex="0" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/topup/">存款：<b></b>
                <SPAN style="font-weight: 700;" class="chengse moneyAll">';echo $memberFields['money'];echo '</SPAN></A>
                <DIV style="width: 88px; line-height: 1.7;" id="menu-0" class="menu-bd">
                <DIV style="padding: 8px 5px;" class="menu-bd-panel">
                <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/topup/" rel="nofollow" target="_top">账号充值</A>
                <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/PayDetails/?type=1" rel="nofollow" target="_top">存款明细</A></DIV>
                </DIV></DIV>
			   </LI>
               <LI style="margin-top: -2px;">|</LI>
                <LI class="menu-item">
               <DIV class="menu"><A style="margin: 0px;" class="menu-hd" tabIndex="0" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/BuyPoint/">麦点：<b></b>
                <SPAN style="font-weight: 700;" class="chengse moneyAll"></SPAN>';echo $memberFields['fabudian'];echo '</A>
                <DIV style="width: 88px; line-height: 1.7;" id="menu-0" class="menu-bd">
                <DIV style="padding: 8px 5px;" class="menu-bd-panel">
                <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/BuyPoint/" rel="nofollow" target="_top">购买麦点</A>
                <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/PayDetails/?type=2" rel="nofollow" target="_top">麦点明细</A>
           </DIV></DIV></DIV>
		   </LI>
           <LI style="margin-top: -2px;">|</LI>
           <LI class="menu-item">
           <DIV class="menu">
           <A style="margin: 0px;" class="menu-hd" tabIndex="0" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/message/">信息：<b></b>
           <SPAN style="font-weight: 700;" class="chengse moneyAll">(';echo $memberFields['msg'];echo ')</SPAN></A>
           <DIV style="width: 90px; line-height: 1.7;" id="menu-0" class="menu-bd">
           <DIV style="padding: 8px 5px;" class="menu-bd-panel">
           <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/message/?type=inUser" rel="nofollow" target="_top">私人收件箱</A>
          <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/message/?type=inSys" rel="nofollow" target="_top">官方收件箱</A>
          <A href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/message/?type=setting" rel="nofollow" target="_top">站内提醒</A>
          </DIV></DIV>
          </DIV>
          </LI>
					<li style="margin-top: -2px;">|</li>
					<li class="menu-item">
						<div class="menu">
							<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/userdata/?type=index" style="width:52px;margin:0;" class="menu-hd" tabindex="0">账号设置<b></b></a>
							<div style="width: 90px;line-height:1.7;" class="menu-bd" id="menu-0">
							  <div style="padding:8px 5px;" class="menu-bd-panel">
								  <a rel="nofollow" target="_top" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/forgotpwd/">找回密码</a>
								  <a rel="nofollow" target="_top" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/userdata/?type=GetPass">找回操作码</a>
								  <a rel="nofollow" target="_top" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/forgotpwd/">更多操作</a>
							  </div>
							</div>
						</div>
					</li>
					
				
			</ul>
			';}else{echo '
			
				<ul class="quick-menu">
					<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/help/" style="float:left;margin-top: -1px;"><b>新手帮助</b></a>
					<li style="margin-top: -2px;">|</li>
					<li class="menu-item">
						<div class="menu">
							<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/eids/" style="width:50px;margin:0;" class="menu-hd" tabindex="0">单号搜索<b></b></a>
							<div style="width: 88px;line-height:1.7;" class="menu-bd" id="menu-0">
							  <div style="padding:8px 5px;" class="menu-bd-panel">
								  <a rel="nofollow" target="_top" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t730/">使用教程</a>
								  <a rel="nofollow" target="_top" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t730/">如何激活</a>
							  </div>
							</div>
						</div>
					</li>
					<li style="margin-top: -2px;">|</li>
					<li class="menu-item">
						<div class="menu">
							<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/userdata/?type=index" style="width:52px;margin:0;" class="menu-hd" tabindex="0">账号设置<b></b></a>
							<div style="width: 90px;line-height:1.7;" class="menu-bd" id="menu-0">
							  <div style="padding:8px 5px;" class="menu-bd-panel">
								  <a rel="nofollow" target="_top" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/forgotpwd/">找回密码</a>
								  <a rel="nofollow" target="_top" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/userdata/?type=GetPass">找回操作码</a>
								  <a rel="nofollow" target="_top" href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/forgotpwd/">更多操作</a>
							  </div>
							</div>
						</div>
					</li>
					<li style="margin-top: -2px;">|</li>
					<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/rank.html" style="margin-top: -2px;">大麦户排行榜</a>	
				</ul>
				 ';}echo '	
			</div>
		</div>
		<div class="menu_qq">
		<a class="qq_help" onmouseover="showcsqq();" href="javascript:;">客服帮助</a>
		</div>
		<div id="service_qq" class="help_down" style="display:none;"></div>
	</div>
</div>
	<!--logo开始-->

	<div id="m_logo">
		<a href="/" class="logo"><img src="';echo $web_logo;echo '" alt="大麦户_淘宝刷信誉" /></a>
		<a href="default/DmSEO.html" class="gg" target="_blank"><img src="/images/bkzl.jpg" alt="爆款教程" title="爆款教程" height="67" border="0" width="689"></a>
	</div>
<!--头部结束-->
<!--菜单开始-->
<div id="m_menu" style="position:relative; z-index:2;">
	  <div class="menu_nav">
		
			<ul class="m_menu_nav">
			<li><a ';if($action=='index'){echo ' class="current"';}echo ' href="';echo $weburl2;echo '">首页</a></li>
			<li><a ';if($action=='task'&&$operation=='tao'){echo ' class="current"';}echo ' href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/task/tao/">淘宝大厅</a></li>
			<li><a ';if($action=='task'&&$operation=='pai'){echo ' class="current"';}echo ' href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/task/pai/">拍拍大厅</a></li>
			<li><a ';if($action=='collect'&&$operation=='collect'){echo ' class="current"';}echo ' href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/collect/">收藏流量</a></li>
	       <li><a ';if($action=='BuyPoint'&&$operation=='BuyPoint'){echo ' class="current"';}echo ' href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/BuyPoint/">购买麦点</a></li>
			<li><a ';if($action=='tuoguan'&&$operation=='tuoguan'){echo ' class="current"';}echo ' href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/tuoguan/">网店托管</a></li>
			<li><a ';if($action=='tbseo'&&$operation=='tbseo'){echo ' class="current"';}echo ' href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/tbseo/">淘宝推广</a></li>
			<li><a ';if($action=='bbs'){echo ' class="current"';}echo ' href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/">有问必答</a></li>
			<li><a ';if($action=='member'){echo ' class="current"';}echo ' href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/member/">会员中心</a></li>
			</ul>
		  
	  </div>
</div>
<script type="text/javascript" src="/images/jquery.js"></script>
<script type="text/javascript" src="/images/common.js"></script>
<script type="text/javascript" src="/images/index.js"></script>
<script type="text/javascript" src="/javascript/index/task.js"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="/javascript/cn/DD_belatedPNG_0.0.7a.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix(\'*\');
</script>
<![endif]-->

    <script type="text/javascript" src="/images/service.js"></script>

<script>

var z_userinfo = $.cookie(\'userinfo\');
if (z_userinfo){';echo '
	z_userinfo = z_userinfo.split(\',\');
';echo '}else
	z_userinfo=null;
</script>
<script type="text/javascript">

$(\'#tool_footer\')
	.css({';echo '
	    \'top\': $(window).height()-270,
		\'left\':"auto",
	    \'right\': ($(window).width() - 1000)>0?($(window).width() - 1000)/2-$(\'#tool_footer\').width()-5:0 ,
		\'position\':"fixed"
	';echo '});
function To_top(){';echo '
    $("html,body").animate({';echo 'scrollTop: $("#m_menu").offset().top';echo '}, 100);
';echo '}
</script>
<script type="text/javascript">
$(function(){';echo '
	$(".menu-item .menu-hd").hover(function(){';echo '
		$(this).next(\'#menu-0\').show();
		$(this).children(\'b\').css({';echo 'borderColor:\'#666666 white white\',transform:\'rotate(180deg\',transformOrigin:\'50% 30% 0px\'';echo '});
		$(this).parents(".menu-item").css({';echo 'background:\'rgb(255, 255, 255)\',border:\'1px solid rgb(191, 191, 191)\'';echo '})
	';echo '});
	$(".menu-item .menu").mouseleave(function(){';echo '
		$(this).children(\'#menu-0\').hide();
		$(this).children(\'.menu-hd\').children(\'b\').css({';echo 'borderColor:\'#666666 #EFF6FE #EFF6FE\',transform:\'none\',transformOrigin:\'none\'';echo '});
		$(this).parent(".menu-item").css({';echo 'background:\'none\',border:\'1px solid #EFF6FE\'';echo '})
	';echo '}); 
';echo '})	
</script>
</body>';echo '

';echo '
<link href="/css/help.css" rel="stylesheet" type="text/css">


<script>
$(function(){';echo '
	$(".menu-item .menu-hd").hover(function(){';echo '
		$(this).next(\'#menu-0\').show();
		$(this).children(\'b\').css({';echo 'borderColor:\'#666666 white white\',transform:\'rotate(180deg\',transformOrigin:\'50% 30% 0px\'';echo '});
		$(this).parents(".menu-item").css({';echo 'background:\'rgb(255, 255, 255)\',border:\'1px solid rgb(191, 191, 191)\'';echo '})
	';echo '});
	$(".menu-item .menu").mouseleave(function(){';echo '
		$(this).children(\'#menu-0\').hide();
		$(this).children(\'.menu-hd\').children(\'b\').css({';echo 'borderColor:\'#666666 #EFF6FE #EFF6FE\',transform:\'none\',transformOrigin:\'none\'';echo '});
		$(this).parent(".menu-item").css({';echo 'background:\'none\',border:\'1px solid #EFF6FE\'';echo '})
	';echo '}); 
';echo '})
</script>

	<div class="cle"></div>
	<div id="content">
		<div class="jsf_img">
			<ul class="jsf_menu">
				<li><a href="javascript:;" class="m1"></a></li>
				<li><a href="javascript:;" class="m2"></a></li>
				<li><a href="javascript:;" class="m3"></a></li>
				<li><a href="javascript:;" class="m4"></a></li>
				<li><a href="javascript:;" class="m5"></a></li>
				<li><a href="javascript:;" class="m6"></a></li>
				<li><a href="javascript:;" class="m7"></a></li>
				<li><a href="javascript:;" class="m8"></a></li>
			</ul>
		</div>	
		<div class="jsf_xs">
		  <p class="hnav0"><span style="color:#1271B9; font-weight:bold; font-size:14px;">大麦户如何保障信誉安全</span><br>一个买号购买一个商家发布的同一个商品每个月内只允许一次
　　　　　　　　一个买号购买一个商家的所有商品每个月内只允许两次<br>
接手同一个的商家所发布的所有任务，每个月内所有买号只允许接手10次
　　　每个买号每日最多接手3个任务，每周最多接手15个任务<br>
限制一个ip一天只能接6个任务，继续接任务得换ip</p>
		  <p class="hnav1" style="display:none;"><span class="STYLE2">通过简单的填写资料注册，您就可以加入大麦户互动平台了，注册时</span><span class="STYLE1">请注意填写正确QQ，手机号码</span><span class="STYLE2">，方便接发任务时对方与您及时取得联系。</span></p>
		  <p class="hnav2" style="display:none"><span class="STYLE2">为了任务安全，</span><span class="STYLE1">手机认证是接手任务前必须要的途径</span><span class="STYLE2">，方便您取回密码，接收验证码等操作，如需修改，请联系网站客服。</span></p>
		  <p class="hnav3" style="display:none"><span class="STYLE1">安全操作码是保护您资金安全的密码</span><span class="STYLE2">，相当于您的二级密码。请牢记勿泄露，如忘记密码可以通过输入安全操作码页面找回。</span></p>
		  
		  <p class="hnav4" style="display:none"><span class="STYLE2">接手平台任务前，<span class="STYLE1">您需要绑定买号，也就是相当于去淘宝拍宝贝的账号</span>，我们俗称买号，绑定买号时，只需要输入该买号的信誉评价地址。 <a href="http://www.damaihu.com.cn/bbs/t723/" target="_blank">什么是买号信誉评价地址?</a></span></p>
		  
		  <p class="hnav5" style="display:none"><span class="STYLE2">在任务大厅，你可以接手到丰富多样的任务，<span class="STYLE1">只要按照规则去完成</span>，您就可以获得不同数量的麦点，你可以用来发布任务，或者兑换成现金，然后在会员中心-申请提现。</span></p>
		  <div class="hnav6" style="display:none"><span class="STYLE2">任务完成后，之前在淘宝的付款就转化成平台的收款，这时候您就可以申请提现了，<strong>网银、财付通财付通<span class="STYLE2">为100元起，淘宝商品提现为500元起</span></strong>，全部免手续费，提现时间段为：中午12点，晚上19点，夜晚22点，处理提现时间为1小时，假节日提现时间如有变更将会发出公告！</span><p><span class="STYLE2"><span class="STYLE1">如果没有按照要求完成，发布方申诉后可能会被扣除你所得的麦点</span>。</span></p></div>
		  <div class="hnav7" style="display:none"><span class="STYLE2">如果您已经完成任务获得了麦点，恭喜你，现在就可以在 会员中心-回收麦点 进行兑换了，每个麦点的价格为0.3-<strong>0.4</strong>元。<a href="http://www.damaihu.com.cn/user/payment/" target="_blank"> 我要申请提现</a></span> </div>
		 <div class="hnav8" style="display:none">在任务完成后，您之前在淘宝的付款就转化为了平台的收款，这时候您只需要登陆这 会员中心 - 申请提现 就可以了。<p class="STYLE2"><strong>网银、财付通提现为100元起，淘宝商品提现为500元起</strong>，全部免手续费，提现时间段为：中午12点，晚上19点，夜晚22点，处理提现时间为1小时，假节日提现时间如有变更将会发出公告！</p><p></p><p class="STYLE2">很多亲会疑惑，平台刷钻，我的资金是不是安全的呢？其实只要您认真操作一遍，你就会很快明白了，刷钻并不难，只需要按照平台规则操作即可。
		  </p><p class="STYLE2">在大麦户平台，我们本着<span class="STYLE1">以和为贵</span>的精神，合作双赢，这样才能给您带来最大的回报和利润，让您的钱包鼓鼓鼓！</p></div>
		  
		</div>
		<div class="jsf_bk">
			<h4 class="jsf_bz">我是接手方</h4>
			<ul class="jsf_list">
				<li class="htitle"><a href="javascript:;">接手任务是什么意思？</a></li>
				<li style="display:none"><div class="jsf_cx">你接任务虽然去拍他东西付款给他了，但任务完成后，任务里面被平台冻结的担保金也就以存款的形式，转到你平台账户里去了，也就是获得了平台存款，那你就可以通过平台存款发布任务让别人接手，那么别人也会真实付款到你的店铺！这就是免费互刷的原理，也就是这么简单。
	注意： 如果你在平台有存款又不想发布任务，那你可以向平台申请提现。提现申请免费，有淘宝链接与财付通2种方式进行选择。 </div></li>
				<li class="htitle"><a href="javascript:;">什么是买号？要怎么捆绑？</a></li>
				<li style="display:none"><div class="jsf_cx">也可称为“小号”，指的是您在淘宝注册的小号，不需要认证身份，用来给别人刷信用并且给自己赚取麦点的。为了保障您的店铺安全，买号不要使用自己的店铺大号来捆绑。最好的做法是：小号付款购买商品，大号收款出售商品。</div></li>
				<li class="htitle"><a href="javascript:;">我给对方刷了一个，我在淘宝付款给他了，我的钱怎么办，上哪去了？</a></li>
				<li style="display:none"><div class="jsf_cx">接任务完全图文流程，仔细阅读一下吧。<br>特别注意：淘宝和平台任务是同步进行下去的，也就是淘宝操作一步，要及时到平台点击相应操作按钮，不要只顾淘宝没管任务，也不要只进行任务而不去淘宝操作！否则很容易出问题比如资金丢失，虽然可以找回，但是为了不必要的麻烦，请淘宝和平台同步操作</div></li>
				<li class="htitle"><a href="javascript:;">接手任务的准备工作？</a></li>
				<li style="display:none"><div class="jsf_cx"><p>平台注册以后，如果想接手任务赚取麦点来发布自己任务；或者想赚取麦点换现金，用户都需要在开始工作前准备一下几项准备工作：</p>
                                    <p>第一：一张开通了网银的银行卡；（记住，要去支付宝网页上去查看一下，一定要是支付宝支持的网银才行哦；）推荐工商银行.</p>
                                    <p>第二：卡内准备一些流动资金，对于一般用户来说大概两百块左右足够了；</p>
                                    <p>第三：新注册几个淘宝账号也就是平台上说的小号，注意这些小号不要与您的店铺掌柜名有任务关系；小号因为只买东西，不需要实名认证的，所以也千万不要往里边充钱；使用小号购买任务商品时，只要直接选择网银支付就可以了；</p>
                                    <p>准备好上面的三件物品后，您就可以开始您的刷钻之旅了哦；</p></div></li>
	      </ul>
		  <ul class="jsf_list">
				<li class="htitle"><a href="javascript:;">接手任务需要注意些什么？</a></li>
				<li style="display:none"><div class="jsf_cx"><p>第一：尽量轮换使用买号；这样是为了使您的小号和卖家的网店都能健康的成长；</p>
                                    <p>第二：在接手任务后，先看卖家QQ是否在线，卖家在线的在把任务做下去，不在线的直接退出任务；这样的好处时卡任务的概率会大大降低；</p>
                                    <p>第三：绑定买号后，淘宝支付前一定要看清楚任务商品的标价+运费是否等于任务担保价,如果不一致,在您拍下货物未支付前就请发布人去改价；</p>
                                    <p>第四：立刻好评任务，尽量不要隔天完成；能当天完成就当天结束；不留后遗症；</p>
                                    <p>第五：对于24-72小时的实物任务到期后，及时给任务发布方好评;</p>
                                    <p>第六：24-72小时的实物好评任务 最好等到卖家发货满十二小时候在收货，利人利己；</p>
                                    <p>第七：提交好评时，先看任务要求，有好评内容要求的一定别忘记复制好评内容；所以请负起自己的那份责任来；</p>
                                    <p>因为您肯定不愿意在自己任务中看到自己的留言内容被对方无视吧？那么大家就共同来营造一个很好的环境，从自己开始！</p></div></li>
				<li class="htitle"><a href="javascript:;">我接了别人任务，任务完成之后他不接我任务怎么办？</a></li>
				<li style="display:none"><div class="jsf_cx"><p>平台互刷不像qq群1对1互刷，您完成任务之后就可以发布任务，发布任务就会有人来接，来接您任务的不一定是刚才您接的任务的发布人，相对qq群平台互刷更加安全。</p></div></li>
				<li class="htitle"><a href="javascript:;">小号买东西如何支付？用支付宝么？</a></li>
				<li style="display:none"><div class="jsf_cx"><p>其实有些新手卖家还是有定性思维，会问注册
小号是否需要身份证的问题，您转个弯，来您店铺买东西的买家都有用身份证注册么？当然大部分是没有的，身份证只是用来开店实名认证用的。小号买东西只需要
用网银支付方式就可以了，也可以用支付宝付款。如果您不想接任务那么麻烦，也可以通过官方购买发布点，直接发布任务，快速提高信誉。</p></div></li>
				<li class="htitle"><a href="javascript:;">差不多明白了，那我接到任务后要怎么操作呢？</a></li>
				<li style="display:none"><div class="jsf_cx"><p class="esp">接任务完全图文流程，仔细阅读一下吧。</p>
                                    <p>特别注意：淘宝和平台任务是同步进行下去的，也就是淘宝操作一步，要及时到平台点击相应操作按钮，不要只顾淘宝没管任务，也不要只进行任务而不去淘宝操作！否则很容易出问题比如资金丢失，虽然可以找回，但是为了不必要的麻烦，请淘宝和平台同步操作</p></div></li>
				<div class="cle"></div>
			</ul>
			<div class="cle"></div>
		</div>
		<div class="jsf_bk">
			<h4 class="jsf_bz1">平台名称解释</h4>
			<table class="jsf_table" align="center" cellpadding="0" cellspacing="0" width="98%">
              <tbody><tr>
                <td align="center" bgcolor="#D2E7FF" width="15%">专用名词</td>
                <td bgcolor="#D2E7FF" width="85%">名词解释</td>
              </tr>
              <tr>
                <td align="center"><strong>任务</strong></td>
                <td class="jsf_padd" align="left"><p align="left">平台提高信誉都是围绕任务的形式来进行的，任务也就是让别人来拍自己店里的商品(提供商品地址)，在平台里每个人都可以发布任务来提高自己店铺的信誉，也可以通过接手任务来获取平台存款</p></td>
              </tr>
              <tr>
                <td align="center" bgcolor="#FFFFFF"><strong>发布方</strong></td>
                <td class="jsf_padd" bgcolor="#FFFFFF"><p align="left">就是任务的发起人，发起人必须要有存款和麦点才可以发布任务。</p></td>
              </tr>
              <tr>
                <td align="center"><strong>接手方</strong></td>
                <td><p class="jsf_padd" align="left">就是任务的接手人，接手任务需要有接手任务的小号。</p></td>
              </tr>
              <tr>
                <td align="center" bgcolor="#FFFFFF"><strong>存款</strong></td>
                <td class="jsf_padd" bgcolor="#FFFFFF"><p align="left">发布任务的人需要把钱存入到平台作为担保金，才能发布同等金额的任务。接手任务的人需要真实付款给发布任务的店主的，这是为接手人付款后作担保的。任务完成后接手方已支付宝付款给发布方，担保金则归接手方所有，实际无损耗。</p></td>
              </tr>
              <tr>
                <td align="center"><strong>麦点</strong></td>
                <td><p class="jsf_padd" align="left"> 发布任务时须要的，为了尽量避免大家只发任务而不接任务，我们引入了麦点概念，接手一个任务获取任务相应的麦点，发布任务扣除相应的麦点。 </p></td>
              </tr>
              <tr>
                <td align="center" bgcolor="#FFFFFF"><strong>收藏点</strong></td>
                <td class="jsf_padd" bgcolor="#FFFFFF"><p align="left"> 发布收藏任务时须要的，同麦点概念一样，只不过是用于收藏区的收藏任务，目前收藏点暂时取消，用户可以直接再<strong>收藏流量</strong>区购买。 </p></td>
              </tr>
              <tr>
                <td align="center"><strong>积分</strong></td>
                <td><p class="jsf_padd" align="left">积分是平台等级的一个标识，积分越高使用对应权限功能越多，接发任务与推广用户均可获得积分，积分还可以兑换成麦点。</p></td>
              </tr>
              <tr>
                <td align="center" bgcolor="#FFFFFF"><strong>小号</strong></td>
                <td class="jsf_padd" bgcolor="#FFFFFF"><p align="left">这是一个俗称，小号是用来接手任务用的，其实就是假装到店铺买东西的账号（非平台用户名，是淘宝登录的用户名<strong>旺旺号</strong>，无需身份认证，直接申请使用的）。</p></td>
              </tr>
              <tr>
                <td align="center"><strong>大号</strong></td>
                <td><p class="jsf_padd" align="left">其实就是需要提高信誉的主店帐号（并非店铺地址，也非本平台用户名，是淘宝登录的用户名<strong>旺旺号</strong>）。</p></td>
              </tr>
            </tbody></table>
		</div>
		<div class="jsf_an">
			<a href="http://www.damaihu.com/help/VideoCourses/" class="jsf_btn1"></a>
			<a href="http://www.damaihu.com/diagram/index/" class="jsf_btn2"></a>
		</div>
	</div>
<div class="cle"></div>
';echo '<div id="footer">
		<p><span class="chengse">官方QQ号码：1371752337</span> （加群请注明大麦户）</p>
		<p class="lanse"><a href="#">关于我们</a>|<a href="#">联系我们</a>|<a href="#">大麦户规则</a>|<a href="#">网站地图</a>|<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '" target="_blank">淘宝信誉查询</a> </p>
		<p style="text-align:center;">
	
		<p class="lanse">客户服务热线：02968929109   Copyright © 2012-2020 Damaihu.com All RightsReserved    大麦户版权所有 <a href="#" target="_blank">粤ICP备13037934号</a><span style="display:none">
</span></p>
	</div>
	</div>
    </div>';?>
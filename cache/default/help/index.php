<?php $_tplModify=filemtime('D:\damaihu\xinyupingtai7\cache\default\help\index.php');if(filemtime('D:\damaihu\xinyupingtai7\templates\default\header.htm')>$_tplModify||filemtime('D:\damaihu\xinyupingtai7\templates\default\headerBase.htm')>$_tplModify||filemtime('D:\damaihu\xinyupingtai7\templates\default\footer.htm')>$_tplModify){include(template::load_base('D:\damaihu\xinyupingtai7\templates\default\help\index.htm','D:\damaihu\xinyupingtai7\cache\default\help\index.php',true));exit;}?><?php !defined("IN_JB")&&exit("error");$__tplUrl = '/templates/default/help/';$title='职业刷客 - 互动吧平台';$keywords='';$description='';$cssList=array(0=>'http://damaihu.tertw.net/css/member/member.css');echo '

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



      <div id="content">
	  <div class="h_20"></div>
	  <div class="h_10"></div>
      <div class="newhelp">
        <div class="area1"><p>您每通过接任务帮大麦户其他会员提升一个信誉，都可以得到一个在大麦户发任务的权利，也就是麦点(任务发布点)，让平台的朋友帮您提升一个信誉；帮别人提升信誉度和让别人帮自己提升信誉度都是通过平台上最主要的两个操作就是【接任务】与【发任务】来实现的。</p>
            <img style="margin-top:45px;" src="/images/liuchengtu2.gif" height="165" width="857"></div>
            <div class="area2">
            	<ul>
                	<li>一个买号购买一个商家发布的同一个商品每个月内只允许一次</li>
                    <li>一个买号购买一个商家的所有商品每个月内只允许两次</li>
                    <li>接手同一个的商家所发布的所有任务，每个月内所有买号只允许接手10次</li>
                    <li>每个买号每日最多接手3个任务，每周最多接手15个任务</li>
                    <li>限制一个ip一天只能接6个任务，继续接任务得换ip</li>
                </ul>
            </div>
            
            <!--通用类问题-->
            <div class="area3">
                <div class="cont">
                    <ul>
                        <li>
                            <div class="title" style="background-position:10px -832px"><strong>在大麦户平台多久我的网店可以到钻？</strong><em></em></div>
                            <div class="exp" style="display:none;">
                                <p>您不用多少时间，就可以快速加入钻石卖家的行列了，快则5天，慢则15-20天。平台建议循序渐进的来提高每天的营业额；您如果一个卖家信誉都没有，建议从一天3个左右开始，每三天销量翻倍，最多每天提高二十至三十个信誉都是安全的；
这里是互动担保信誉平台，可以理解为和支付宝一样功能的交易担保平台，希望大家遵守这里的规定，营造一个良好的互动氛围。</p>
                               
                                <span class="more"></span>
                            </div>
                        </li>
                        <li>
                            <div class="title" style="background-position:10px -832px"><strong>这个平台安全吗？</strong><em></em></div>
                            <div class="exp" style="display:none;">
                                <p>1、一个买号购买一个商家发布的同一个商品每个月内只允许一次</p>
                                <p>2、一个买号购买一个商家的所有商品每个月内只允许两次</p>
                                <p>3、接手同一个的商家所发布的所有任务，每个月内所有买号只允许接手10次</p>
                                <p>4、每个买号每日最多接手6个任务，每周最多接手30个任务</p>
                                <p>5、限制一个ip一天只能接6个任务，继续接任务得换ip。</p>
                                <p>6、为了防止淘宝监控平台的ip，平台服务器永不访问淘宝服务器。您的店铺信息只有接任务的人才能看到，而且，平台定期清理历史记录。哪怕拿到平台的数据库资料，也没有人知道您一个月以前在平台刷信的记录。</p>
                                <p>7、平台严格实行实物交易确认时间限制，没到确认时间不让确认。真实交易不可能对方付款了您发货了就立刻确认。而有的平台这么做的！平台做了这个限制，确保更加逼真模拟真实交易。</p>
                                <p>8、平台上的会员来自全国各地，跟您真实交易的买家来自全国各地一样真实。</p>
                                <span class="more"></span>
                            </div>
                            
                        </li>
                        <li>
                            <div class="title" style="background-position:10px -832px"><strong>大麦户平台真的好么？和我们以前互刷比起来有什么优势啊？</strong><em></em></div>
                            <div class="exp" style="display:none;">
                                <p>大麦户平台是完全免费的运营模式，保证了想刷信用的朋友随时可刷随时可和不同的人进行刷信用，而完全不必担心对方的信用，因为对方的资金已经提前支付到了发布点平台；</p>

                                <p>同时您是和全国各地完全不同的账号不同的IP之间进行信用互刷，保证您账号尽可能的安全。</p>
                                
                                <p>只要您努力做任务，平台不仅免费而且能最大化保证您刷信用的安全，相比互刷，省去了您奔波于各个qq群喊人刷信用的时间，确保了互刷过程中您付款并确认后别人始终不确认而导致的资金压力；
                                QQ互刷被封的可能性高，互刷被骗的可能性相比平台高很多，还要小心如钓鱼网站，被骗子举报，申请退款等一系列的问题。而大麦户平台全然没有这些烦恼。</p>
                                <span class="more"></span>
                            </div>
                            
                        </li>
                        <li>
                            <div class="title" style="background-position:10px -832px"><strong>既然免费，这网站平台不赚钱吗？</strong><em></em></div>
                            <div class="exp" style="display:none;">
                                <p>平台肯定也有钱赚，但不是赚您的，平台靠出售麦点赚钱，因为有的人嫌互刷麻烦，不想去接任务挣发布点，就直接购买麦点，直接发布任务得好评。</p>
                                <p>平台也就是靠这个盈利并为大家服务下去。</p>
                                
                                <span class="more"></span>
                            </div>
                            
                        </li>
                        
                        <li>
                            <div class="title" style="background-position:10px -832px"><strong>我这样又买又卖的，那我淘宝号的买家和卖家信誉不都涨了？</strong><em></em></div>
                            <div class="exp" style="display:none;">
                                <p>是的，所以您可以再注册几个淘宝号（俗称小号/买号），接任务时，用小号买对方东西。大号（您开店的号）发任务，这样就互不影响了。</p>
                                <p class="esp">说明：小号就是您再注册个淘宝号，这个号专门去买对方东西用的，小号可用网银付款，也可支付宝付款，用大号支付宝关联使用就不用另外认证了。</p>
                                <span class="more"></span>
                            </div>
                            
                        </li>
                        <li>
                            <div class="title" style="background-position:10px -832px"><strong>我是否要先充点存款进行周转呢？</strong><em></em></div>
                            <div class="exp" style="display:none;">
                                <p>是的，您最好准备200元左右的资金进行刷钻周转，放心，这笔钱是不会有任何损失的，只会不断的在平台和支付宝之间来回流通。</p>
								<p>您可以访问<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/user/topup/">这里</a>，选择一个最适合您的方式进行存款的充值，</p>
                               
                                <span class="more"></span>
                            </div>
                            
                        </li>
                        <li>
                            <div class="title" style="background-position:10px -832px"><strong>任务操作过程中关于资金的疑问？</strong><em></em></div>
                            <div class="exp" style="display:none;">
                                
                                <p>有刷友会问，如果我在淘宝确认了收货并评价，但是A用户不在平台确认的话怎么办？</p>
                                <p>不要惊慌，您的钱还在平台上，由平台担保着呢，这时候您需要先QQ联系A用户，通知他完成交易，其实

他也会急着完成交易的，因为不完成的话他也无法发布后面的任务；</p>
                                <p>如果联系不上或者交涉未果，这时候就QQ联系平台管理员，并且提供任务编号和已经完成淘宝交易的证

据，管理员会通过和双方联系确认后，将这笔存款立即打还到您的帐户上。</p>
                                <p>还有刷友会问，如果B根本没在淘宝上付款，但是却在平台上点了确认付款怎么办？</p>
                                <p>这时候您也不用慌，您还没有任何经济损失不是？呵呵，还是先联系B，催促他付款，如果他是新人，这

种错误有可能发生，大家都要谅解一下，这样才和谐；如果他也联系不上或者其他原因拒绝付款，那么

就投诉他吧，由管理员来处理，管理员确认情况属实后，会将任务返回到未接受状态，您可以等待其他

接手人来完成任务，同样没有任何经济损失。值得注意的是，如果B被人投诉了6次，系统会自动封号的

。</p>
                               
                                <span class="more"></span>
                            </div>
                            
                        </li>
                        
                    </ul>
                </div>
            </div>
            <!--通用类问题-->
            
            <div class="area3">
            
            	<div class="left"><h3>作为任务接手人</h3>
                	<div class="cont">
                    	<ul>
                        	<li>
                            	<div class="title" style="background-position:10px -832px"><strong>接手任务是什么意思？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>接手任务就是指您去任务大厅中接手其他会员发布的任务，然后去淘宝上购买任务
中标明的商品；交易结束，提交好评后，您的大麦户平台账户内就可以得到和您支付宝支付的商品货款等额的平台存款（即发布人发布任务时冻结在平台的押金），
和奖励的任务麦点；有了这些麦点您也就可以去发布任务了哦。</p>
                                    <p>在拍下商品后，一定要仔细检查淘宝上所需支付的货款总额（商品售价+运费）是否与平台上任务担保价相等，如果不等要先联系发布人改价，然后再支付。</p>
                                    <p class="esp">在接任务之前您还有个准备工作是必须要完成的：捆绑买号</p>
                                    <span class="more"><a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t100/" target="_blank">查看详细...</a></span>
                                </div>
                            </li>
                            <li>
                            	<div class="title" style="background-position:10px -832px"><strong>什么是买号？要怎么捆绑？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>也可称为“小号”，指的是您在淘宝注册的小号，不需要认证身份，用来给别人刷信用并且给自己赚取麦点的。为了保障您的店铺安全，买号不要使用自己的店铺大号来捆绑。最好的做法是：小号付款购买商品，大号收款出售商品。</p>
                                    <span class="more"><a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t723/" target="_blank">查看详细...</a></span>
                                </div>
                                
                            </li>
                            <li>
                                <div class="title" style="background-position:10px -832px"><strong>我给对方刷了一个，我在淘宝付款给他了，我的钱怎么办，上哪去了？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                    <p class="esp">接任务完全图文流程，仔细阅读一下吧。</p>
                                    <p>特别注意：淘宝和平台任务是同步进行下去的，也就是淘宝操作一步，要及时到平台点击相应操作按钮，不要只顾淘宝没管任务，也不要只进行任务而不去淘宝操作！否则很容易出问题比如资金丢失，虽然可以找回，但是为了不必要的麻烦，请淘宝和平台同步操作</p>
                                    <span class="more"><a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t774/" target="_blank">查看详细...</a></span>
                                </div>
                                
                            </li>
                            <li>
                            	<div class="title" style="background-position:10px -832px"><strong>接手任务的准备工作？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>平台注册以后，如果想接手任务赚取麦点来发布自己任务；或者想赚取麦点换现金，用户都需要在开始工作前准备一下几项准备工作：</p>
                                    <p>第一：一张开通了网银的银行卡；（记住，要去支付宝网页上去查看一下，一定要是支付宝支持的网银才行哦；）推荐工商银行.</p>
                                    <p>第二：卡内准备一些流动资金，对于一般用户来说大概两百块左右足够了；</p>
                                    <p>第三：新注册几个淘宝账号也就是平台上说的小号，注意这些小号不要与您的店铺掌柜名有任务关系；小号因为只买东西，不需要实名认证的，所以也千万不要往里边充钱；使用小号购买任务商品时，只要直接选择网银支付就可以了；</p>
                                    <p>准备好上面的三件物品后，您就可以开始您的刷钻之旅了哦；</p>
                                    <span class="more"></span>
                                </div>
                                
                            </li>
                            <li>
                            	<div class="title" style="background-position:10px -832px"><strong>接手任务需要注意些什么？</strong><em></em></div>
                                <div class="exp" style="display: none;">
                                	<p>第一：尽量轮换使用买号；这样是为了使您的小号和卖家的网店都能健康的成长；</p>
                                    <p>第二：在接手任务后，先看卖家QQ是否在线，卖家在线的在把任务做下去，不在线的直接退出任务；这样的好处时卡任务的概率会大大降低；</p>
                                    <p>第三：绑定买号后，淘宝支付前一定要看清楚任务商品的标价+运费是否等于任务担保价,如果不一致,在您拍下货物未支付前就请发布人去改价；</p>
                                    <p>第四：立刻好评任务，尽量不要隔天完成；能当天完成就当天结束；不留后遗症；</p>
                                    <p>第五：对于24-72小时的实物任务到期后，及时给任务发布方好评;</p>
                                    <p>第六：24-72小时的实物好评任务 最好等到卖家发货满十二小时候在收货，利人利己；</p>
                                    <p>第七：提交好评时，先看任务要求，有好评内容要求的一定别忘记复制好评内容；所以请负起自己的那份责任来；</p>
                                    <p>因为您肯定不愿意在自己任务中看到自己的留言内容被对方无视吧？那么大家就共同来营造一个很好的环境，从自己开始！</p>
                                    <span class="more"></span>
                                </div>
                                
                            </li>
                            
                            <li>
                            	<div class="title" style="background-position:10px -832px"><strong>我接了别人任务，任务完成之后他不接我任务怎么办？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>平台互刷不像qq群1对1互刷，您完成任务之后就可以发布任务，发布任务就会有人来接，来接您任务的不一定是刚才您接的任务的发布人，相对qq群平台互刷更加安全。</p>
                                    <span class="more"></span>
                                </div>
                                
                            </li>
                            
                            <li>
                            	<div class="title" style="background-position:10px -832px"><strong>小号买东西如何支付？用支付宝么？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>其实有些新手卖家还是有定性思维，会问注册小号是否需要身份证的问题，您转个
弯，来您店铺买东西的买家都有用身份证注册么？当然大部分是没有的，身份证只是用来开店实名认证用的。小号买东西只需要用网银支付方式就可以了，也可以用
支付宝付款。如果您不想接任务那么麻烦，也可以通过官方购买发布点，直接发布任务，快速提高信誉。</p>
                                    <span class="more"></span>
                                </div>
                            </li>
                            
                            
                            
                            <li>
                            	<div class="title" style="background-position:10px -832px"><strong>差不多明白了，那我接到任务后要怎么操作呢？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p class="esp">接任务完全图文流程，仔细阅读一下吧。</p>
                                    <p>特别注意：淘宝和平台任务是同步进行下去的，也就是淘宝操作一步，要及时到平台点击相应操作按钮，不要只顾淘宝没管任务，也不要只进行任务而不去淘宝操作！否则很容易出问题比如资金丢失，虽然可以找回，但是为了不必要的麻烦，请淘宝和平台同步操作</p>
                                    <span class="more"><a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t774/" target="_blank">查看详细...</a></span>
                                </div>
                                
                            </li>
                            <li>
                                <div class="title" style="background-position:10px -832px"><strong>我如果立马确认收货好评的，会不会被淘宝查？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                    <p>立刻确认收货只要不是实物大厅的任务，是很难被查到的。</p>

    <p>为应对淘宝网第二代稽查系统+自查系统，平台现已经升级刷实物24、48 、72小时确认收货评价系统，普通会员即可享受此服务，虚拟大厅的任务则可立马确认。
    </p>
                                    <span class="more"></span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                
                <div class="right_r"><h3>作为任务发布者</h3>
                	<div class="cont">
                    	<ul>
                        	
                            <li>
                            	<div class="title" style=" background-position:10px -832px"><strong>发布任务是什么意思？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>发布任务就是把您的网店中一个商品发布到互动区中，让别人来接手任务，然后来淘宝您的网店中购买这个商品，交易结束后您的信誉就长了一个值；</p>
                                    <p class="esp">注意：发布任务时平台需要冻结您大麦户账户内的任务存款（存款金额=商品标价+快递运费），和相应的【发布点（麦点）】；在任务结束后发放给接手人；</p>
                                    <span class="more"></span>
                                </div>
                            </li>
                            
                            <li>
                            	<div class="title" style=" background-position:10px -832px"><strong>什么是麦点(发布点)？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>也可称为“发布点”，平台每发一个刷信誉的任务所需要的权限，可以通过帮助别人刷信用来免费获得</p>
                                    <p class="esp">1麦点=1个淘宝信用</p>
                                    <p>麦点分为实物麦点和虚拟麦点，分别对应发布不同商品的任务。
虚拟麦点是用来发布不需要物流信息的任务，比如点卡或者充值业务或者QQ号码等商品；</p>
                                    <p>而实物麦点则是用来发布需要物流信息的任务的，比如服装等等，为了模拟真实的交易，需要接收方在24-72小时内确认收货，完全模拟淘宝真实的交易，让淘宝官方查无可查</p>

                                    
                                    <span class="more"></span>
                                </div>
                            </li>
                            
                            <li>
                            	<div class="title" style=" background-position:10px -832px"><strong>什么是存款？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>很多会员问：我的资金是否会损失掉，那么这一点一定要仔细阅读，存款是绝对不会损失的，因为平台的存在除了保证让您安全的刷皇冠，还有一个任务就是保障您的资金安全。</p>
                                    <p>这是您在平台上的存款，可以通过充值，将人民币转到平台上，同时也可以通过平台提现到您的支付宝帐号。</p>
                                    <p>存款的作用在于：您每发布一个任务需要首先扣除和这个任务商品价格所对应的存款，然后帮您刷信用的刷友 接手任务后，会通过支付宝将存款等值的现金返还到您的支付宝账号中。过程中不会出现任何的资金损耗。</p>

                                    
                                    <span class="more"></span>
                                </div>
                            </li>
                            
                            <li>
                            	<div class="title" style=" background-position:10px -832px"><strong>实物任务发货要如何填快递单号? </strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>很多在平台刷信誉的掌柜都很关心这个问题；一般情况下，我们都是这么填写快递单号的；</p>
                                    <p>1）可以填写一些当天的真实单号，或者稍微过期的单号，如果知道收货地址可以修改一下。 </p>
                                    <p>2）一般都是选自己联系物流-其它物流-公司名自己起（可以写本土的一些快递，只要淘宝上没有就可以了），单号自己编一个。 </p>
                                    <p class="esp">第一步：在发货时选择【自己联系物流】</p>
                                    <p class="esp">第二步：选择【其他物流】</p>
                                    <p class="esp">第三步：选择【其他】，然后自己编一个快递公司名字；</p>
                                    <p class="esp">第四步：编写一个快递单号（快递单号一般的填写规则可以参考<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t1445/" target="_blank">这个贴子</a>）；</p>
                                    <p>3）直接选择不需要物流（虚拟物品），推荐用前2种方法。</p>
                                    <span class="more"><a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t1445/" target="_blank">查看详细...</a></span>
                                </div>
                            </li>
                            <li>
                            	<div class="title" style=" background-position:10px -832px"><strong>新人免费发布一元体验任务功能介绍</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                	<p>好消息，新用户的福音来了呵呵！平台采纳了大家的意见，为了广大刷友能够尽快的掌握平台刷信誉的操作流程，特意为每位新用户提供一次免费发布“一元体验任务”的机会</p>
                                    <p>只要成功注册平台，将自动奖励1个麦点和1元的存款，无需充值或者兑换麦点就可以马上发布一个体验任务，并且免费增加一个网店信誉点。</p>
                                    <p>发布一元体验任务有什么注意事项： </p>
                                    <p class="esp">1.因为任务值已经固定为一元钱了，所以切记这个任务里发布的您的淘宝店商品价格改为一元哦！</p>
                                    <p class="esp">2.必须将任务发布在虚拟大厅里面；任务是立即确认收货的，一定要记得快速发货哦！</p>
                                    <p>设置小窍门：如果您的网店商品，都比较贵，建议新建一个1元的充值类商品作为任务商品，来体验我们的免费任务！</p>
                                    <span class="more"></span>
                                </div>
                            </li>
                            <li>
                            	<div class="title" style=" background-position:10px -832px"><strong>我要如何发任务呢？</strong><em></em></div>
                                <div class="exp" style="display:none;">
                                    <p>发任务需要具备三个前提： </p>
                                    <p class="esp">1、淘宝店铺的掌柜名和平台注册时绑定的掌柜名完全一致（必须区分英文大小写）</p>
                                    <p class="esp">2、平台拥有足够的麦点和存款（存款数量=您要拍卖的商品金额+运费金额)，存款不会损耗，发布任务智慧损耗麦点。</p>
                                    <p class="esp">3、淘宝有对应金额的商品，比如您发布的任务是10元任务，那么淘宝就应该有一个商品的金额为10元（实物任务需要商品+运费的金额等于10元）</p>
                                    <p>准备好了这一切，那就开始任务吧。</p>
                                    <p>点击这里查看<a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/diagram/post/" target="_blank">完全图文教程</a></p>
                                    <span class="more"><a href="';if(!$web_rewrite)echo $weburl2.'rewrite.php?rewrite=';echo '/bbs/t1446/" target="_blank">查看详细...</a></span>
                                </div>
                            </li>
                        </ul>
                        
                    </div>
                </div>
   
</div>
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
    </div>';echo '
';?>
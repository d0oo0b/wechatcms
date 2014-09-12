<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> <?php echo ($f_siteTitle); ?> <?php echo ($f_siteName); ?></title>
<meta name="keywords" content="<?php echo ($f_metaKeyword); ?>" />
<meta name="description" content="<?php echo ($f_metaDes); ?>" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<script>var SITEURL='';</script>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
</head>
<body id="nv_member" class="pg_CURMODULE">

<div class="topbg">
<div class="top">
<div class="toplink">
<style>
.topbg{BACKGROUND-IMAGE: url(<?php echo RES;?>/images/top.png);BACKGROUND-REPEAT: repeat-x; height:124px; box-shadow:0 0 10px #000;-moz-box-shadow:0 0 10px #000;-webkit-box-shadow:0 0 10px #000;}
.top {
	MARGIN: 0px auto; WIDTH: 988px; HEIGHT: 124px;
}

.top .toplink{ height:27px; line-height:27px; color:#999; font-size:12px;}
.top .toplink .welcome{ float:left;}
.top .toplink .memberinfo{ float:right;}
.top .toplink .memberinfo a{ color:#999;}
.top .toplink .memberinfo a:hover{ color:#F90}
.top .toplink .memberinfo a.green{ background:none; color:#0C0}

.top .logo {WIDTH: 990px;COLOR: #333; height:70px;  FONT-SIZE:16px; PADDING-TOP:25px}
.top h1{ font-size:25px; margin-top:20px; float:left; width:230px; margin:0; padding:0;}
.top .navr {WIDTH:750px; float:right; overflow:hidden; margin-top:10px;}
.top .navr ul{ width:850px;}
.navr LI {TEXT-ALIGN:center;FLOAT: left;HEIGHT:32px;FONT-SIZE:1em;width:103px; margin-right:5px;}
.navr LI A {width:103px;TEXT-ALIGN:center; LINE-HEIGHT:30px; FLOAT: left;HEIGHT:32px;COLOR: #333; FONT-SIZE: 1em;TEXT-DECORATION: none
}
.navr LI A:hover {BACKGROUND: url(<?php echo RES;?>/images/navhover.gif) center no-repeat;color:#009900;}
.navr LI.menuon {BACKGROUND: url(<?php echo RES;?>/images/navon.gif) center no-repeat; display:block;width:103px;HEIGHT:32px;}
.navr LI.menuon a{color:#FFF;}
.navr LI.menuon a:hover{BACKGROUND: url(img/navon.gif) center no-repeat;}
.banner{height:200px; text-align:center; border-bottom:2px solid #ddd;}
.hbanner{ background: url(img/h2003070126.jpg) center no-repeat #B4B4B4;}
.gbanner{ background: url(img/h2003070127.jpg) center no-repeat #264C79;}
.jbanner{ background: url(img/h2003070128.jpg) center no-repeat #E2EAD5;}
.dbanner{ background: url(img/h2003070129.jpg) center no-repeat #009ADA;}
.nbanner{ background: url(img/h2003070130.jpg) center no-repeat #ffca22;}
</style>
<div class="welcome">欢迎使用多用户微信营销服务平台!</div>
    <div class="memberinfo"  id="destoon_member">	
		<?php if($_SESSION[uid]==false): ?><a href="<?php echo U('Index/login');?>">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="<?php echo U('Index/login');?>">注册</a>
			<?php else: ?>
			你好,<a href="/#" hidefocus="true"  ><span style="color:red"><?php echo (session('uname')); ?></span></a>（uid:<?php echo (session('uid')); ?>）
			<a href="/#" onclick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a><?php endif; ?>	
	</div>
</div>
    <div class="logo">
        <div style="float:left"></div>
            <h1><a href="/" title="多用户微信营销服务平台"><img src="<?php echo ($f_logo); ?>" /></a></h1>
            <div class="navr">
        <ul id="topMenu">           
            <li <?php if((ACTION_NAME == 'index') and (GROUP_NAME == 'Home')): ?>class="menuon"<?php endif; ?> ><a href="/">首页</a></li>
                <li <?php if((ACTION_NAME) == "fc"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/fc');?>">功能介绍</a></li>
                <li <?php if((ACTION_NAME) == "about"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/about');?>">关于我们</a></li>
                <li <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/price');?>">资费说明</a></li>
                <li <?php if((ACTION_NAME) == "common"): ?>class="menuon"<?php endif; ?>><a href="daili.php"><strong><font color='red'>代理登录</font></strong></a></li>
                <li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('User/Index/index');?>">管理中心</a></li>
                <li <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/help');?>">帮助中心</a></li>
            
            </ul>
        </div>
        </div>
    </div>
</div>
<div id="aaa"></div>


<div id="mu" class="cl"></div>
</div>
</div>
<div id="aaa"></div>

<div id="wp" class="wp"><link href="<?php echo RES;?>/css/style.css" rel="stylesheet" type="text/css" />
 <div class="contentmanage">
    <div class="developer">
       <div class="appTitle normalTitle" style="padding: 20px;">
        <h2>你好,<a href="/#" hidefocus="true"  ><span style="color:red"><?php echo (session('uname')); ?></span></a>欢迎您使用<?php echo C('site_name');?>管理平台</h2>
        <div class="accountInfo">
        
        </div>
        <div class="clr"></div>
      </div>
      <div class="tableContent">
        <!--左侧功能菜单-->
        <div class="sideBar">
          <div class="catalogList">
            <ul>
            	<li class="subCatalogList"> <a href="<?php echo U('Index/useredit');?>">修改密码</a> </li>
				<li class=" subCatalogList "> <a href="<?php echo U('Index/index');?>">我的公众号</a></li>
				<li class=" subCatalogList "> <a href="<?php echo U('Index/add');?>">添加公众号</a> </li>
				<li class=" subCatalogList "> <a href="<?php echo U('Alipay/index');?>">会员充值</a> </li>
				<li class=" subCatalogList "> <a href="<?php echo U('Alipay/vip');?>">升降级</a> </li>
				<li class=" subCatalogList "> <a href="<?php echo U('Sms/index');?>">短信管理</a> </li>
				<?php if($thisUser['invitecode']): ?><li class=" subCatalogList "> <a href="<?php echo U('Index/invite');?>">邀请朋友</a> </li><?php endif; ?>
            </ul>
          </div>
        </div>

 <script src="/tpl/static/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default"></script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>
<script src="/tpl/static/upyun.js?2013"></script>
<div class="content">
          <div class="cLineB"><h4>添加微信公众号</h4></div>
          <form method="post" action="<?php echo U('User/Index/upsave');?>" enctype="multipart/form-data">
          <input type="hidden" name="id" value="<?php echo ($info["id"]); ?>">
          <div class="msgWrap">
            <table class="userinfoArea" border="0" cellspacing="0" cellpadding="0" width="100%">
              <thead>
                <tr>
                  <th><span class="red">*</span>公众号名称：</th>
                  <td><input type="text" required="" class="px" name="wxname" value="<?php echo ($info["wxname"]); ?>" tabindex="1" size="25">
                  </td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th><span class="red">*</span>公众号原始id：</th>
                  <td><input type="text" required="" name="wxid" value="<?php echo ($info["wxid"]); ?>" onmouseup="this.value=this.value.replace('_430','')" class="px" tabindex="1" size="25">　<span class="red">请认真填写，错了不能修改。</span>比如：gh_423dwjkeww3 <a href="/tpl/static/getoid.htm" target="_blank"><img src="<?php echo RES;?>/images/help.png" class="vm helpimg" title="帮助"></a></td>
                </tr>
                <tr>
                  <th><span class="red">*</span>微信号：</th>
                  <td><input type="text" required="" name="weixin" value="<?php echo ($info["weixin"]); ?>" class="px" tabindex="1" size="25">　比如：lentu123 </td>
                </tr>
                  <tr>
                  <th>头像地址（url）:</th>
                  <td><input class="px" name="headerpic" id="pic" value="<?php echo ($info["headerpic"]); ?>" size="60">    <script src="/tpl/static/upyun.js?2013"></script><a href="###" onclick="upyunPicUpload('pic',200,200,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('pic')">预览</a></td>
                </tr>
                 
                 <input type="hidden" name="token" value="<?php echo ($info["token"]); ?>" class="px" tabindex="1" size="40">
                <tr>
                  <th><span class="red"></span>AppID：</th>
                  <td><input type="text" name="appid" value="<?php echo ($info["appid"]); ?>" class="px" tabindex="1" size="25">　用于自定义菜单等高级功能，可以不填 </td>
                </tr>
                <tr>
                  <th><span class="red"></span>AppSecret：</th>
                  <td><input type="text" name="appsecret" value="<?php echo ($info["appsecret"]); ?>" class="px" tabindex="1" size="25">　用于自定义菜单等高级功能，可以不填 </td>
                </tr>
                
                <tr>
                  <th><span class="red"></span>微信号类型：</th>
                  <td><select id="winxintype" name="winxintype">                  
                  <option value="1" <?php if(($info["winxintype"]) == "1"): ?>selected<?php endif; ?>>订阅号</option>
                  <option value="2" <?php if(($info["winxintype"]) == "2"): ?>selected<?php endif; ?>>服务号</option>
                  <option value="3" <?php if(($info["winxintype"]) == "3"): ?>selected<?php endif; ?>>认证服务号</option>
                  </select>　认证服务号是指每年向微信官方交300元认证费的公众号 </td>
                </tr>
                
                <tr>
                  <th><span class="red">*</span>地区</th>
                  <td>
                  省：<input type="text" class="px" id="province" value="<?php echo ($info["province"]); ?>" name="province" tabindex="1" size="20">  市：<input id="city" value="<?php echo ($info["city"]); ?>" type="text" name="city" class="px" tabindex="1" size="20">
               （此处关联公交等本地化查询）
                  </td>
                </tr>
                <tr>
                  <th>公众号邮箱：</th>
                  <td><input type="text" required="" class="px" tabindex="1" value="<?php echo ($info["qq"]); ?>" name="qq" size="25"></td>
                </tr>
                 <tr>
                  <th>粉丝数：</th>
                  <td><input type="text" required="" name="wxfans" value="<?php echo ($info["wxfans"]); ?>" class="px" tabindex="1" size="25"></td>
                </tr>
             
                <tr>
                  <th>类型：</th>
                  <td><select id="type" name="type">
                  <option value="1,情感" <?php if(($info["typeid"]) == "1"): ?>selected<?php endif; ?> >情感</option>
                  <option value="2,数码" <?php if(($info["typeid"]) == "2"): ?>selected<?php endif; ?> >数码</option>
                  <option value="3,娱乐" <?php if(($info["typeid"]) == "3"): ?>selected<?php endif; ?> >娱乐</option>
                  <option value="4,IT" <?php if(($info["typeid"]) == "4"): ?>selected<?php endif; ?> >IT</option>
                  <option value="5,数码" <?php if(($info["typeid"]) == "5"): ?>selected<?php endif; ?> >数码</option>
                  <option value="6,购物" <?php if(($info["typeid"]) == "6"): ?>selected<?php endif; ?> >购物</option>
                  <option value="7,生活" <?php if(($info["typeid"]) == "7"): ?>selected<?php endif; ?> >生活</option>
                  <option value="8,服务" <?php if(($info["typeid"]) == "8"): ?>selected<?php endif; ?> >服务</option>
                  </select></td>
                </tr>
              
                <tr>
                  <th></th>
                  <td><button type="submit" class="btnGreen" id="saveSetting">保存</button></td>
                </tr>
              </tbody>
            </table>
            
          </div>
          </form>
        </div>
        
        <div class="clr"></div>
      </div>
    </div>
  </div>
  <!--底部-->
  	</div>
</div>
</div>
</div>

<style>
.IndexFoot {
	BACKGROUND-COLOR: #333; WIDTH: 100%; HEIGHT: 39px
}
.foot{ width:988px; margin:0px auto; font-size:12px; line-height:39px;}
.foot .foot_page{ float:left; width:600px;color:white;}
.foot .foot_page a{ color:white; text-decoration:none;}
#copyright{ float:right; width:380px; text-align:right; font-size:12px; color:#FFF;}
</style>
<div class="IndexFoot" style="height:120px;clear:both">
<div class="foot" style="padding-top:20px;">
<div class="foot_page" >
<a href="<?php echo ($f_siteUrl); ?>"><?php echo ($f_siteName); ?>,微信公众平台营销</a><br/>
帮助您快速搭建属于自己的营销平台,构建自己的客户群体。
</div>
<div id="copyright" style="color:white;">
	<?php echo ($f_siteName); ?>(c)版权所有 <a href="http://www.miibeian.gov.cn" target="_blank" style="color:white"><?php echo C('ipc');?></a><br/>
	技术支持：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($f_qq); ?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo ($f_qq); ?>:51" alt="联系我吧" title="联系我吧"/></a>

</div>
    </div>
</div>

<div style="display:none">
<?php echo ($alert); ?>
<?php echo base64_decode(C('countsz'));?>
<script src="http://s15.cnzz.com/stat.php?id=5524076&web_id=5524076" language="JavaScript"></script>
</div>
</body>
</html>
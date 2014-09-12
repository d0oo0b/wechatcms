<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>站点配置</title>
<link href="<?php echo RES;?>/images/main.css" type="text/css" rel="stylesheet">
<link href="<?php echo RES;?>/images/jquery-1.7.2.min.js" type="text/css" rel="stylesheet">
<script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default"></script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>
<meta http-equiv="x-ua-compatible" content="ie=7" />
</head>
<body class="warp">
<style>
.set_top{background:url('<?php echo RES;?>/images/set_top.png');height:60px;}
.set_top li{font-weight: bold;float:left;width:98px;line-height:60px;text-align: center;background:url('<?php echo RES;?>/images/set_top_li.png');}
#set_top_li_bg{background:url('<?php echo RES;?>/images/set_top_li_hover.png');}
</style>
<div class="set_top">
	<?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li <?php if(ACTION_NAME == $vo['name']): ?>id="set_top_li_bg"<?php endif; ?>><a href="<?php echo U($action.'/'.$vo['name'],array('pid'=>6,'level'=>3));?>"><?php echo ($vo['title']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<div id="artlist">

 
 
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="addn">
 <form id="myform" action="<?php echo U('Site/insert');?>" method="post">

    <tr> 
      <td  height="48" align="right"><strong>网站名称：</strong></td>
      <td><input type="text" name="site_name" value="<?php echo ($f_siteName); ?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例：小猪官网</span>
	  </td>
    </tr>
	 <tr> 
      <td  height="48" align="right"><strong>网站标题：</strong></td>
      <td><input type="text" name="site_title" value="<?php echo ($f_siteTitle); ?>" class="ipt" size="45" /><span>&nbsp;&nbsp;一般不超过80个字符</span>
	  
    </tr>
     <tr> 
      <td  height="48" align="right"><strong>网址LOGO：</strong></td>
      <td><input type="text" name="site_logo" value="<?php echo ($f_logo); ?>" class="ipt" id="pic" size="45" /><span>&nbsp;&nbsp;<script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('pic',190,60,'<?php echo ($token); ?>')" style="color:red">上传</a> <a href="###" onclick="viewImg('pic')">预览</a>&nbsp;&nbsp;必须为背景透明png格式，高度60像素，宽度190像素</span>
    </tr>
	 <tr> 
      <td  height="48" align="right"><strong>网站地址：</strong></td>
      <td><input type="text" name="site_url" value="<?php echo ($f_siteUrl); ?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例:http://www.pigcms.com</span>
    </tr>  
	<tr> 
      <td  height="48" align="right"><strong>机器人名称：</strong></td>
      <td><input type="text" name="site_my" value="<?php echo C('site_my');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>key：</strong></td>
      <td><input type="text" name="server_key" value="<?php echo C('server_key');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>顶级域名：</strong></td>
      <td><input type="text" name="server_topdomain" value="<?php echo C('server_topdomain');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;比如:a.com,b.com.cn</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>用户请求数超出提示：</strong></td>
      <td><input type="text" name="connectout" value="<?php echo C('connectout');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;用户请求数用完在微信端的提醒</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>审核用户：</strong></td>
      <td><input type="radio" name="ischeckuser" value="true" <?php if(C('ischeckuser')==='true')echo checked; ?> /> 注册时无需要审核 <input type="radio" name="ischeckuser" value="false" <?php if(C('ischeckuser')==='false')echo checked; ?> /> 注册时需要审核</td>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>注册需要手机号：</strong></td>
      <td><input type="radio" name="reg_needmp" value="true" <?php if(C('reg_needmp')==='true')echo checked; ?> /> 需要填写手机号 <input type="radio" name="reg_needmp" value="false" <?php if(C('reg_needmp')==='false')echo checked; ?> /> 不需要填写手机号</td>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>注册后级别：</strong></td>
      <td>
      <select name="reg_groupid">
      <?php if(is_array($groups)): $i = 0; $__LIST__ = $groups;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><option value="<?php echo ($g["id"]); ?>" <?php if(C('reg_groupid') == $g['id']): ?>selected<?php endif; ?>><?php echo ($g["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
      </select>
      <span>&nbsp;&nbsp;仅注册不需要审核的时候有效</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>注册后使用天数：</strong></td>
      <td><input type="text" name="reg_validdays" value="<?php echo C('reg_validdays');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;注册后多少天过期(仅注册不需要审核的时候有效)</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>路由key：</strong></td>
      <td><input type="text" name="router_key" value="<?php echo C('router_key');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;第一次买路由后请联系pigcms官方</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>网站备案：</strong></td>
      <td><input type="text" name="ipc" value="<?php echo C('ipc');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例：沪IPC备12587号</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>站长QQ：</strong></td>
      <td><input type="text" name="site_qq" value="<?php echo ($f_qq); ?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例如:QQ:8888888</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>站长手机：</strong></td>
      <td><input type="text" name="site_mp" value="<?php echo C('site_mp');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例如:13888888888</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>百度地图API：</strong></td>
      <td><input type="text" name="baidu_map_api" value="<?php echo C('baidu_map_api');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;<a href="http://lbsyun.baidu.com/apiconsole/key?application=key" target="_blank">点击获取</a></span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>站长Email：</strong></td>
      <td><input type="text" name="site_email" value="<?php echo C('site_email');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例如:QQ:server@pigcms.cn</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>网站关键词：</strong></td>
      <td><textarea	 type="text" name="keyword" class="ipt" style="width:450px;height:60px;margin:5px 0 5px 0;" /><?php echo ($f_metaKeyword); ?></textarea><span>&nbsp;&nbsp;一般不超过100个字符</span>
    </tr>	
	<tr> 
      <td  height="48" align="right"><strong>网站描述：</strong></td>
      <td><textarea	 type="text" name="content" class="ipt" style="width:450px;height:60px;margin:5px 0 5px 0;" /><?php echo ($f_metaDes); ?></textarea><span>&nbsp;&nbsp;一般不超过200个字符</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>统计代码：</strong></td>
      <td><textarea	 type="text" name="countsz" class="ipt" style="width:450px;height:60px;margin:5px 0 5px 0;" /><?php echo base64_decode(C('countsz'));?></textarea><span>&nbsp;&nbsp;例:51啦统计,cnzz统计</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>底部版权：</strong></td>
      <td><textarea	 type="text" name="copyright" class="ipt" style="width:450px;height:60px;margin:5px 0 5px 0;" /><?php echo C('copyright');?></textarea><span>&nbsp;&nbsp;例:pigcms版权所有</span>
    </tr>
    
   <input type="hidden" name="files" value="info.php" />
    <tr> 
      <td height="48" colspan="2">
		  <div id="addkey"></div>
		  <div style="padding-left:100px;">
			<input type="submit" value="保存设置" />
		  </div>
	  </td>
    </tr>
	</form>
</table><br />
<br />
<br />

</div>
</body>
</html>
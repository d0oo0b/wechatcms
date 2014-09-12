<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>微WIFI</title>
<link href="<?php echo RES;?>/images/main.css" type="text/css" rel="stylesheet">
<link href="<?php echo RES;?>/images/jquery-1.7.2.min.js" type="text/css" rel="stylesheet">
<link href="<?php echo RES;?>/images/jquery.form.js" type="text/css" rel="stylesheet">
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
      <td  height="48" align="right"><strong>开通说明：</strong></td>
      <td><a href="/tpl/system/site/wx_service_explain.pdf" target="_blank">  点击查看</a></td>
    </tr>
  <tr>
  <!--
	<tr> 
      <td  height="48" align="right"><strong>设备绑定用户名：</strong></td>
      <td><input type="text" name="rptk_bind_name" value="<?php echo C('rptk_bind_name');?>" class="ipt" size="20" /><span> 例:pigcms</span>
    </tr>
  <tr>
      <td  height="48" align="right"><strong>设备绑定密码：</strong></td>
      <td><input type="text" name="rptk_bind_key" value="<?php echo C('rptk_bind_key');?>" class="ipt" size="20" /><span> 例:12345678</span>
    </tr>
    -->
  <tr>
      <td  height="48" align="right"><strong>节点API ID：</strong></td>
      <td><input type="text" name="rptk_node_api_id" value="<?php echo C('rptk_node_api_id');?>" class="ipt" size="20" /><span> 例:yb0184g58e9fpb1t</span>
  </tr>
  <tr>
      <td  height="48" align="right"><strong>节点API KEY：</strong></td>
      <td><input type="text" name="rptk_node_api_key" value="<?php echo C('rptk_node_api_key');?>" class="ipt" size="40" /><span> 例:cfbp1fed69b6644f7g76ib2aedf8a66n</span>
    </tr>
  <tr>
      <td  height="48" align="right"><strong>认证API ID：</strong></td>
      <td><input type="text" name="rptk_wx_auth_api_id" value="<?php echo C('rptk_wx_auth_api_id');?>" class="ipt" size="20" /><span> 例:h3ec2ic7pe6a287u</span>
    </tr> 
  <tr>
      <td  height="48" align="right"><strong>认证API KEY：</strong></td>
      <td><input type="text" name="rptk_wx_auth_api_key" value="<?php echo C('rptk_wx_auth_api_key');?>" class="ipt" size="40" /><span>例:fpf503289416ebf7o7f7f24w23fcfev9</span>
    </tr>
    <input type="hidden" name="files" value="rippleos_key.php" />
    <tr> 
      <td height="48" colspan="2">
		  <div style="padding-left:100px;">
			<input type="submit" value="保存设置" />
		  </div>
	  </td>
    </tr>
	</form>
</table>
</div>
</body>
</html>
<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>权限管理</title>
<link href="<?php echo RES;?>/images/main.css" type="text/css" rel="stylesheet">
<script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
<meta http-equiv="x-ua-compatible" content="ie=7" />
<script type="text/javascript">
	$(function(){
		$('#submit').click(function(){
			var forms=$('#form').serialize();
			$.ajax({
				type:'POST',
				url:'<?php echo U("$action/add");?>',
				data:forms,
				success:function(msg){
					msg=eval('('+msg+')');
					alert(msg.info);
				}
			});
		})
	});
</script>
</head>
<body class="warp">
<div id="artlist" class="addn">
<form id="form">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="addn">
  <tr>
    <th colspan="4"><?php echo ($title); ?></th>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>组名：</strong></td>
      <td><input type="text" name="name"  class="ipt" size="45" /></td>
    </tr>
	<tr> 
      <td height="48" align="right"><strong>状态：</strong></td>
      <td height="48">
		<input type="radio" name="status" value="0" class="ipt" />关闭
		<input type="radio" name="status" value="1" class="ipt" checked />开启
	  </td>
	  <input type="hidden" name="dosubmit" />
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>备注：</strong></td>
      <td><input type="text" name="remark"  class="ipt" size="45" /></td>
    </tr>
    <tr> 
      <td height="48" colspan="2"><div id="addkey"></div><div class="fabu"><img src="<?php echo RES;?>/images/main/addwz.gif" id="submit" /> <img src="<?php echo RES;?>/images/main/addqx.gif" /></div></td>
    </tr>
</table>
</form>
<br />
<br />
<br />

</div>
</body>
</html>
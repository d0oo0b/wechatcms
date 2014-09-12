<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<link href="tpl/static/messageboard/css/message.css?2013" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript" src="tpl/static/jquery.min.js"></script>
<body id="message">
  <div class="qiandaobanner"><a   href="javascript:history.go(-1);"><img src="tpl/static/messageboard/images/522c649a6fd98.jpg?2013" ></a> </div>

<div class="cardexplain">
	<div class="window" id="windowcenter">
		<div id="title" class="wtitle">操作提示<span class="close" id="alertclose"></span></div>
		<div class="content">
                    <div id="txt"></div>
		</div>
	</div>
	<script type="text/javascript"> 
//ajax中点击留言1回复重新加载页面
function func1(){
    window.location.reload();
}  
//ajax中点击留言2回复重新加载页面
function func2(){
    window.location.reload();
}        
//留言处理1 start
$(document).on("click","#showcard1",function(){
    var check = $("#check").val();
    var wecha_id = $("#wecha_id").val();
    var token = $("#token").val();
    var btn = $(this);
	var wxname = $("#wxname1").val();
	if (wxname  == '') {
		alert("请输入昵称");
		return
	}
	var info = $("#info1").val();
	if (info == '') {
		alert("请输入内容");
		return
	}
        $.ajax({
            type:"get",
            url:"index.php?g=Wap&m=Reply&a=leave&wecha_id="+wecha_id+"&check="+check+"&token="+token+"&name="+wxname+"&message="+info,
            dateType:"json",
            success:function(res){
                var res = eval("("+res+")");
                var data = res['data'];
                //留言失败
                if(res['status'] == 0){
                    alert(res['info']);
                    $("#wxname1").val("") ;
                    $("#info1").val("");
                    $("#closel").trigger("click");
                    return;
                }else if(res['status'] == 1){
                    var html = "";
                    html+="<li class='green bounceInDown'>";
               
                    html+="<h3>"+data['name']+"<span>"+data['time']+"</span><div class='clr'></div></h3>";
                    html+="<dl>"
                    html+="<dt class='hfinfo' date="+data['id']+" >"+data['message']+"</dt>";
                    html+="</dl>";
          
    
                    html+="<dl class='huifu' >"
                    html+="<dt><span>　<a  class='hhbt czan js1'  date="+data['id']+" href='javascript:func1(this)' sid ='btn"+data['id']+"' id='js1' >回复</a>"; 　
                    html+="<p   class='hhly"+data['id']+"' style='display:none;' id='show"+data['id']+"' > <textarea name='info' id='info"+data['id']+"' class='pxtextarea hly"+data['id']+"' ></textarea>"; 
                    html+="<a class='hhsubmit submit' date="+data['id']+" href='javascript:void(0)' id='submit2'>确定</a> </p></span></dt>";
                    html+="</dl>";
                    html+="</li>";
                    alert(res['info']);
                    $(html).prependTo("#limsg");
                    $("#limsg").html(html);
                    $("#wxname1").val("") ;
                    $("#info1").val("");
                    $("#closel").trigger("click");
                    return;
                }else{
                    alert(res['info']);
                    $("#wxname1").val("") ;
                    $("#info1").val("");
                    $("#closel").trigger("click");
                    return;
                }
                
            }
        });
        
});
//留言1 end

//留言处理2 start
$(document).on("click","#showcard2",function(){
    var check = $("#check2").val();
    var wecha_id = $("#wecha_id2").val();
    var token = $("#token2").val();
    var btn = $(this);
	var wxname = $("#wxname2").val();
	if (wxname  == '') {
		alert("请输入昵称");
		return
	}
	var info = $("#info2").val();
	if (info == '') {
		alert("请输入内容");
		return
	}
        $.ajax({
            type:"get",
            url:"index.php?g=Wap&m=Reply&a=leave&wecha_id="+wecha_id+"&check="+check+"&token="+token+"&name="+wxname+"&message="+info,
            dateType:"json",
            success:function(res){
                //var data = res.split(",")
                var res = eval("("+res+")");
                var data = res['data'];
                //留言失败
                if(res){
                    if(res['status'] == 0){
                        alert(res['info']);
                        $("#wxname2").val("") ;
                        $("#info2").val("");
                        $("#close2").trigger("click");
                        return;
                        exit;
                    }else if(res['status'] == 2){
                        alert(res['info']);
                        $("#wxname2").val("") ;
                        $("#info2").val("");
                        $("#close2").trigger("click");
                        return;
                        exit;
                    }else{

                        var html = "";
                        html+="<li class='green bounceInDown'>";

                        html+="<h3>"+data['name']+"<span>"+data['time']+"</span><div class='clr'></div></h3>";
                        html+="<dl>"
                        html+="<dt class='hfinfo' date="+data['id']+" >"+data['message']+"</dt>";
                        html+="</dl>";


                        html+="<dl class='huifu' >"
                        html+="<dt><span>　<a  class='hhbt czan js1'  date="+data['id']+" href='javascript:func2(this)' sid ='btn"+data['id']+"' ' >回复</a>"; 　
                        html+="<p   class='hhly"+data['id']+"' style='display:none;' id='show"+data['id']+"' > <textarea name='info' id='info"+data['id']+"' class='pxtextarea hly"+data['id']+"' ></textarea>"; 
                        html+="<a class='hhsubmit submit' date="+data['id']+" href='javascript:void(0)' id='submit2'>确定</a> </p></span></dt>";
                        html+="</dl>";
                        html+="</li>";
                        alert(res['info']);

                        $(html).prependTo("#limsg");
                        $("#limsg").html(html);
                        $("#wxname2").val("") ;
                        $("#info2").val("");
                        $("#close2").trigger("click");
                        return
                    }
                }else{
                    alert("留言失败");
                    return;
                }
            }
        });
        
});
//留言2 end

//回复处理start
$(document).on("click",".sure",function(){
    var message_id = $(this).attr("id");
    //alert(message_id);exit;
    var reply = $("#info"+message_id).val();
    var check = $("#needCheck").val();

    if(reply.length <1){
        alert("请输入回复内容");
        return;
    }
    var wecha_id = $("#wecha_id").val();

    $.ajax({
        type:"get",
        url:"index.php?g=Wap&m=Reply&a=reply&wecha_id="+wecha_id+"&check="+check+"&message_id="+message_id+"&token=<?php echo ($token); ?>&reply="+reply,
        success:function(result){
            //alert(result);exit;
            if(result){
                //var data = result.split(",") 
                var result = eval("("+result+")");
                //alert(result['info']);exit;
                var data = result['data'];
                //回复失败
                if(result['status'] == 0){
                    alert(result['info']);
                    $("#info"+message_id).val("");
                    $("#close"+message_id).trigger("click");
                    return;
                    
                }else if(result['status'] ==2){
                    alert(result['info']);
                    $("#info"+message_id).val("");
                    $("#close"+message_id).trigger("click");
                    return;
                }else{
                   
                    var html ="";
                    var replyid = data['id'];
                    //$("#replayid").val("replyid");
                    html +="<dl class='huifu'>"
                    html += "<dt><span>回复："+data['reply']+ "<span>"+data['time']+"</span></span></dt>";
                    html +="</dl>";
                    alert(result['info']);
                    $("#info"+message_id).val("");
                    $("#close"+message_id).trigger("click");
                    $(html).prependTo("#huifu"+message_id);
                }

                
            }else{
                arert("回复失败");
                return;
            }
         }
    });
});
//回复处理end



$(document).ready(function () { 
   

 
$(".hhsubmit").click(function () { 
	 var objid = $(this).attr("date");
	var info = $(".hly"+objid).val();
	if (info == '') {
		alert("请输入内容");
		return
	}
	var submitData = {
		nickname:'',
        fid:objid,
		info: info,
		action: "setly"
	};
	$.post('/Comment/setly/?wxid=18&openid=o7VbEjvJUp2yrzxWOtm3Nzl6CLxM', submitData,
	function(data) {
		if (data.success == true) {
			alert(data.msg);
          setTimeout('window.location.href=location.href',1000);
			return
		} else {}
	},
	"json")
 });  
   
   $(".hfinfo").click(function () { 

	 
	 var objid = $(this).attr("date");
   
	  $(".hhly"+objid).slideToggle();
	 
 
 });  
   $(".hhbt").click(function () { 

	 
	 var objid = $(this).attr("date");
   
	  $(".hhly"+objid).slideToggle();
	 
 
 });  
}); 
$("#windowclosebutton").click(function () { 
$("#windowcenter").slideUp(500);
 
}); 
$("#alertclose").click(function () { 
$("#windowcenter").slideUp(500);
 
}); 

function alert(title){ 
 
$("#windowcenter").slideToggle("slow"); 
$("#txt").html(title);
setTimeout('$("#windowcenter").slideUp(500)',1000);
} 
$(document).ready(function(){
  $(".first1").click(function(){
  $(".ly1").slideToggle();
  });
});
$(document).ready(function(){
  $(".first2").click(function(){
  $(".ly2").slideToggle();
  });
});
</script> 
 
<div class="history">
    <div class="history-date">
      <ul>
      	<a  ><h2 class="first first1" style="position: relative;" id="closel">请点击留言</h2></a>
		<!--<li class="nob  mb"><div class="beizhu">留言审核通过后才会显示在留言墙上！</div></li>-->
		<li  class="green bounceInDown nob ly1" style="display:none" >
<!--       	<form method="post" id="form1" action="<?php echo U('Reply/liuyan',array('token'=>$token,'wecha_id'=>$wecha_id));?>">-->
			<dl>
                            <input type="text" value="<?php echo ($needCheck); ?>" name="check" id="check" style="display:none;">
                            <input type="text" value="<?php echo ($wecha_id); ?>" name="wecha_id" id="wecha_id" style="display:none;">
                            <input type="text" value="<?php echo ($token); ?>" name="token" id="token" style="display:none;">
		     <dt><input name="wxname"  type="text" class="px" id="wxname1" value=""  placeholder="请输入您的昵称"></dt>
			 <dt><textarea name="info" class="pxtextarea" style=" height:60px;"  id="info1"  placeholder="请输入留言" ></textarea></dt>
			<dt><a id="showcard1"  class="submit" >提交留言</a></dt>
          </dl>
<!--        </form>-->
		</li>	
         <font id="limsg"></font>      
         <?php if(is_array($res)): $i = 0; $__LIST__ = $res;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="green bounceInDown">
          <h3><!--<img src="style/images/logo100x100.jpg">--><?php echo ($val["name"]); ?><span><?php echo (date("Y-m-d H:i:s",$val["time"])); ?></span><div class="clr"></div></h3>
          <dl>
            <dt class="hfinfo" date="<?php echo ($val["id"]); ?>" ><?php echo ($val["message"]); ?></dt>
          </dl>
            <dl class="huifu" >
              <dt><span>　<a  class="hhbt czan js1"  date="<?php echo ($val["id"]); ?>" href="javascript:void(0)" id="close<?php echo ($val["id"]); ?>">回复</a> 
                           <input type="text" value="<?php echo ($val["id"]); ?>" name="message_id" id="message_id" style="display:none;"> 
                           <input type="text" value="<?php echo ($needCheck); ?>" name="needCheck" id="needCheck" style="display:none;"> 
			  <p  style="display:none;" class="hhly<?php echo ($val["id"]); ?>" > <textarea name="info<?php echo ($val["id"]); ?>" id="info<?php echo ($val["id"]); ?>" class="pxtextarea hly<?php echo ($val["id"]); ?>" ></textarea> 
                              <a class="hhsubmit submit sure" date="<?php echo ($val["id"]); ?>" id="<?php echo ($val["id"]); ?>" href="javascript:void(0)"> 确定</a> </p></span></dt>
          </dl>
          <font id="huifu<?php echo ($val["id"]); ?>"></font>
           
         <?php  ?>
          <!--回复内容-->
          <?php if(is_array($val['vo'])): $i = 0; $__LIST__ = $val['vo'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$va): $mod = ($i % 2 );++$i;?><dl class="huifu" >

		     <dt><span>回复：<?php echo ($va["reply"]); ?> <span><?php echo (date("Y-m-d H:i:s",$va["time"])); ?></span></span></dt>
          </dl><?php endforeach; endif; else: echo "" ;endif; ?>
         </li><?php endforeach; endif; else: echo "" ;endif; ?>
                <li  class="green bounceInDown nob ly2" style="display:none" >
                                
			<dl>
                     <input type="text" value="<?php echo ($needCheck); ?>" name="check" id="check2" style="display:none;">
                     <input type="text" value="<?php echo ($wecha_id); ?>" name="wecha_id" id="wecha_id2" style="display:none;">
                     <input type="text" value="<?php echo ($token); ?>" name="token" id="token2" style="display:none;">
		     <dt><input name="wxname"  type="text" class="px" id="wxname2" value="" placeholder="请输入您的昵称"></dt>
			 <dt><textarea name="info" class="pxtextarea" style=" height:60px;" id="info2"  placeholder="请输入留言"></textarea></dt>
			<dt><a id="showcard2"  class="submit" href="javascript:void(0)">提交留言</a> </dt>
          </dl>
                  
		</li>
		
		<a  ><h2 class="first first2" style="position: relative;" id="close2">请点击留言</h2></a>
       
      </ul>
    </div>
  </div>

</div>
  
  
<div class="cLine">
<div class="pageNavigator right" align="center">
<div class="pages" style="margin:-10px 0px 10px 0px;"><?php echo ($page); ?></div>
</div>
<div class="clr"></div>
</div>
<script src="<?php echo RES;?>/css/style/js/plugback.js" type="text/javascript" type="text/javascript"></script>
</body>
</html>
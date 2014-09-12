<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<title><?php echo ($Invites['title']); ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="./tpl/Wap/default/common/css/invites/style_1.css?v=11" rel="stylesheet" type="text/css" />
    <script src='./tpl/Wap/default/common/css/invites/placeholder.min.js'></script>
    <script src='./tpl/Wap/default/common/css/invites/jquery-1.8.3.min.js'></script>
    <script src='./tpl/Wap/default/common/css/invites/weiyaoqing.js'></script>
    <script src="./tpl/Wap/default/common/css/invites/d3.v2.min.js"></script>
<style>

text {
    letter-spacing: 1mm
}
path,rect,circle{
    stroke-width:0;
    fill:#E31064;
}

</style>
<script>
function submit1(){
	        	var form1 = document.getElementById("form1");
	        	var username = form1.username.value;
	        	var telphone = form1.telphone.value;
	        	var content = form1.content.value;
				var id = form1.id.value;
				var rdo_go = $('input:radio[name="rdo_go"]:checked').val();
				var type = form1.type.value;
				var token = form1.token.value;
	        	if(username.length<1){
	        		alert("请输入姓名！");
	        		return;
	        	}
	        	if(telphone.length<6){
	        		alert("请输入电话号码！");
	        		return;
	        	}
	        	if(content.length>50){
	        		alert("内容不能大于50个字！");
	        		return;
	        	}
	        	if(content.length<1){
	        		alert("请输入签到内容！");
	        		return;
	        	}
	        	var obj = {
	        		id:	 id,		
					token: token,
	        		username: username,
	        		telphone: telphone,
	        		content: content,
					rdo_go: rdo_go,
					type: type,
	        		action 	: "add"
	        	}
	        	$.post("index.php?g=Wap&m=Invites&a=add", obj,function(result){
				   	alert(result);
				   	form1.reset();

				});
				
	        }
</script>
</head>
<body>
<div class="top"><?php echo ($Invites['title']); ?>    <a href="javascript:window.location.reload();" class="fl back">返回</a>
    </div>
  <div class="main" id="menu">
    <div class="mainContent">
        <div class="indexBg" id='indexBg'>
            <div id='menu_container' style="display:none;">
          <div class="meetingContent meetingContent01"> <a href="javascript:" onClick="$('#menu').fadeOut();$('#invite').fadeIn();">活动<br />邀请</a></div>
          <div class="meetingContent meetingContent02"><a href="javascript:" onClick="$('#menu').fadeOut();$('#registration').fadeIn();">我要<br/>签到</a></div>
          <div class="meetingContent meetingContent03"> <a href="javascript:" onClick="$('#menu').fadeOut();$('#scene').fadeIn();">活动<br />内容</div>
           <div class="meetingContent meetingContent04"><a href="javascript:" onClick="$('#menu').fadeOut();$('#location').fadeIn();">时间<br/>地点</a></div>
            </div>
        </div>
    </div>
  </div>
  
<div class="main main02" id="invite">
    <div class="mainContent">
<div class="subPageH1">活动<br>邀请</div>
      <div class="contentWarp formContent">
               <?php echo ($Invites['brief']); ?>               
					   </div>  
   </div>   
</div>  
  
<div class="main main02" id="registration">
    <div class="mainContent">
<div class="subPageH1">我要<br />签到</div>
<div class="contentWarp formContent">
        <p class="tit">贵宾签到 </p>
          <form action="javascript:;" method="post" id="form1">
        <p class="formP"><input type="text" name="username" class="inputTxt" placeholder="请输入您的姓名"></p>
        <p class="formP"><input type="text" name="telphone" class="inputTxt" placeholder="请输入您的手机号"></p>
        <p class="formP">
		<input type="radio" name="rdo_go" value="1" class="formRadio" checked><label class="font14px">参加</label>  
		<input type="radio" name="rdo_go" value="0" class="formRadio"><label class="font14px">不参加</label>
		</p>
        <p class="formP"><textarea name="content" class="inputTxt formTextarea" placeholder="请输入您的签到内容"></textarea></p>
          <input type="hidden" name="type" id="type" value="<?php echo ($Invites['type']); ?>">
          <input type="hidden" name="token" id="token" value="<?php echo ($token); ?>" />
          <input type="hidden" name="id" id="id" value="<?php echo ($id); ?>">
          <input type="button" class="inputTxt formBtn font14px" onClick="javascript:submit1();" value="确定">
         </form>
        <p></p>
      </div>
 
   </div>   
</div>  

<div class="main main02" id="scene">
    <div class="mainContent">
<div class="subPageH1">活动<br>内容</div>
      <div class="contentWarp formContent">
             <?php echo ($Invites['content']); ?>             
					      </div>  
   </div>   
</div>  

<div class="main main02" id="location">
    <div class="mainContent">
<div class="subPageH1">时间<br>地点</div>
      <div class="contentWarp formContent">
        <p class="" align="center"><?php echo ($Invites['statdate']); ?>           <span id='tixing'>
                <script type="text/javascript">
                    var __qqClockShare = {
                        content: "<?php echo ($Invites['title']); ?>",
                        time: "<?php echo ($Invites['statdate']); ?>",
                        advance: 0,
                        url: "/",
                        icon: "1_1"
                    };
                    document.getElementById('tixing').innerHTML = '<a href="http://qzs.qq.com/snsapp/app/bee/widget/open.htm#content=' + encodeURIComponent(__qqClockShare.content) +'&time=' + encodeURIComponent(__qqClockShare.time) +'&advance=' + __qqClockShare.advance +'&url=' + encodeURIComponent(__qqClockShare.url) + '" target="_blank" style="color:blue;">用QQ提醒我参加</a>';
                </script>
            </span>
            <br />
</p>
          <div id='container' style='width:100%;height:300px;border:#E31064 solid 1px;'></div>
		  <?php echo ($Invites['address']); ?>
       </div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=<?php echo $apikey;?>"></script>
<script type="text/javascript">
    var map = new BMap.Map("container");
    map.enableScrollWheelZoom();

    var x,y;
    var marker = '';

    (function (){
        x = <?php echo ($Invites['lng']); ?>;
        y = <?php echo ($Invites['lat']); ?>;
        map.centerAndZoom(new BMap.Point(x, y), 16);
        map.addControl(new BMap.NavigationControl());

        map.removeOverlay(marker);
        var pt = new BMap.Point(x, y);
        marker = new BMap.Marker(pt);
        map.addOverlay(marker);
    })();
</script>  
   </div>   
</div>  


  
<script>
    function hasSVG(){
        SVG_NS = 'http://www.w3.org/2000/svg';
        return !!document.createElementNS && !!document.createElementNS(SVG_NS, 'svg').createSVGRect;
    }
    if(hasSVG()){
        var svg = d3.select("#indexBg").append("svg").style('width','200px').style('height','200px'),
                pi = Math.PI,
                menu_num=4,
                munu_width_start=100,
                munu_inner_width_start=40,
                munu_width_end = 30,
                munu_inner_width_end = 0,
                munu_btn_r=30;

        function arcFctory(munu_width,munu_inner_width,i){
            return d3.svg.arc()
                    .innerRadius(munu_inner_width)
                    .outerRadius(munu_width)
                    .startAngle(((360/(menu_num*4)+360/(menu_num*2)*(i*2))/360)*2*pi)
                    .endAngle(((360/(menu_num*4)+360/(menu_num*2)*(i*2+1))/360)*2*pi);
        }

        function menuTextContentFactory(i){
            switch(i){
                case 0:
                    return '活动邀请';
                case 1:
                    return '活动内容';
                case 2:
                    return '时间地点';
                case 3:
                    return '我要签到';
            }
        }
        function menuEventFactory(d,i){
            switch(i){
                case 0:
                    $('#menu').fadeOut();$('#invite').fadeIn();
					break;
                case 1:
                    $('#menu').fadeOut();$('#scene').fadeIn();
					break;
                case 2:
                    $('#menu').fadeOut();$('#location').fadeIn()
					;break;
                case 3:
                    $('#menu').fadeOut();$('#registration').fadeIn();
					;break;
            }
        }

        function menu_init(){
            svg.selectAll('path')
                    .data(arcs_end)
                    .enter()
                    .append("path")
                    .attr("d", function(d,i){return d.call();})
                    .attr("id", function(d,i){return 'path'+i;})
                    .attr("transform", "translate(100,100)")
                    .on('click',menuEventFactory);

            svg.selectAll('text')
                    .data(arcs_start)
                    .enter()
                    .append("text")
                    .attr('class','menuItem')
                    .attr("x", 5)
                    .attr("dy", 20)
                    .style('font-size',0)
                    .on('click',menuEventFactory)
                    .append("textPath")
                    .attr("stroke","#ffffff")
                    .attr("xlink:href",function(d,i){return "#path"+i;})
                    .text(function(d,i){return menuTextContentFactory(i);});
        }
        function menu_end(){
            svg.selectAll('path')
                    .data(arcs_start)
                    .transition()
                    .duration(500)
                    .ease('linear')
                    .attr("d", function(d,i){return d.call();})
                    .attr("id", function(d,i){return 'path'+i;})
                    .attr("transform", "translate(100,100)");

            svg.selectAll('text.menuItem')
                    .transition()
                    .duration(500)
                    .style('font-size','14');

            menu.attr('toggle',2);
            circle.attr('toggle',2);
        }
        function menu_start(){
            svg.selectAll('path')
                    .data(arcs_end)
                    .transition()
                    .duration(500)
                    .ease('linear')
                    .attr("d", function(d,i){return d.call();})
                    .attr("id", function(d,i){return 'path'+i;})
                    .attr("transform", "translate(100,100)");

            svg.selectAll('text.menuItem')
                    .transition()
                    .duration(500)
                    .style('font-size','0');

            menu.attr('toggle',1);
            circle.attr('toggle',1);
        }


        var arcs_start = d3.range(menu_num).map(function(d){ return arcFctory(munu_width_start,munu_inner_width_start,d);});

        var arcs_end = [arcFctory(munu_width_end,munu_inner_width_end,1),
            arcFctory(munu_width_end,munu_inner_width_end,2),
            arcFctory(munu_width_end,munu_inner_width_end,3),
            arcFctory(munu_width_end,munu_inner_width_end,0)
        ];

        menu_init();

        var g = svg.append('g').attr('transform','translate(0,0)');

        var circle=g.append('circle')
                .attr('cx',100)
                .attr('cy',100)
                .attr('id','menu')
                .attr('toggle',1)
                .attr('r',munu_btn_r)
        var menu = g.append('text')
                .attr('dx',85)
                .attr('dy',106)
                .attr('toggle',1)
                .style('font-size',14)
                .style('stroke','#ffffff')
                .text('菜单');

        circle.on('click',function(){
            if(d3.select(this).attr('toggle') == 1){
                menu_end();
            }else{
                menu_start();
            }
        });
        menu.on('click',function(){
            if(d3.select(this).attr('toggle') == 1){
                menu_end();
            }else{
                menu_start();
            }
        });
        menu_end();
    }else{
        d3.select('#menu_container').style({'width':'100%','height':'100%','display':'block','background':'url(/tpl/Wap/default/common/images/invites/bg02.jpg) no-repeat'});
    }

</script>
<div style="text-align: center;">
    <p><?php echo ($Invites['copyrite']); ?></p>
</div>

</body>
</html>
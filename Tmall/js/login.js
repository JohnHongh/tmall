//插入主图片
;(function(){
	var $wrap=$('#main .wrapper');
	$.ajax({
		url:"php/login.php",
		dataType:'json'
	}).done(function(data){
			var arr=data;
			$img='<img src=" '+arr[0].url+' ">';
			$wrap.append($img);
		})
		
})();

//切换登录方式
;(function(){
	var $btn1=$('.form-out .change .btn1');//密码
	var $btn2=$('.form-out .change .btn2');//二维码
	var $pass=$('.form-out .pass');//密码登录
	var $erweima=$('.form-out .erweima');
	var $tip1=$('.form-out .tip-1');//密码
	var $tip2=$('.form-out .tip-2');//二维码
	
	var $imgma=$('.erweima .pic');
	var $hover=$('.erweima .pic1');
	
	var $remind=$('.erweima .remind');
	var timer=null;
	
	$btn1.on('click',function(){
		$(this).hide().siblings('a').show();
		$tip2.show().siblings('span').hide();
		$pass.show();
		$erweima.hide();
	})
	$btn2.on('click',function(){
		$(this).hide().siblings('a').show();
		$tip1.show().siblings('span').hide();
		$erweima.show();
		$pass.hide();
	})
	$imgma.hover(function(){
		clearInterval(timer);
		$(this).stop(true).animate({
			left:20
		})
		$hover.stop(true).show(400);
	},function(){
		load();
		$(this).stop(true).animate({
			left:78
		})
		$hover.stop(true).hide();
	})
	//刷新二维码
	function load(){
		timer=setInterval(function(){
			$imgma.hide();
			$remind.show();
		},10000)
	}
	load();
	
	$remind.find('a').on('click',function(){
		$remind.hide();
		$imgma.show();
	})
})();


//登录验证、并存cookie
;(function(){
	//添加cookie的函数
	function addCookie(key,value,day){
		var date=new Date();//创建日期对象
		date.setDate(date.getDate()+day);//过期时间：获取当前的日期+天数，设置给date
		document.cookie=key+'='+encodeURI(value)+';expires='+date;//添加cookie，设置过期时间
	}
	
	var $submit=$('#btn');
	var $oInput=$('input');
	var $tip=$('.pass h3');
	$submit.on('click',function(){
		$username=$oInput.eq(0).val();
		$password=$oInput.eq(1).val();
		
		$.ajax({
			type:"post",
			url:"php/logincheck.php",
			data:{
				name:$username,
				pass:$password
			},
			success:function(sure){
				if(!sure){//为空，代表不匹配，有错误
					$tip.html('用户名或密码错误');
					$tip.css('color','red');
					$oInput.eq(1).val('');
				}else{
					addCookie('Username',$username,7);
					window.location.href='index.html'; //转到首页
				}
			}
		});
	})
	
})();

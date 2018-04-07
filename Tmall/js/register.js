//验证
;(function($){
	var $oInput=$('input');
	var $oEm=$('em');
	var $oI=$('i');
	var $oSpan=$('#span');
	var $oB=$('b');
	var $oStrong=$('#check');
	
	var bstop1=true;//定义初始值不通过
	var bstop2=true;
	var bstop3=true;
	var bstop4=true;
	//用户名
	$oInput.eq(0).on('focus',function(){
		$oInput.eq(0).val('');
		$oInput.eq(0).css('color','black');
		$oEm.eq(0).html('支持中文、字母、数字、"-"、"_"的组合，4-20个字符');
		$oEm.eq(0).css('color','#D1D3D6');
		$oI.eq(0).html('');
	})
		
	
	$oInput.eq(0).on('blur',function(){
		if($oInput.eq(0).val()!=''){
			var reg=new RegExp(/^[\w\-\u4e00-\u9fa5]{2,20}$/,'g');
			var reg1=new RegExp(/^\d+$/,'g');
		    if(reg1.test($oInput.eq(0).val())){
				$oEm.eq(0).html('用户名不能是纯数字');
				$oEm.eq(0).css('color','red');
				bstop1=true;
			}
		    else if(reg.test($oInput.eq(0).val())){
				$oI.eq(0).html('√');
				$oI.eq(0).css('color','green');
				$oEm.eq(0).html('');
				
				//判断用户名是否存在,和后端交互
				var username=$oInput.eq(0).val();
				$.ajax({
					type:'post',
					url:'php/register.php',
					data:{
						name:username
					},
					success:function(sure){
						if(!sure){
							bstop1=false;
						}else{
							$oEm.eq(0).html('该用户名已存在');
							$oEm.eq(0).css('color','red');
							$oI.eq(0).html('');
							bstop1=true;
						}
					}
				});
				
			}else{
				$oEm.eq(0).html('格式错误，仅支持中文、字母、数字、"-"、"_"的组合');
	   			$oEm.eq(0).css('color','red');
	   			bstop1=true;
			}
			
	    }else{
	   		$oInput.eq(0).val('');
	   		$oEm.eq(0).html('您的用户名不能为空');
	   		$oEm.eq(0).css('color','red');
	   		//$oInput.eq(0).css('color','#D1D3D6');
	   		bstop1=true;
	    }
	})
	
	//提示信息
	$oB.eq(0).on('click',function(){
		$oInput.eq(1).focus();
	})
	$oB.eq(1).on('click',function(){
		$oInput.eq(2).focus();
	})
	//密码
	$oInput.eq(1).on('focus',function(){
		$oInput.eq(1).val('');
		$oInput.eq(1).css('color','black');
		$oEm.eq(1).html('建议至少使用字母、数字和符号两种及以上的组合，6-20个字符');
		$oEm.eq(1).css('color','#D1D3D6');
		$oI.eq(1).html('');
		$oB.eq(0).html('');
	})
	$oInput.eq(1).on('blur',function(){
		if($oInput.eq(1).val()!=''){
			var reg=new RegExp(/^[\w\@#$%&*!~+=-]{6,20}$/,'g');
			if(reg.test($oInput.eq(1).val())){
				$oI.eq(1).html('√');
				$oI.eq(1).css('color','green');
				$oEm.eq(1).html('');
				bstop2=false;
				
				var str=$oInput.eq(1).val(); // 判断密码强度
				var level=0;
				var numstop=true;
				var lowerstop=true;
				var upperstop=true;
				var otherstop=true;
				for(var i=0;i<str.length;i++){
					if(str.charCodeAt(i)>=48 && str.charCodeAt(i)<=57){
						if(numstop){
							level++;
							numstop=false;
						}
					}
					else if(str.charCodeAt(i)>=97 && str.charCodeAt(i)<=122){
						if(lowerstop){
							level++;
							lowerstop=false;
						}
					}
					else if(str.charCodeAt(i)>=65 && str.charCodeAt(i)<=90){
						if(upperstop){
							level++;
							upperstop=false;
						}
					}
					else{
						if(otherstop){
							level++;
							otherstop=false;
						}
					}
				}
				switch(level){
					case 1:$oStrong.html('弱');
					       $oStrong.css('color','red');
						   $oEm.eq(1).html('有被盗风险，建议使用字母数字和符号两种及以上组合');
						   $oEm.eq(1).css('color','#D1D3D6');
						   $oI.eq(1).html('√');
						   $oI.eq(1).css('color','green');
						   break;
					case 2:$oStrong.html('中');
					       $oStrong.css('color','orange');
					       $oEm.eq(1).html('安全强度适中，可以使用三种以上组合来提高安全强度');
						   $oEm.eq(1).css('color','#D1D3D6');
						   $oI.eq(1).html('√');
						   $oI.eq(1).css('color','green');
					       break;
					case 3:$oStrong.html('强');
					       $oStrong.css('color','green');
					       $oEm.eq(1).html('您的密码很安全');
						   $oEm.eq(1).css('color','#D1D3D6');
						   $oI.eq(1).html('√');
						   $oI.eq(1).css('color','green');
					       break;
					case 4:$oStrong.html('强');
					       $oStrong.css('color','green');
					       $oEm.eq(1).html('您的密码很安全');
						   $oEm.eq(1).css('color','#D1D3D6');
						   $oI.eq(1).html('√');
						   $oI.eq(1).css('color','green');
						   break;
				}
				
			}else{
				$oEm.eq(1).html('建议至少使用字母、数字和符号两种及以上的组合，6-20个字符');
	   			$oEm.eq(1).css('color','red');
	   			bstop2=true;
			}
			
	    }else{
	   		//$oB.eq(0).html('建议至少使用两种字符组合');
	   		$oEm.eq(1).html('您的密码不能为空');
	   		$oEm.eq(1).css('color','red');
	   		bstop2=true;
	   		//$oInput.eq(1).css('color','#D1D3D6');
	    }
	})
	//确认密码
	$oInput.eq(2).on('focus',function(){
		$oInput.eq(2).val('');
		$oInput.eq(2).css('color','black');
		$oEm.eq(2).html('请再次输入密码');
		$oEm.eq(2).css('color','#D1D3D6');
		$oI.eq(2).html('');
		$oB.eq(1).html('');
	})
	$oInput.eq(2).on('blur',function(){
		if($oInput.eq(2).val()!=''){
			if($oInput.eq(2).val()==$oInput.eq(1).val()){
				$oI.eq(2).html('√');
				$oI.eq(2).css('color','green');
				$oEm.eq(2).html('');
				bstop3=false;
	    	}else{
		   		$oEm.eq(2).html('两次密码输入不一致');
		        $oEm.eq(2).css('color','red');
		        bstop3=true;
	   		}
		}else{
			$oEm.eq(2).html('确认密码不能为空');
			//$oB.eq(1).html('请再次输入密码');
			//$oInput.eq(2).css('color','#D1D3D6');
			$oEm.eq(2).css('color','red');
			bstop3=true;
		}
		
	})
	//手机号码
	$oInput.eq(3).on('focus',function(){
		$oInput.eq(3).val('');
		$oInput.eq(3).css('color','black');
		$oEm.eq(3).html('完成验证后，你可以用该手机登录和找回密码');
		$oEm.eq(3).css('color','#D1D3D6');
		$oI.eq(3).html('');
	})
	$oInput.eq(3).on('blur',function(){
		if($oInput.eq(3).val()!=''){
			var reg=new RegExp(/^[1][3|4|5|7|8]\d{9}$/,'g');
			if(reg.test($oInput.eq(3).val())){
				$oI.eq(3).html('√');
				$oI.eq(3).css('color','green');
				$oEm.eq(3).html('');
				bstop4=false;
			}else{
				$oEm.eq(3).html('格式有误');
	   			$oEm.eq(3).css('color','red');
	   			bstop4=true;
			}
	    }else{
	   		//$oInput.eq(3).val('建议使用常用手机');
	   		$oEm.eq(3).html('手机号码不能为空');
	   		$oEm.eq(3).css('color','red');
	   		bstop4=true;
	   		//$oInput.eq(3).css('color','#D1D3D6');
	    }
	})
	
	//点击提交submit
	$('form').on('submit',function(){
		if(bstop1==true || bstop2==true || bstop3==true || bstop4==true){
			return false;//阻止按钮跳转。
		}
	});
	
})(jQuery);

//弹窗
;(function($){
	var $tanbox=$('#tan_box');
	var $btn=$('.btn-in');
	$body=$('body');
	$(document).ready(function(){
		$tanbox.show();
		$body.css('background','#DDDDDD');
	})
	$btn.on('click',function(){
		$tanbox.hide();
		$body.css('background','');
	})
})(jQuery);

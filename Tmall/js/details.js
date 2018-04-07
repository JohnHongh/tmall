//放大镜
;(function($){
	var $oLi=$('.main-le .list li');
	var $spic=$('.main-le .spic');
	var $bf=$('.main-le .bf');
	var $sf=$('.main-le .sf');
	
	var $lei=$('.main-mid .fenlei dd ul li');
	
	$.ajax({
		url:"php/details.php",
		dataType:'json',
	}).done(function(data){
			var arr=data.ta1;
			//console.log(arr)
			//颜色分类插两张图片
			$lei.eq(0).append('<a href="javascript:;"><img src=" '+arr[5].url+' "></a>');
			$lei.eq(1).append('<a href="javascript:;"><img src=" '+arr[6].url+' "></a>');
			$lei.each(function(i){
				$(this).on('click',function(){
					$(this).css('border','1px solid #000').siblings('li').css('border','');
				})
			})
			//插入放大镜li图片、spic/bpic
			$oLi.each(function(i){
				$simg=$('<a href="javascript:;"><img src=" '+arr[i].url+' "></a>');
				$(this).append($simg);
			})
			$spic.append('<a href="javascript:;"><img src=" '+arr[0].url+' " class="spicimg" sid=" '+arr[0].sid+' "></a>');
			$bf.append('<img src=" '+arr[0].url+' " id="bpic">');
			
			$oLi.hover(function(){
				$(this).css('border','1px solid #000');
			},function(){
				$(this).css('border','');
			})
			
			$spic.hover(function(){ //滑过显示隐藏sf
				$sf.show();
				$bf.show();
			},function(){
				$sf.hide();
				$bf.hide();
			})
			
			var $bpic=$('.main-le .bf #bpic');//ajax异步 必须在创建追加后获取
			
			$sf.on('mousemove',function(e){
				var l=e.pageX-$spic.offset().left-$sf.width()/2; // 求出鼠标在sf的中心点位置
				var t=e.pageY-$spic.offset().top-$sf.height()/2;
				
				if(l<0){  // 限定范围
					l=0;
				}else if(l>=$spic.width()-$sf.width()){
					l=$spic.width()-$sf.width();
				}
				if(t<0){
					t=0;
				}else if(t>=$spic.height()-$sf.height()){
					t=$spic.height()-$sf.height();
				}
				
				$(this).css('left',l+'px');// 给sf赋位置
    			$(this).css('top',t+'px');
    			
				$bpic.css('left',-l*2+'px');
				$bpic.css('top',-t*2+'px');
			})
			
			
			$oLi.each(function(i){
				$(this).on('click',function(i){ //点击li改变图片
					var lisrc=$(this).find('img').attr('src');
					$spic.find('img').attr('src',lisrc);
					$bf.find('img').attr('src',lisrc);
				})
			})
			
		})
})(jQuery);

//购买数量加减
;(function(){
	var $num=$('.purchase .num');
	var number1=$num.html();
	var $add=$('.purchase .icon1');
	var $reduce=$('.purchase .icon2');
	
	$add.on('click',function(){
		number1++;
		$num.html(number1);
	})
	
	$reduce.on('click',function(){
		if(number1>1){
			number1--;
			$num.html(number1);
		}
	})
})();

//侧边栏上下移动
;(function(){
	var $oUl=$('.sideimg');
	var $oLi=$('.sideimg li');
	var $btn1=$('.change .sideicon1');
	var $btn2=$('.change .sideicon2');
	var num=3;
	$.ajax({
		url:"php/details.php",
		dataType:'json'
	}).done(function(data){
		var arr=data.ta2;
		
		$oLi.each(function(i){
			$(this).append('<a href="javascript:;"><img src=" '+arr[i].url+' "></a>');
		})
		
		$btn2.on('click',function(){
			if(num<$oLi.length){
				num++;
				$oUl.stop(true).animate({
					top:-(num-3)*$oLi.height()-38
				})
			}	
		})
		$btn1.on('click',function(){
			if(num>3){
				num--;
				$oUl.stop(true).animate({
					top:-(num-3)*$oLi.height()-38
				})
			}	
		})
	});
})();



























/*侧边栏效果*/
;(function(){
	var $tab=$('.as-left .tab6');
	var $aside=$('#aside');
	$tab.on('click',function(ev){
		$aside.animate({
			right:0
		})
		$tab.css('background','#FF0036');
		ev.stopPropagation();
	});
	
	$(document).on('click',function(ev){
		$aside.animate({
			right:-245
		})
		$tab.css('background','');
	});
	
	$aside.on('click',function(ev){
		ev.stopPropagation();
	})
})();

//回到顶部
;(function(){
	var $backtop=$('#aside .tab9');
	var $fix=$('#top-fix');
	var timer=null;
	var speed=0;
	
	$(window).on('scroll',function(){
		var $distance=$(window).scrollTop();
		if($distance>560){
			$fix.slideDown();
		}else{
			$fix.slideUp();
		}
	})
	
	$backtop.on('click',function(){
		timer=setInterval(function(){
			var $distance=$(window).scrollTop();
			speed=$distance/10;
			$(window).scrollTop($distance-speed);
			if($distance<=0){
				clearInterval(timer);
			}
		},15);
	})
})();
//jsonp下拉提示搜索框
;(function($){
	var $oText=$('.hea-bot .search .text');
	var $oUl=$('#goodslist')
	var $body=$('body');
	
	function tmall(data){
		//console.log(data);
		var arr=data.result;
		var html='';
		
		if(arr.length<10){
			for(var i=0;i<arr.length;i++){
				html+='<li><a href="https://list.tmall.com/search_product.htm?q='+arr[i][0]+'%C4%D0%D0%AC&type=p&vmarket=&spm=875.7931836%2FB.a2227oh.d100&xl=aaa_5&from=mallfp..pc_1_suggest">'+arr[i][0]+'</a></li>';
			}
		}else{
			for(var i=0;i<10;i++){
				html+='<li><a href="https://list.tmall.com/search_product.htm?q='+arr[i][0]+'%C4%D0%D0%AC&type=p&vmarket=&spm=875.7931836%2FB.a2227oh.d100&xl=aaa_5&from=mallfp..pc_1_suggest">'+arr[i][0]+'</a></li>';
			}
		}
		$oUl.html(html);
	}
	
	window.tmall=tmall;
	
	$oText.on('input',function(){
		var $cscript=$('<script></script>');
		$cscript.attr("src","https://suggest.taobao.com/sug?code=utf-8&q="+$oText.val()+"&_ksTS=1522040286002_8842&callback=tmall&area=b2c&code=utf-8&k=1&bucketid=11&src=tmall_pc");
		$body.append($cscript);
	});
	
})(jQuery);

/*二级导航*/
;(function(){
	var $oli=$('.banner .left .li1');
	var $bigerji=$('.banner .left .bigerji1');
	$oli.hover(function(){
		$bigerji.stop(true).slideDown();
	},function(){
		$bigerji.stop(true).slideUp();
	})
})();


//banner图
;(function($){
	var $oLi=$('.banner .img li');
	$.ajax({
		url:"php/indexget.php",
		dataType:'json'
	}).done(
		function(data){
			var arr=data.ta1;
			//console.log(arr);
			for(var i=0;i<arr.length;i++){
				var $imgs=$('<img src="'+arr[i].url+'">');
				$oLi.eq(i).append($imgs);
			}
		})
		
	
	function Lunbo(){
		this.banner=$('.banner');
		this.oLi=$('.banner .img li');
		this.btns=$('.banner ol li');
		this.num=0;// 定义当前滑过按钮的初始索引
		this.timer=null;
	}
	
	Lunbo.prototype.init=function(){
		var that=this;
		this.btns.on('mouseover',function(){
			that.num=$(this).index();
			that.tabswitch();
		})
		
		
		this.timer=setInterval(function(){
			that.num++;
			if(that.num>=6){
				that.num=0;
			}
			that.tabswitch();
		},2000);
		
		this.banner.hover(function(){
			clearInterval(that.timer);
		},function(){
			that.timer=setInterval(function(){
				that.num++;
				if(that.num>=6){
					that.num=0;
				}
				that.tabswitch();
			},2000);
		});
	}
	
	Lunbo.prototype.tabswitch=function(){
		this.btns.eq(this.num).addClass('active').siblings('li').removeClass('active');
		for(var i=0;i<this.btns.length;i++){
			this.oLi.eq(i).css('opacity','0');
		}
		this.oLi.eq(this.num).css('opacity','1');
	}

	window.Lunbo=Lunbo;
})(jQuery);


/*活动区*/
;(function($){
	$act=$('.activity');
	$a=$('.activity a');
	
	$.ajax({
		url:"php/indexget.php",
		dataType:'json'
	}).done(
		function(data){
			var arr=data.ta2;
			for(var i=0;i<arr.length;i++){
				var $imgs=$('<img src="'+arr[i].url+'">');
				$a.eq(i).append($imgs);
			}
			$a.each(function(i){
				$a.eq(i).hover(function(){
					$a.eq(i).find('img').addClass('active');
				},function(){
					$a.eq(i).find('img').removeClass('active');
				});
			})
			
		})

})(jQuery);

//品牌
;(function(){
	 var $lebot=$('.pinpai .le-bot');
	 var $cenbot=$('.pinpai .cen-bot');
	 var $ribot=$('.pinpai .ri-bot');
	
	$.ajax({
		url:"php/indexget.php",
		dataType:'json'
	}).done(
		function(data){
			var arr=data.ta3;
			var $as1=$('<a href="#"><img src="'+arr[0].url+'"></a>');
			$lebot.append($as1);
			var $as2=$('<a href="#"><img src="'+arr[1].url+'"></a>');
			$cenbot.append($as2);
			var $as3=$('<a href="#"><img src="'+arr[2].url+'"></a>');
			$ribot.append($as3);
		})	
})();

/*logo区*/
;(function(){
	var $oLi=$('.logoimg li');
	$div='<div class="cover"><a href="#"><h5>优惠券  ￥100</h5><p>点击进入</p></a></div>';
	$oLi.not('.load').each(function() {
		$(this).append($div);
	});	
})();

/*天猫超市/国际*/
;(function(){
	var $biga1=$('.tmallmarket .bot-le .le1');
	var $biga2=$('.tmallmarket .guoji-le .le2');
	var $biga3=$('.tmallmarket .guoji-le .le3');
	var $bigerji1=$('.bigerji1 .big-ri');
	var $tabimg1=$('.tmallmarket .ad-img1');
	var $tabimg2=$('.tmallmarket .ad-img2');
	
	var $tab=$('.tab');
	var $span=$('.tab .tab-top span');
	var $div=$('.tab .ad');
	var timer=null;
	var num=0;
	var leng=$span.length;
	
	$.ajax({
		url:"php/indexget.php",
		dataType:'json'
	}).done(
		function(data){
			var arr=data.ta4;
			var $as1=$('<img src="'+arr[0].url+'">');
			$biga1.append($as1);
			var $as2=$('<img src="'+arr[3].url+'">');
			$biga2.append($as2);
			var $as3=$('<img src="'+arr[4].url+'">');
			$biga3.append($as3);
			var $erji1=$('<img src="'+arr[5].url+'">');
			$bigerji1.append($erji1);
			
			var $tab1=$('<img src="'+arr[1].url+'">');
			$tabimg1.append($tab1);
			var $tab2=$('<img src="'+arr[2].url+'">');
			$tabimg2.append($tab2);
			
			$span.eq(0).addClass('act');
			
			$span.on('mouseover',function(){
				$(this).addClass('act').siblings('span').removeClass('act');
				num=$(this).index();
				$div.eq(num).show().siblings('.ad').hide();
			});
			
			function inter(){
				timer=setInterval(function(){
					num++;
					if(num>leng){
						num=0;
					}
					$span.eq(num).addClass('act').siblings('span').removeClass('act');
					$div.eq(num).show().siblings('.ad').hide();
				},1500);
			}
			inter();
			
			$tab.on('mouseover',function(){
				clearInterval(timer);
			})
			$tab.on('mouseout',function(){
				inter();
			})
			
		})
})();
// 各个小商品图
;(function(){
	var $goods=$('.tmallmarket .img');
	$.ajax({
		url:"php/indexget.php",
		dataType:'json'
	}).done(
		function(data){
			var arr=data.ta5;
			$goods.each(function(i){
				var $div=$('<div><img src="'+arr[i].url+'"><p>'+arr[i].title+'</p><h5>'+'￥'+arr[i].price+'</h5></div>');
				$goods.eq(i).append($div);
			})	
		})
})();
//上下间隔的图
;(function(){
	var $tu=$('#content .tu');
	$.ajax({
		url:"php/indexget.php",
		dataType:'json'
	}).done(
		function(data){
			var arr=data.ta6;
			$tu.each(function(i){
				var $img=$('<a href="#"><img src="' +arr[i].url+ ' "></a>');
				$tu.eq(i).append($img);
			})	
		})
})();
//模块的big广告图
;(function(){
	var $bigimg=$('.model .mo-bot .mo-bot-le');
	$.ajax({
		url:"php/indexget.php",
		dataType:'json'
	}).done(
		function(data){
			var arr=data.ta7;
			$bigimg.each(function(i){
				var $big=$('<a href="#"><img src=" '+arr[i].url+' "></a>');
				$bigimg.eq(i).append($big);
			})
			$bigimg.each(function(i){
				$bigimg.eq(i).hover(function(){
					$bigimg.eq(i).find('img').addClass('active');
				},function(){
					$bigimg.eq(i).find('img').removeClass('active');
				});
			})
		})
})();
//模块的商品图
;(function(){
	var $smallimg=$('#content .model .bot-ri li');
	$.ajax({
		url:"php/indexget.php",
		dataType:'json'
	}).done(
		function(data){
			var arr=data.ta8;
			$smallimg.each(function(i){
				var $small=$('<a href="#"><img src="'+arr[i].url+'"><p>'+arr[i].title+'</p><h5>'+'￥'+arr[i].price+'</h5></a>');
				$smallimg.eq(i).append($small);
			})
			
			$smallimg.each(function(i){
				$smallimg.eq(i).hover(function(){
					$smallimg.eq(i).find('img').addClass('active');
				},function(){
					$smallimg.eq(i).find('img').removeClass('active');
				});
			})
		})
})();
//猜你喜欢
;(function(){
	var $oUl=$('.big-youlike ul');
	var $cLi='';
	//懒加载
	var bstop=true;//请求一次
	$(window).on('scroll load',function(){
		var $scrolltop=$(window).scrollTop();//滚轮的距离
		var $clientH=$(window).height();//可视区的高
		$offset=$oUl.offset().top;//盒子top值
		if($offset<=$scrolltop+$clientH){
			if(bstop){
				$.ajax({
					url:"php/indexget.php",
					dataType:'json'
				}).done(
					function(data){
						var arr=data.ta9;
						$.each(arr,function(i){
							$cLi=$('<li><a href="#"><img src="'+arr[i].url+'"><p>'+arr[i].title+'</p><h5>'+'￥'+arr[i].price+'</h5></a></li>');
							$oUl.append($cLi);
							bstop=false;
						})
				})
			}
		}

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


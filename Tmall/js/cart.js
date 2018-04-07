//插入最下方li的结构
;(function(){
	var $oDiv=$('#tab .big');
	var $goodpic=$('.info .in-le a')
	
	$.ajax({
		url:"php/cart.php",
		dataType:'json'
	}).done(function(data){
		var arr=data;
		
		var $cLi1='<li><a href="#"><img src=" '+arr[1].url+' "><p>'+arr[1].title+'</p><h5>￥'+arr[1].price+'</h5></a></li>';
		var $cLi2='<li><a href="#"><img src=" '+arr[2].url+' "><p>'+arr[2].title+'</p><h5>￥'+arr[2].price+'</h5></a></li>';
		var $cLi3='<li><a href="#"><img src=" '+arr[3].url+' "><p>'+arr[3].title+'</p><h5>￥'+arr[3].price+'</h5></a></li>';
		var $cLi4='<li><a href="#"><img src=" '+arr[4].url+' "><p>'+arr[4].title+'</p><h5>￥'+arr[4].price+'</h5></a></li>';
		$oDiv.append($cLi1);
		$oDiv.append($cLi2);
		$oDiv.append($cLi3);
		$oDiv.append($cLi4);
	})
	
})();


//如果商品存在于购物车数量累加，否则创建商品信息进购物车,主要是利用数组进行判断。
var sidarr=[];//存放商品编号（sid）
var numarr=[];//存放商品数量

//获取对应的cookie,转换成对应的数组
function cookieToArray(){
	if(getCookie('cartsid')){
		sidarr=getCookie('cartsid').split(',');//将cookie值通过逗号拆分为数组。
	}else{
		sidarr=[];
	}
	
	if(getCookie('cartnum')){//存放数量
		numarr=getCookie('cartnum').split(',');
	}else{
		numarr=[];
	}
}

//如果details页面有存下cookie，就获取
if(getCookie('cartsid') && getCookie('cartnum')){
	var s=getCookie('cartsid').split(',');
	var n=getCookie('cartnum').split(',');
	for(var i=0;i<s.length;i++){
		//console.log(s[i],n[i])
		createcart(s[i],n[i]);//调用创建、追加函数
	}
}
	
//通过前面获取的sid创建商品列表
function createcart(sid,num){
	$.ajax({
		url:"php/cart.php",
		dataType:'json',
		async:false
	}).done(function(data){
		for(var i=0;i<data.length;i++){
			if(sid-0==data[i].sid-0){//字符串类型，转换成number类型
				var $clone=$('.every').clone(true);//复制已写好存在的模板
				//将对应sid的数据库里的信息添加到复制好的列表中
				$clone.find('.info .in-le a').find('img').attr('src',data[i].url);//改变图片URL
				$clone.find('.info .in-le a').find('img').attr('sid',data[i].sid);//添加图片sid
				$clone.find('.info .in-ri p').html(data[i].title);//标题
				$clone.find('.price span').html(data[i].price);//价格
				$clone.find('.num input').val(num);//数量是details传过来的数量
				//计算价格
				var $jg=parseFloat($clone.find('.price span').html());
				$clone.find('.true span').html(($jg*num).toFixed(2));//将乘数量后的总价赋值进去
				$clone.css('display','block');//模板是隐藏的，克隆后要显示
				$('.goods').append($clone);
				
				empty();//追加后直接运行，去除空购物车
				totalprice();//追加后结算总价
			}
		}
	});
}

//如果添加了商品，创建了商品列表，空购物车要消失，如果没有添加，则出现
function empty(){
	if(getCookie('cartsid')){
		$('#content').hide();
	}else{
		$('#content').show();
	}
}
empty();

//计算总价
function totalprice(){
	var total=0;
	var count=0;
	$('.every:visible').each(function(){//遍历显示的，隐藏的模板就不用遍历了
		if ($(this).find('input:checkbox').is(':checked')){
			total+=parseFloat($(this).find('.true span').html());
			count+=parseInt($(this).find('.num input').val());
		}
	});
	$('.jiesuan span strong').html(total.toFixed(2));
	$('.jiesuan span em').html(count);
}
totalprice();


//删除一行或者全部的cookie值。 (必须删除cookie，不然清除不了)
function delgoodslist(sid,sidarray){//sid 图片id    sidarray：存放id的数组
	var arr=[];//定义一个空数组
	for(var i=0;i<sidarray.length;i++){//传入存放id的数组
		if(sid!=sidarray[i]){//如果当前传入的id不等于数组的,单独存储出来(也就是排除了需要删除的sid)
			arr.push(sidarray[i]);//arr存放的就是不会删除的id.
		}
	}
	numarr.splice(sidarray.indexOf(sid),1);//数量的数组进行截取删除，（改变原数组）
	sidarr=arr;//保留的id存放到cookie里面去。
	addCookie('cartsid',sidarr.toString(),7);//删除后的sid
	addCookie('cartnum',numarr.toString(),7);//删除后的数量
}

//删除一个商品
$('.every').find('.del .delete').on('click',function(){
	cookieToArray();//将cookie转数组
	$(this).parents('.every').remove();//删除一行。
	//console.log(typeof $(this).parents('.every').find('img').attr('sid')) //string
	delgoodslist(Number($(this).parents('.every').find('img').attr('sid')),sidarr);//cookie删除目标。
	totalprice();
});
//删除全部商品
var $kong=$('#content');
$('.checkall .delall a').on('click',function(){
	$('.every:visible').each(function(){
		if($(this).find('input:checkbox').is(':checked')){
			$(this).remove();
			delgoodslist(Number($(this).find('img').attr('sid')),sidarr);
		}
	});
	totalprice();
	$kong.css('display','block');
});



//全选
$('.checkall input').on('change',function(){//作用于全选按钮
	if($(this).prop('checked')){
		$('.every:visible').find('input:checkbox').prop('checked',true);
	}else{
		$('.every:visible').find('input:checkbox').prop('checked',false);
	}
	$('.checkall input').prop('checked',$(this).prop('checked'));
	totalprice();
});


var $inputs=$('.every:visible').find('input:checkbox');//作用于每一个单个按钮
console.log($inputs.length)
$('.every:visible').find('input:checkbox').on('change',function(){
	if($('.every:visible').find('input:checked').length==$inputs.length){
		$('.checkall input').prop('checked',true);
	}else{
		$('.checkall input').prop('checked',false);
	}
	totalprice();
});


//改变数量++
$('.num .up').on('click',function(){
	var $count=$(this).parents('.every').find('.num input').val();
	$count++;
	if($count>=99){
		$count=99;
	}
	$(this).parents('.every').find('.num input').val($count);
	$(this).parents('.every').find('.true').find('span').html(singlegoodsprice($(this)));
	totalprice();
	setcookie($(this));
	
});


//改变数量--
$('.num .down').on('click',function(){
	var $count=$(this).parents('.every').find('.num input').val();
	$count--;
	if($count<=1){
		$count=1;
	}
	$(this).parents('.every').find('.num input').val($count);
	$(this).parents('.every').find('.true').find('span').html(singlegoodsprice($(this)));
	totalprice();
	setcookie($(this));
});

//输入改变数量
$('.num input').on('input',function(){
	var $reg=/^\d+$/g;//只能输入数字
	var $value=parseInt($(this).val());
	if($reg.test($value)){
		if($value>=99){
			$(this).val(99);
		}else if($value<=0){
			$(this).val(1);
		}else{
			$(this).val($value);
		}
	}else{
		$(this).val(1);
	}
	$(this).parents('.every').find('.true').find('span').html(singlegoodsprice($(this)));
	totalprice();
	setcookie($(this));
});

//计算单个商品的价格
function singlegoodsprice(row){
	var $dj=parseFloat(row.parents('.every').find('.price').find('span').html());
	var $cnum=parseInt(row.parents('.every').find('.num input').val());
	return ($dj*$cnum).toFixed(2);
}


//将改变后的数量的值存放到cookie
function setcookie(obj){
	cookieToArray();//cookie的字符串转换为数组
	var $index=obj.parents('.every').find('img').attr('sid');
	numarr[sidarr.indexOf($index)]=obj.parents('.every').find('.num input').val();
	addCookie('cartnum',numarr.toString(),7);
}
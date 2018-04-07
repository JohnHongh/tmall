<?php
	//后端从数据库里拿出文件

	require 'connect.php';// 引入连接数据库文件
	
	
	//第一个表
	$query1='select * from banner';//查询数据库下面表格
	$result1=mysql_query($query1);// 返回记录集
	//echo $result; //Resource id #5
	$arr1=array();
	for($i=0;$i<mysql_num_rows($result1);$i++){
		$arr1[$i]=mysql_fetch_array($result1,MYSQL_ASSOC); // 将获取的数组放在自定义空数组中，变成二维数组
	}  // 只需要关联的内容
	
	//echo json_encode($arr1);//转为json格式字符串
	
	//第二个表
	$query2='select * from activity';
	$result2=mysql_query($query2);
	$arr2=array();
	for($i=0;$i<mysql_num_rows($result2);$i++){
		$arr2[$i]=mysql_fetch_array($result2,MYSQL_ASSOC);
	}  
	
	//第三个表
	$query3='select * from pinpai';
	$result3=mysql_query($query3);
	$arr3=array();
	for($i=0;$i<mysql_num_rows($result3);$i++){
		$arr3[$i]=mysql_fetch_array($result3,MYSQL_ASSOC);
	}  
	//第四个表
	$query4='select * from market';
	$result4=mysql_query($query4);
	$arr4=array();
	for($i=0;$i<mysql_num_rows($result4);$i++){
		$arr4[$i]=mysql_fetch_array($result4,MYSQL_ASSOC);
	}  
	//第五个表
	$query5='select * from nation';
	$result5=mysql_query($query5);
	$arr5=array();
	for($i=0;$i<mysql_num_rows($result5);$i++){
		$arr5[$i]=mysql_fetch_array($result5,MYSQL_ASSOC);
	}  
	//第六个表
	$query6='select * from topandbot';
	$result6=mysql_query($query6);
	$arr6=array();
	for($i=0;$i<mysql_num_rows($result6);$i++){
		$arr6[$i]=mysql_fetch_array($result6,MYSQL_ASSOC);
	}  
	//第七个表
	$query7='select * from modelbig';
	$result7=mysql_query($query7);
	$arr7=array();
	for($i=0;$i<mysql_num_rows($result7);$i++){
		$arr7[$i]=mysql_fetch_array($result7,MYSQL_ASSOC);
	}  
	
	//第八个表
	$query8='select * from modelsmall';
	$result8=mysql_query($query8);
	$arr8=array();
	for($i=0;$i<mysql_num_rows($result8);$i++){
		$arr8[$i]=mysql_fetch_array($result8,MYSQL_ASSOC);
	}  
	//第九个表
	$query9='select * from youlike';
	$result9=mysql_query($query9);
	$arr9=array();
	for($i=0;$i<mysql_num_rows($result9);$i++){
		$arr9[$i]=mysql_fetch_array($result9,MYSQL_ASSOC);
	} 
	
	class Tables{
		
	}
	$m=new Tables(); //实例对象
	
	$m->ta1=$arr1;
	$m->ta2=$arr2;
	$m->ta3=$arr3;
	$m->ta4=$arr4;
	$m->ta5=$arr5;
	$m->ta6=$arr6;
	$m->ta7=$arr7;
	$m->ta8=$arr8;
	$m->ta9=$arr9;
	
	echo json_encode($m);
?>
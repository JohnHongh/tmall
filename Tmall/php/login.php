<?php
	require 'connect.php';// 引入连接数据库文件
	
	
	//第一个表 (结构图片)
	$query1='select * from login';//查询数据库下面表格
	$result1=mysql_query($query1);// 返回记录集
	//echo $result; //Resource id #5
	$arr1=array();
	for($i=0;$i<mysql_num_rows($result1);$i++){
		$arr1[$i]=mysql_fetch_array($result1,MYSQL_ASSOC); // 将获取的数组放在自定义空数组中，变成二维数组
	}  // 只需要关联的内容
	
	echo json_encode($arr1);//转为json格式字符串
	
?>
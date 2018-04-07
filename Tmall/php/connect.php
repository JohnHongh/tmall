<?php
	//连接数据库的公用文件(都可以使用，改数据库名就可以)
	
	header('content-type:text/html;charset=utf-8'); // 兼容中文
	$conn=mysql_connect('localhost','root','');
	if(!$conn){
		die("数据库连接错误：".mysql_error());
	}
	
	mysql_select_db('tmall');//连接数据库
	mysql_query('SET NAMES UTF8'); //设置字符集
?>
<?php
	require 'connect.php';// 引入连接数据库文件
	
	//登录的验证
	if(isset($_POST['name'])){//前端ajax传输过来的input输入框的值
		$username=$_POST['name'];
		$password=md5($_POST['pass']);
	}else{
		exit('非法操作');
	}
	
	$query="select * from user where username='$username' and password='$password'";
	$result=mysql_query($query);
	
	if(mysql_fetch_array($result)){
		echo true;
	}else{
		echo false;
	}
?>
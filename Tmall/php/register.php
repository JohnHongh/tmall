<?php
	require "connect.php";//引入数据库连接的文件
	if(isset($_POST['name']) || isset($_POST['submit'])){
		$username=@$_POST['name'];
	}else{
		exit('非法操作');
	}
	
	
	$query="select * from user where username='$username' ";
	$result=mysql_query($query);
	
	if(mysql_fetch_array($result)){//如果有值代表用户名存在。
		echo true;//有重复
	}else{
		echo false;//没有重复
	}
	
	if(isset($_POST['submit']) && $_POST['submit']=="立即注册"){
		$user=$_POST['username'];//username：表单的name属性值
		$pass=md5($_POST['password']);
		$phone=$_POST['phone'];
		$query="insert user(username,password,phone) values('$user','$pass','$phone')";
		mysql_query($query);
		header('location:../login.html');//成功后跳转到login页面
	}
?>
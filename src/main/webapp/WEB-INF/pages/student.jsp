<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<link rel="stylesheet" type="text/css" href="css/leftMenu.css" />
<title>个人信息</title>
</head>
<body>
	<div class="leftMenu">
		<div class="accordion" id="accordion2">
			<div class="accordion-group">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion2" href="#collapseOne"> <span>个人中心</span>
					</a>
				</div>
				<div id="collapseOne" class="accordion-body collapse in">
					<div class="accordion-inner">
						<a href="studentUpdate"><span>修改个人信息</span></a>
					</div>
					<div class="accordion-inner">
						<a href="studentUpdatePassword"><span>修改密码</span></a>
					</div>
					<div class="accordion-inner">
						<a href="annex_studentScanSubMessage"><span>查看留言</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="rightContent">
		<div class="container">
			<p class="lead">用户基本信息</p>
			<table class="">
				<p>
					<span>ID：</span>
					<s:property value="#session.user.userId" />
				</p>
				<p>
					<span>用户名：</span>
					<s:property value="#session.user.userName" />
				</p>
				<p>
					<span>性别：</span>
					<s:property value="#session.user.sex" />
				</p>
				<p>
					<span>邮箱：</span>
					<s:property value="#session.user.email" />
				</p>
				<p>
					<span>电话：</span>
					<s:property value="#session.user.phone" />
				</p>
				<p>
					<span>地址：</span>
					<s:property value="#session.user.address" />
				</p>
				<p>
					<span>职业：</span>
					<s:property value="#session.user.vocation" />
				</p>
				<p>
					<span>状态：</span>
					<s:property value="#session.user.status" />
				</p>
				<p>
					<span>简介：</span>
					<s:property value="#session.user.intro" />
				</p>
			</div>
		</div>
	</div>
</body>
</html>
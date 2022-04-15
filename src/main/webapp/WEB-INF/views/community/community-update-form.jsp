<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec"  uri="http://www.springframework.org/security/tags"%>
<sec:authentication property="principal.userId" var="userId"/>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="ThemeStarz">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css"
	type="text/css">
<link rel="stylesheet" href="assets/fonts/font-awesome.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/selectize.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/user.css">

<title>Register Items</title>

</head>
<body>
	<div class="page sub-page">
		<!--*********************************************************************************************************-->
		<!--************ HERO ***************************************************************************************-->
		<!--*********************************************************************************************************-->
		<header class="hero">
			<div class="hero-wrapper">
				<!--============ Main Navigation ====================================================================-->
				<div class="main-navigation">
					<div class="container">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Pages</a></li>
							<li class="breadcrumb-item active">Submit</li>
						</ol>
						<!--end breadcrumb-->
					</div>
					<!--end container-->
				</div>
				<!--============ End Main Navigation ================================================================-->
				<!--============ Page Title =========================================================================-->
				<div class="page-title">
					<div class="container">
						<h1>Edit Post</h1>
					</div>
					<!--end container-->
				</div>
				<!--============ End Page Title =====================================================================-->
				<div class="background"></div>
				<!--end background-->
			</div>
			<!--end hero-wrapper-->
		</header>
		<!--end hero-->

		<!--*********************************************************************************************************-->
		<!--************ CONTENT ************************************************************************************-->
		<!--*********************************************************************************************************-->
		<section class="content">

			<section class="block">
				<div class="container">
					<form class="form form-submit" action="updateCommunity" method="post">
					<input type="hidden" name="communityId" value="${communityData.communityId }">
					 <sec:csrfInput/>
						<section style="margin-bottom: 0px">
							<!-- ADDITIONAL DETAILS -->
							<div class="form-group">
								<textarea name="communityContent" id="communityContent"
									class="form-control" rows="10">${communityData.communityContent }</textarea>
							</div>
							<!--end form-group-->
						</section>
						<section class="clearfix">
							<div class="form-group">
								<button type="submit"
									class="btn btn-primary large icon float-right">
									Done<i class="fa fa-chevron-right"></i>
								</button>
							</div>
						</section>
					</form>
					<!--end form-submit-->
				</div>
				<!--end container-->
			</section>
			<!--end block-->
		</section>
		<!--end content-->
	</div>
	<!--end page-->
</body>
</html>

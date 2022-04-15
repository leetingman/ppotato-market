<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="ThemeStarz">

<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="/assets/fonts/font-awesome.css" type="text/css">
<link rel="stylesheet" href="/assets/css/selectize.css" type="text/css">
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/user.css">

<title>home</title>

</head>
<body>
	<section class="block">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
					<div id="container_border" style="background-color:#f7fcf9;">
						<form class="form clearfix" action="/login" method="post">
						<sec:csrfInput/><%-- csrf 토큰 --%>
							<div style="text-align: center; " class="form-group">
								<!-- <img style="width: 180px;" src="assets/img/미치광이브로콜리.PNG"> -->
								<img style="width: 180px;" src="/assets/img/couchcotato1.png">
							</div>
							<div class="form-group">
								<input name="id" type="text"
									placeholder="ID" class="form-control"
									id="login_id" required>
							</div>
							<!--end form-group-->
							<div class="form-group">
								<input name="password" type="password" placeholder="PASSWORD"
									class="form-control" id="login_password" required>
							</div>
							<!--end form-group-->
							<button type="submit" class="btn btn-primary2 width-100"
								style="font-size: 1.3rem;">Sign in</button>  
						</form>
						<hr>
						<!--end form-group-->
						<div class="form-group">
							<button type="submit" class="btn btn-primary width-100"
								style="border: none; background-color: yellow; color: brown; font-size: 1.3rem;">
								<i class="fa fa-comment"></i> Continue with KakaoTalk
							</button>
						</div>
						<div style="text-align: center; font-size: 1.3rem;">
							<a href="/guest/findIdByTelForm">ID</a> / <a href="#">Forgot your password?</a>
						</div>
					</div>
					<hr>
					<div>
						<button type="button" class="btn btn-primary2 width-100" style="font-size: 1.3rem;">
							new customer? <a href="/guest/registerForm" style="font-weight: bold;">Sign up</a>
						</button>
					</div>
					<br>
					<div style="text-align: center; font-size: 1.3rem;">
						<a href="#">download app.</a>
					</div>
				</div>
				<!--end col-md-6-->
			</div>
			<!--end row-->
		</div>
		<!--end container-->
	</section>
</body>
</html>

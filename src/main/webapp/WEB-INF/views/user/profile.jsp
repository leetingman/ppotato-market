<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="ThemeStarz">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css"
	type="text/css">
<link rel="stylesheet" href="assets/fonts/font-awesome.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/selectize.css" type="text/css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/user.css">
<sec:authentication property="principal.userId" var="userId" />

<title>Craigs - Easy Buy & Sell Listing HTML Template</title>

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
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Library</a></li>
							<li class="breadcrumb-item active">Data</li>
						</ol>
						<!--end breadcrumb-->
					</div>
					<!--end container-->
				</div>
				<!--============ End Main Navigation ================================================================-->
				<!--============ Page Title =========================================================================-->
				<div class="page-title">
					<div class="container">
						<h1>My Profile</h1>
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
					<div class="row">
						<div class="col-md-3">
							<%@ include file="sidebar.jsp"%>
						</div>
						<!--end col-md-3-->
						<div class="col-md-9">
							<form class="form">
								<div class="row">
									<div class="col-md-12">
										<section id="content">
											<!-- Author -->
											<section id="user-profile">
												<div class="space-between">
													<div>
														<h2 id="nickname">${user.userId}</h2>
														<span style="padding-left: 80px;" id="region_name">${user.userAddress }</span>
													</div>
													<div id="user-profile-right">
														<ul id="profile-detail">
															<li class="profile-detail-title"><span
																class="fa fa-heart-o"></span> ratings <span
																class="profile-detail-count">100%</span></li>
															<li class="profile-detail-title"><span
																class="fa fa-comment-o"></span> answerd questions <span
																class="profile-detail-count">100 %</span></li>
														</ul>
														<dl id="temperature-wrap">
															<!-- <dt>매너온도</dt> -->
															<dd class="text-color-04 ">
																39.7 <span>°C</span>
															</dd>
														</dl>
														<div class="meters">
															<div class=" bar bar-color-04" style="width: 40%;"></div>
														</div>
														<div class=" face face-04"></div>
													</div>
													<div id="profile-image">
														<img alt="hola17"
															src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-7e50c459a71e0e88c474406a45bbbdce8a3bf2ed4f2efcae59a064e39ea9ff30.png">
													</div>
												</div>
											</section>
											<!--============ End Author ======================================================================-->

											<div id="user-records-detail">
												<section id="user-filter">
													<ul>
														<li><a class="active" href="/u/VlqYm7Wj8AG0B6G9">See
																My items</a></li>
														<li><a class="" href="#">Seller feedback</a></li>
														
													</ul>
												</section>

												<section id="user-records" class="user-articles"
													data-total-page="1" data-current-page="1">
													<section class="cards-wrap">
														
														<c:choose>
															<c:when test="${not empty items}">
																<c:forEach items="${items}" var="item"
																	varStatus="status">
																	<article class="card ">
																		<a class="card-link " data-event-label="200980299"
																			href="/articles/200980299">
																			<div class="card-photo ">
																				<img alt="돌전후아이옷1(잠바, 스웨터, 티, 후드티)"
																					src="assets/upload/${imageList[status.index].imageName}">
																			</div>
																			<div class="card-desc">
																				<h2 class="card-title">${item.itemTitle }</h2>
																				<div class="card-price ">price: ${item.itemPrice }$</div>
																				<div class="card-region-name">${user.userId }</div>
																				<div class="card-counts">
																					<span>Hits ${item.itemHit }</span> 
																				</div>
																			</div>
																		</a>
																	</article>
																</c:forEach>
															</c:when>
															<c:otherwise>
            										 			  No exact matches found
              												</c:otherwise>
														</c:choose>
														
													</section>
												</section>
												<!--============ End Items ======================================================================-->
											</div>
											<div id="loading" style="display: none;">
												<div class="animation"></div>
											</div>
										</section>
									</div>
									<!--end col-md-8-->

									<!--end col-md-3-->
								</div>
							</form>
						</div>
					</div>
					<!--end row-->
				</div>
				<!--end container-->
			</section>
			<!--end block-->
		</section>
		<!--end content-->

		<!--*********************************************************************************************************-->
		<!--************ FOOTER *************************************************************************************-->
		<!--*********************************************************************************************************-->
		<footer class="footer">
			<div class="wrapper">
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<a href="#" class="brand"> <img src="assets/img/logo.png"
								alt="">
							</a>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Ut nec tincidunt arcu, sit amet fermentum sem. Class aptent
								taciti sociosqu ad litora torquent per conubia nostra.</p>
						</div>
						<!--end col-md-5-->
						<div class="col-md-3">
							<h2>Navigation</h2>
							<div class="row">
								<div class="col-md-6 col-sm-6">
									<nav>
										<ul class="list-unstyled">
											<li><a href="#">Home</a></li>
											<li><a href="#">Listing</a></li>
											<li><a href="#">Pages</a></li>
											<li><a href="#">Extras</a></li>
											<li><a href="#">Contact</a></li>
											<li><a href="#">Submit Ad</a></li>
										</ul>
									</nav>
								</div>
								<div class="col-md-6 col-sm-6">
									<nav>
										<ul class="list-unstyled">
											<li><a href="#">My Ads</a></li>
											<li><a href="#">Sign In</a></li>
											<li><a href="#">Register</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
						<!--end col-md-3-->
						<div class="col-md-4">
							<h2>Contact</h2>
							<address>
								<figure>
									124 Abia Martin Drive
									<br> New York, NY 10011
								</figure>
								<br> <strong>Email:</strong> <a href="#">hello@example.com</a>
								<br> <strong>Skype: </strong> Craigs <br> <br> <a
									href="contact.html"
									class="btn btn-primary text-caps btn-framed">Contact Us</a>
							</address>
						</div>
						<!--end col-md-4-->
					</div>
					<!--end row-->
				</div>
				<div class="background">
					<div class="background-image original-size">
						<img src="assets/img/footer-background-icons.jpg" alt="">
					</div>
					<!--end background-image-->
				</div>
				<!--end background-->
			</div>
		</footer>
		<!--end footer-->
	</div>
	<!--end page-->
</body>
</html>

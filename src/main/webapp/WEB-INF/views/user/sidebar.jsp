<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<sec:authentication property="principal.userId" var="headeruserId" />
	
	<nav class="nav flex-column side-nav">
		<a class="nav-link active icon" href="profile?userId=${headeruserId }"> <i
			class="fa fa-user"></i>Your profiles
		</a> <a class="nav-link icon" href="soldItems?userId=${headeruserId }"> <i class="fa fa-check"></i>Your Solded Lists
		</a>  <a class="nav-link icon" href="bookmarks?userId=${headeruserId }"> <i class="fa fa-heart"></i>Your Wishlist
		</a> <a class="nav-link icon" href="profileUpdateForm"> <i class="fa fa-child"></i>Edit Profiles
		</a> <a class="nav-link icon" href="addressUpdateForm"> <i
			class="fa fa-child"></i>set your Location
		</a> <a class="nav-link icon" href="passwordUpdateForm"> <i
			class="fa fa-child"></i>Edit Password <a></a>
	</nav>

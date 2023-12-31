<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>Product List</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<!-- <link rel="stylesheet" type="text/css" href="/resources/vendor/animate/animate.css"> -->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<!-- 	<link rel="stylesheet" type="text/css" href="/resources/vendor/animsition/css/animsition.min.css"> -->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="/resources/css/admin.css">
<link rel="stylesheet" type="text/css" href="/resources/css/search.css">
<link rel="stylesheet" type="text/css" href="/resources/css/productList.css">
<link rel="stylesheet" type="text/css" href="/resources/css/cart.css">
<link rel="stylesheet" type="text/css" href="/resources/css/payment.css">

<script src="/resources/vendor/jquery/jquery-3.2.1.min.js"></script>

</head>
<body class="animsition">
	<c:choose>
		<c:when test="${loginOK == 1 }">
			<!-- Header -->
			<header class="header-v4">
				<!-- Header desktop -->
				<div class="container-menu-desktop">
					<!-- Topbar -->
					<div class="top-bar">
						<div class="content-topbar flex-sb-m h-full container">
							<div class="left-top-bar">${mVO.user_name}님안녕하세요</div>

							<div class="right-top-bar flex-w h-full">

								<c:choose>
									<c:when test="${loginOK == 1}">

										<a href="/faq/faqListPage?page=1"
											class="flex-c-m trans-04 p-lr-25"> HELP</a>
										<a href="/mypage/myPage" class="flex-c-m trans-04 p-lr-25">
											내 정보 </a>
										<a href="/logout" class="flex-c-m trans-04 p-lr-25"> 로그아웃
										</a>
									</c:when>
									<c:otherwise>

										<a href="/faq/faqListPage?page=1"
											class="flex-c-m trans-04 p-lr-25"> HELP </a>

										<a href="#"
											class="flex-c-m trans-04 p-lr-25 js-show-modal-login">
											로그인 </a>
										<a href="/join/join" class="flex-c-m trans-04 p-lr-25">
											회원가입 </a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>

					<div class="wrap-menu-desktop how-shadow1">
						<nav class="limiter-menu-desktop container">

							<!-- Logo desktop -->
							<a href="/" class="logo"> <img
								src="/resources/images/icons/logo-01.png" alt="IMG-LOGO">
							</a>

							<!-- Menu desktop -->
							<div class="menu-desktop">
								<ul class="main-menu">
									<li><a href="/">Home</a></li>

									<li><a href="/product/productList?category_id=0"
										class="navFilter" data-filter="0">Shop</a>
										<ul class="sub-menu">
											<li><a href="/product/productList?category_id=1"
												class="navFilter" data-filter="1">Outer</a></li>
											<li><a href="/product/productList?category_id=2"
												class="navFilter" data-filter="2">Top</a></li>
											<li><a href="/product/productList?category_id=3"
												class="navFilter" data-filter="3">Pants</a></li>
										</ul></li>


									<li><a href="/board/boardListPage?page=1">Notice</a></li>


								</ul>
							</div>

							<!-- Icon header -->
							<div class="wrap-icon-header flex-w flex-r-m">
								<div
									class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 show-search-modal">
									<i class="zmdi zmdi-search"></i>
								</div>

								<span
									class="goCartList pointer data-noti-cart icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti "
									data-notify="0"> <i class="zmdi zmdi-shopping-cart"></i>
								</span>
								<!-- js-wish-cart -->
								<a
									class="data-noti-wish icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-cart icon-header-noti"
									data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
								</a>
							</div>
						</nav>
					</div>
				</div>

				<!-- Header Mobile -->
				<div class="wrap-header-mobile">
					<!-- Logo moblie -->
					<div class="logo-mobile">
						<a href="/"><img src="/resources/images/icons/logo-01.png"
							alt="IMG-LOGO"></a>
					</div>

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m m-r-15">
						<div
							class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 show-search-modal">
							<i class="zmdi zmdi-search"></i>
						</div>



						<span
							class="goCartList pointer data-noti-cart icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti "
							data-notify="0"> <i class="zmdi zmdi-shopping-cart"></i>
						</span>
						<!-- js-wish-cart -->
						<a
							class="data-noti-wish icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-cart icon-header-noti"
							data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
						</a>
					</div>





					<!-- Button show menu -->
					<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
						<span class="hamburger-box"> <span class="hamburger-inner"></span>
						</span>
					</div>
				</div>


				<!-- Menu Mobile -->
				<div class="menu-mobile">
					<ul class="topbar-mobile">
						<li>
							<div class="left-top-bar">Free shipping for standard order
								over $100</div>
						</li>

						<li>
							<div class="right-top-bar flex-w h-full">
								<c:choose>
									<c:when test="${loginOK == 1}">
										<a class="flex-c-m p-lr-10 trans-04"> ${mVO.user_name}님
											안녕하세요 </a>

										<a href="/faq/faqListPage?page=1"
											class="flex-c-m p-lr-10 trans-04"> HELP </a>
										<a href="/mypage/myPage" class="fflex-c-m p-lr-10 trans-04">
											내 정보 </a>
										<a href="/logout" class="flex-c-m p-lr-10 trans-04"> 로그아웃
										</a>

									</c:when>
									<c:otherwise>

										<a href="/faq/faqListPage?page=1"
											class="flex-c-m p-lr-10 trans-04"> HELP </a>

										<a href="#"
											class="flex-c-m p-lr-10 trans-04 js-show-modal-login">
											로그인 </a>
										<a href="/join/join" class="flex-c-m p-lr-10 trans-04">
											회원가입 </a>
									</c:otherwise>
								</c:choose>
							</div>
						</li>
					</ul>

					<ul class="main-menu-m">

						<li><a href="/">Home</a></li>

						<li><a href="/product/productList?category_id=0">Shop</a>
							<ul class="sub-menu-m">
								<li><a href="/product/productList?category_id=1">Outer</a></li>
								<li><a href="/product/productList?category_id=2">Top</a></li>
								<li><a href="/product/productList?category_id=3">Pants</a></li>
							</ul> <span class="arrow-main-menu-m"> <i
								class="fa fa-angle-right" aria-hidden="true"></i>
						</span></li>
						<li class="active-menu"><a href="/board/boardListPage?page=1">Board</a>
							<ul class="sub-menu-m">
								<li><a href="/board/boardListPage?page=1">Notice</a></li>
								<li><a href="/faq/faqListPage?page=1">Help</a></li>
							</ul> <span class="arrow-main-menu-m"> <i
								class="fa fa-angle-right" aria-hidden="true"></i>
						</span></li>

					</ul>
				</div>

				<!-- Modal Search -->

			</header>
		</c:when>

		<c:otherwise>
			<!-- Header -->
			<header class="header-v4">
				<!-- Header desktop -->
				<div class="container-menu-desktop">
					<!-- Topbar -->
					<div class="top-bar">
						<div class="content-topbar flex-sb-m h-full container">
							<div class="left-top-bar">
								<c:choose>

									<c:when test="${loginOK == 99 }">
							관리자 ${mVO.user_name}님 안녕하세요
							</c:when>
									<c:otherwise>
							Free shipping for standard order over $100
							</c:otherwise>
								</c:choose>
							</div>

							<div class="right-top-bar flex-w h-full">

								<c:choose>


									<c:when test="${loginOK == 99 }">
										<a href="/admin/faq/faqListPage?page=1"
											class="flex-c-m trans-04 p-lr-25"> HELP </a>

										<a href="/admin/memberManagement"
											class="flex-c-m trans-04 p-lr-25"> 관리자 페이지 </a>
										<a href="/logout" class="flex-c-m trans-04 p-lr-25"> 관리자
											모드 종료 </a>
									</c:when>

									<c:otherwise>

										<a href="/faq/faqListPage?page=1"
											class="flex-c-m trans-04 p-lr-25"> HELP </a>

										<a href="#"
											class="flex-c-m trans-04 p-lr-25 js-show-modal-login">
											로그인 </a>
										<a href="/join/join" class="flex-c-m trans-04 p-lr-25">
											회원가입 </a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>

					<div class="wrap-menu-desktop how-shadow1">
						<nav class="limiter-menu-desktop container">

							<!-- Logo desktop -->
							<a href="/admin/home" class="logo"> <img
								src="/resources/images/icons/logo-01.png" alt="IMG-LOGO">
							</a>

							<!-- Menu desktop -->
							<div class="menu-desktop">
								<ul class="main-menu">
									<c:choose>
										<c:when test="${loginOK == 99 }">
											<li><a href="/admin/home">Home</a></li>
											<li><a href="/admin/product/productList?category_id=0"
												class="navFilter" data-filter="0">Shop</a>
												<ul class="sub-menu">
													<li><a href="/admin/product/productList?category_id=1"
														class="navFilter" data-filter="1">Outer</a></li>
													<li><a href="/admin/product/productList?category_id=2"
														class="navFilter" data-filter="2">Top</a></li>
													<li><a href="/admin/product/productList?category_id=3"
														class="navFilter" data-filter="3">Pants</a></li>
												</ul></li>
											<li><a href="/admin/board/boardListPage?page=1">Notice</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/">Home</a></li>
											<li><a href="/product/productList?category_id=0"
												class="navFilter" data-filter="0">Shop</a>
												<ul class="sub-menu">
													<li><a href="/product/productList?category_id=1"
														class="navFilter" data-filter="1">Outer</a></li>
													<li><a href="/product/productList?category_id=2"
														class="navFilter" data-filter="2">Top</a></li>
													<li><a href="/product/productList?category_id=3"
														class="navFilter" data-filter="3">Pants</a></li>
												</ul></li>
											<li><a href="/board/boardListPage?page=1">Notice</a></li>
										</c:otherwise>
									</c:choose>

								</ul>
							</div>
							<!-- Icon header -->
							<c:choose>
								<c:when test="${loginOK == 99 }">
									<div class="wrap-icon-header flex-w flex-r-m m-r-15">
										<div
											class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 show-search-modal">
											<i class="zmdi zmdi-search"></i>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="wrap-icon-header flex-w flex-r-m m-r-15">
										<div
											class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 show-search-modal">
											<i class="zmdi zmdi-search"></i>
										</div>


										<span
											class="goCartList pointer data-noti-cart icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti "
											data-notify="0"> <i class="zmdi zmdi-shopping-cart"></i>
										</span>
										<!-- js-wish-cart -->
										<a
											class="data-noti-wish icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-cart icon-header-noti"
											data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
										</a>
									</div>
								</c:otherwise>
							</c:choose>
						</nav>
					</div>
				</div>

				<!-- Header Mobile -->
				<div class="wrap-header-mobile">
					<!-- Logo moblie -->
					<div class="logo-mobile">
						<a href="/admin/home"><img
							src="/resources/images/icons/logo-01.png" alt="IMG-LOGO"></a>
					</div>

					<!-- Icon header -->
					<c:choose>
						<c:when test="${loginOK == 99 }">
							<div class="wrap-icon-header flex-w flex-r-m m-r-15">
								<div
									class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 show-search-modal">
									<i class="zmdi zmdi-search"></i>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="wrap-icon-header flex-w flex-r-m m-r-15">
								<div
									class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 show-search-modal">
									<i class="zmdi zmdi-search"></i>
								</div>


								<span
									class="goCartList pointer data-noti-cart icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti "
									data-notify="0"> <i class="zmdi zmdi-shopping-cart"></i>
								</span>
								<!-- js-wish-cart -->
								<a
									class="data-noti-wish icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-cart icon-header-noti"
									data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
								</a>
							</div>
						</c:otherwise>
					</c:choose>

					<!-- Button show menu -->
					<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
						<span class="hamburger-box"> <span class="hamburger-inner"></span>
						</span>
					</div>
				</div>


				<!-- Menu Mobile -->
				<div class="menu-mobile">
					<ul class="topbar-mobile">
						<li>
							<div class="left-top-bar">Free shipping for standard order
								over $100</div>
						</li>

						<li>
							<div class="right-top-bar flex-w h-full">
								<c:choose>

									<c:when test="${loginOK == 99 }">
										<a class="flex-c-m p-lr-10 trans-04"> 관리자
											${mVO.user_name}님 안녕하세요 </a>

										<a href="/admin/faq/faqListPage?page=1"
											class="flex-c-m p-lr-10 trans-04"> HELP </a>

										<a href="/admin/memberManagement"
											class="flex-c-m p-lr-10 trans-04"> 관리자 페이지 </a>
										<a href="/logout" class="flex-c-m p-lr-10 trans-04"> 관리자
											모드 종료 </a>
									</c:when>
									<c:otherwise>

										<a href="/faq/faqListPage?page=1"
											class="flex-c-m p-lr-10 trans-04"> HELP </a>

										<a href="#"
											class="flex-c-m p-lr-10 trans-04 js-show-modal-login">
											로그인 </a>
										<a href="/join/join" class="flex-c-m p-lr-10 trans-04">
											회원가입 </a>
									</c:otherwise>
								</c:choose>
							</div>
						</li>
					</ul>

					<ul class="main-menu-m">
						<c:choose>
							<c:when test="${loginOK == 99 }">
								<li><a href="/admin/product/productList?category_id=0">Shop</a>
									<ul class="sub-menu-m">
										<li><a href="/admin/product/productList?category_id=1">Outer</a></li>
										<li><a href="/admin/product/productList?category_id=2">Top</a></li>
										<li><a href="/admin/product/productList?category_id=3">Pants</a></li>
									</ul> <span class="arrow-main-menu-m"> <i
										class="fa fa-angle-right" aria-hidden="true"></i>
								</span></li>
								<li class="active-menu"><a href="/admin/qna/qnaList">Board</a>
									<ul class="sub-menu-m">
										<li><a href="/admin/qna/qnaList">Notice</a></li>
										<li><a href="/admin/faq/faqList">FaQ</a></li>
									</ul> <span class="arrow-main-menu-m"> <i
										class="fa fa-angle-right" aria-hidden="true"></i>
								</span></li>
							</c:when>
							<c:otherwise>
								<li><a href="/product/productList?category_id=0">Shop</a>
									<ul class="sub-menu-m">
										<li><a href="/product/productList?category_id=1">Outer</a></li>
										<li><a href="/product/productList?category_id=2">Top</a></li>
										<li><a href="/product/productList?category_id=3">Pants</a></li>
									</ul> <span class="arrow-main-menu-m"> <i
										class="fa fa-angle-right" aria-hidden="true"></i>
								</span></li>
								<li class="active-menu"><a href="/qna/qnaList">Board</a>
									<ul class="sub-menu-m">
										<li><a href="/qna/qnaList">Notice</a></li>
										<li><a href="/faq/faqList">FaQ</a></li>
									</ul> <span class="arrow-main-menu-m"> <i
										class="fa fa-angle-right" aria-hidden="true"></i>
								</span></li>
							</c:otherwise>
						</c:choose>
						<li><a href="/admin/home">Home</a></li>
					</ul>
				</div>

			
			</header>
		</c:otherwise>
	</c:choose>
		<!-- Modal Search -->
				
		<%@include file="../search/search.jsp"%>
		<%@include file="../wishList/wish.jsp"%>


	<script type="text/javascript">
		$(document).ready(
				function() {
					var navFilter = $(".navFilter");
					setActiveMenu();

					// 메뉴 클릭 시 이벤트 처리
					$(".main-menu a").on(
							'click',
							function(e) {
								// 현재 클릭한 메뉴 항목에 active-menu 클래스 추가
								$(this).closest('li').addClass('active-menu');

								// 다른 메뉴 항목에서 active-menu 클래스 제거
								$(".main-menu li").not($(this).closest('li'))
										.removeClass('active-menu');

								// 클릭 이벤트가 정상적으로 발생하는지 확인하기 위한 로그
								console.log("Menu clicked:", $(this).text());
							});

					// URL이 변경될 때 활성 메뉴 설정
					$(window).on('popstate', function() {
						console.log('popstate event occurred');
						setActiveMenu();
					});

					function setActiveMenu() {
						console.log('setActiveMenu function called');
						var path = window.location.pathname; // window.location.href 대신 window.location.pathname을 사용

						if (path.includes("/product/productList")) {
							path += "?category_id=0"
						}
						// 현재 페이지의 경로와 일치하는 메뉴 항목에 active-menu 클래스 추가
						$('.main-menu a[href="' + path + '"]').closest('li')
								.addClass('active-menu');
						console.log('Current path:', path);
					}

					navFilter.on("click", function() {
						var filter = $(this).attr("data-filter");
						localStorage.setItem('navFilter', filter);
					});

				});
		$.ajax({
			type : 'GET',
			url : '/wish/wishTotal',
			dataType : 'json',
			success : function(data) {
				// data-notify
				$('.data-noti-wish').attr("data-notify", data);

			},
			error : function() {
				console.log("AJAX request failed")
				$('.data-noti-wish').attr("data-notify", 0);
			}

		})

		$.ajax({
			type : 'GET',
			url : '/wish/cartTotal',
			dataType : 'json',
			success : function(data) {
				// data-notify
				$('.data-noti-cart').attr("data-notify", data);

			},
			error : function() {
				console.log("AJAX request failed")
				$('.data-noti-cart').attr("data-notify", 0);
			}

		})
	</script>
	<script>
		function toDelete() {
			var deleteVal = confirm("삭제하시겠습니까?");
			if (deleteVal == true) {
				alert("삭제 완료");
				location.replace("/board/boardListPage?page=1");
				return deleteVal;
			} else {
				return deleteVal;
			}
		}
	</script>
	<script>
	$('.goCartList').on('click',function(){
		if(${loginOK == 1 }||${loginOK == 99 }){
			window.location.href = "/cart/cartList";
		}
		else{
			Swal.fire({
				  title: "Please login",
				  showConfirmButton: true,
				  confirmButtonText: "OK"
				}).then((result) => {

				  if (result.isConfirmed) {
					  $('.js-show-modal-login').trigger("click");
				  }
				})
		}
	})
</script>
	</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../../includes/header.jsp"%>

<!-- breadcrumb -->
<div class="container">
	<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
		<a href="/" class="stext-109 cl8 hov-cl1 trans-04"> Home <i
			class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
		</a>

		<c:choose>
			<c:when test="${product.category_id eq 'outer' }">
				<a href="/admin/product/productList?category_id=1"
					class="stext-109 cl8 hov-cl1 trans-04"> ${product.category_id }
					<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
				</a>
			</c:when>
			<c:when test="${product.category_id eq 'top' }">
				<a href="/admin/product/productList?category_id=2"
					class="stext-109 cl8 hov-cl1 trans-04"> ${product.category_id }
					<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
				</a>
			</c:when>
			<c:when test="${product.category_id eq 'pants' }">
				<a href="/admin/product/productList?category_id=3"
					class="stext-109 cl8 hov-cl1 trans-04"> ${product.category_id }
					<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
				</a>
			</c:when>
		</c:choose>
		 <span class="stext-109 cl4">${product.product_name } </span>
	</div>
</div>


<!-- Product Detail -->
<section class="sec-product-detail bg0 p-t-65 p-b-60">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-7 p-b-30">
				<div class="p-l-25 p-r-30 p-lr-0-lg">
					<div class="wrap-slick3 flex-sb flex-w">
						<div class="wrap-slick3-dots"></div>
						<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

						<div class="slick3 gallery-lb">
							<div class="item-slick3"
								data-thumb="/resources/images/product-detail-01.jpg">
								<div class="wrap-pic-w pos-relative">
									<img src="/resources/images/products/${product.img }"
										alt="IMG-PRODUCT"> <a
										class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
										href="/resources/images/products/${product.img }"> <i
										class="fa fa-expand"></i>
									</a>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>


			<div class="col-md-6 col-lg-5 p-b-30">
				<div class="p-r-50 p-t-5 p-lr-0-lg">
					<h4 class="mtext-105 cl2 js-name-detail p-b-14 productId"data-product_name ="${product.product_name}" data-product_id = "${product.product_id }">${product.product_name }</h4>

					<span class="mtext-106 cl2"> <fmt:formatNumber type="number"
							maxFractionDigits="3" value="${product.price}" /> won
					</span> </span>

					<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
						pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare
						feugiat.</p>

					
					
				</div>
			</div>
		</div>

		<div class="bor10 m-t-50 p-t-43 p-b-40">
			<!-- Tab01 -->
			<div class="tab01">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item p-b-10"><a class="nav-link active"
						data-toggle="tab" href="#description" role="tab">Description</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#information" role="tab">Additional
							information</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#reviews" role="tab">Reviews (1)</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content p-t-43">
					<!-- - -->
					<div class="tab-pane fade show active" id="description"
						role="tabpanel">
						<div class="how-pos2 p-lr-15-md">
							<p class="stext-102 cl6">Aenean sit amet gravida nisi. Nam
								fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in
								blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit
								lectus interdum. Morbi elementum sapien rhoncus pretium maximus.
								Nulla lectus enim, cursus et elementum sed, sodales vitae eros.
								Ut ex quam, porta consequat interdum in, faucibus eu velit.
								Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit
								amet orci nec iaculis. Cras sit amet nulla libero. Curabitur
								dignissim, nunc nec laoreet consequat, purus nunc porta lacus,
								vel efficitur tellus augue in ipsum. Cras in arcu sed metus
								rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.</p>
						</div>
					</div>

					<!-- - -->
					<div class="tab-pane fade" id="information" role="tabpanel">
						<div class="row">
							<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
								<ul class="p-lr-28 p-lr-15-sm">
									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Weight </span> <span
										class="stext-102 cl6 size-206"> 0.79 kg </span></li>

									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Dimensions </span> <span
										class="stext-102 cl6 size-206"> 110 x 33 x 100 cm </span></li>

									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Materials </span> <span
										class="stext-102 cl6 size-206"> 60% cotton </span></li>

									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Color </span> <span
										class="stext-102 cl6 size-206"> Black, Blue, Grey,
											Green, Red, White </span></li>

									<li class="flex-w flex-t p-b-7"><span
										class="stext-102 cl3 size-205"> Size </span> <span
										class="stext-102 cl6 size-206"> L, M, S </span></li>
								</ul>
							</div>
						</div>
					</div>

					<!-- - -->
					<div class="tab-pane fade" id="reviews" role="tabpanel">
						<div class="row">
							<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
								<div class="p-b-30 m-lr-15-sm">
									<!-- Review -->
									<div class="flex-w flex-t p-b-68">
										<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
											<img src="/resources/images/avatar-01.jpg" alt="AVATAR">
										</div>

										<div class="size-207">
											<div class="flex-w flex-sb-m p-b-17">
												<span class="mtext-107 cl2 p-r-20"> Ariana Grande </span> <span
													class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i
													class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i>
													<i class="zmdi zmdi-star"></i> <i
													class="zmdi zmdi-star-half"></i>
												</span>
											</div>

											<p class="stext-102 cl6">Quod autem in homine
												praestantissimum atque optimum est, id deseruit. Apud
												ceteros autem philosophos</p>
										</div>
									</div>

									<!-- Add review -->
									<form class="w-full">
										<h5 class="mtext-108 cl2 p-b-7">Add a review</h5>

										<p class="stext-102 cl6">Your email address will not be
											published. Required fields are marked *</p>

										<div class="flex-w flex-m p-t-50 p-b-23">
											<span class="stext-102 cl3 m-r-16"> Your Rating </span> <span
												class="wrap-rating fs-18 cl11 pointer"> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <i
												class="item-rating pointer zmdi zmdi-star-outline"></i> <input
												class="dis-none" type="number" name="rating">
											</span>
										</div>

										<div class="row p-b-25">
											<div class="col-12 p-b-5">
												<label class="stext-102 cl3" for="review">Your
													review</label>
												<textarea
													class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
													id="review" name="review"></textarea>
											</div>

											<div class="col-sm-6 p-b-5">
												<label class="stext-102 cl3" for="name">Name</label> <input
													class="size-111 bor8 stext-102 cl2 p-lr-20" id="name"
													type="text" name="name">
											</div>

											<div class="col-sm-6 p-b-5">
												<label class="stext-102 cl3" for="email">Email</label> <input
													class="size-111 bor8 stext-102 cl2 p-lr-20" id="email"
													type="text" name="email">
											</div>
										</div>

										<button
											class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
											Submit</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
		<span class="stext-107 cl6 p-lr-25"> SKU: JAK-01 </span> <span
			class="stext-107 cl6 p-lr-25"> Categories: Jacket, Men </span>
	</div>
</section>


<!-- Related Products -->
<section class="sec-relate-product bg0 p-t-45 p-b-105">
	<div class="container">
		<div class="p-b-45">
			<h3 class="ltext-106 cl5 txt-center">Related Products</h3>
		</div>

		<!-- Slide2 -->
		<div class="wrap-slick2">
			<div class="slick2">

				<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="/resources/images/product-08.jpg" alt="IMG-PRODUCT">

							<a href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Quick View </a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="product-detail.html"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									Pieces Metallic Printed </a> <span class="stext-105 cl3">
									$18.96 </span>
							</div>

							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#"
									class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
									<img class="icon-heart1 dis-block trans-04"
									src="/resources/images/icons/icon-heart-01.png" alt="ICON">
									<img class="icon-heart2 dis-block trans-04 ab-t-l"
									src="/resources/images/icons/icon-heart-02.png" alt="ICON">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



<%@include file="../../includes/footer.jsp"%>
<script type="text/javascript">
	$(document).ready(function () {
		var wishBtn = $(".js-addwish-details");
		var pName = $("h4").data("product_name");
		var pId = $(".productId").data("product_id");
		console.log(pName);
		wishBtn.on("click",function(){
			  $.ajax({
	                type: 'POST',
	                url: "/productDetail/postWish",
	                contentType: 'application/json',
	                data: JSON.stringify({product_name: pName }),
	                success: function (response) {
	                	$.ajax({
							type : 'GET',
							url : '/wish/wishTotal',
							dataType : 'json',
							success : function(data) {
								// data-notify
								$('.data-noti-wish').attr("data-notify",data);
								
							},
							error: function () {
								console.log("AJAX request failed")
							}

						})
	                    	Swal.fire({
			  					  position: "center",
			  					  icon: "success",
			  					  title: "Added to your wishLists!",
			  					  showConfirmButton: false,
			  					  timer: 1500
			  					});
	                    
	                
	                },
	                error: function (xhr, status, error) {
	                	
	                    Swal.fire("This product has already been registered on WishList.", "", "error");
	                }
	            });

		})
	})
	$('.detailCart').each(function() {
	
	
	$(this).on("click",function(){
	
		var color_id = $(".color_id").val(); 
		var size_id = $(".size_id").val();
		var count = $(".num-product").val();
		var product_name = $("h4").data("product_name");
		console.log("color_id -> " + color_id + ", size_id -> " + size_id + ", count -> " + count + ", product_name -> " + product_name)
		
		$.ajax({
            type: 'POST',
            url: "/productDetail/postCart",
            contentType: 'application/json',
            data: JSON.stringify({product:{product_name: product_name,color_id: color_id, size_id: size_id},count:count}),
            success: function (response) {
            	 
                	Swal.fire({
	  					  position: "center",
	  					  icon: "success",
	  					  title: "Added to your cart!",
	  					  showConfirmButton: false,
	  					  timer: 1500
	  					});
                	$.ajax({
						type : 'GET',
						url : '/wish/cartTotal',
						dataType : 'json',
						success : function(data) {
							// data-notify
							$('.data-noti-cart').attr("data-notify",data);
							
						},
						error: function () {
							console.log("AJAX request failed")
						}

					})
            
            },
            error: function (xhr, status, error) {
            	
            	  Swal.fire("This product has already been registered on Cart.", "", "info");
            }
        });
	})
	
})
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@include file="../includes/header.jsp"%>
<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				Shoping Cart
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-shopping-cart-table">
						<h2 class="m-all-15">Added item to Cart</h2>
						<input type="hidden" id="memberId" value="${member_id}">
							<table class="shopping-cart-table">
									<tr class="table_head">
										<th class="cart-checked"></th>
				                        <th class="column-1">Product</th>
				                        <th class="column-2"></th>
				                        <th class="column-3">Price</th>
				                        <th class="column-4">Quantity</th>
				                        <th class="column-5">Total</th>
			                    	</tr>
								<c:forEach var="item" items="${cartList}">
									<tr class="table_row">
										<td class="cart-checked">
											<input class="cart-checkbox" type="checkbox">
										</td>
			                            <td class="column-1">
			                                <div class="how-itemcart1">
			                                    <img src="/resources/images/products/${item.img}" alt="IMG">
			                                </div>
			                            </td>
			                            <td class="column-2">${item.product_name}<input type="hidden" class="shopping-cart-cart_id" value="${item.cart_id}"></td>
			                            <td class="column-3 item-price"><fmt:formatNumber value="${item.price}" pattern="###,###" /></td>
			                            <td class="column-4">
			                                <div class="wrap-num-product flex-w m-l-auto m-r-0">
			                                    <div class="num-product-down-btn cl8 hov-btn3 trans-04 flex-c-m">
			                                        <i class="fs-16 zmdi zmdi-minus"></i>
			                                    </div>
			    
			                                    <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="${item.count}">
			    
			                                    <div class="num-product-up-btn cl8 hov-btn3 trans-04 flex-c-m">
			                                        <i class="fs-16 zmdi zmdi-plus"></i>
			                                    </div>
			                                </div>
			                            </td>
			                            <td class="column-5 item-total-price"><fmt:formatNumber value="${item.count*item.price}" pattern="###,###" /></td>
			                        </tr>
			                        <tr class="table-product-option">
			                        	<td></td>
			                        	<td></td>
			                        	<td class="table-product-option-title" >product option</td>
			                        	<td colspan="3"> [color : ${item.color_id}, size : ${item.size_id}]</td>
			                        <tr>
								</c:forEach>
							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 m-t-15 m-b-40 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">
									
								<div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
									Apply coupon
								</div>
							</div>

							<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10 shopping-cart-delete-btn">
								Delete
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							Cart Totals
						</h4>

						<div class="flex-w flex-t bor12 p-b-13 cart-subtotal">
							<div class="size-208">
								<span class="stext-110 cl2">
									Subtotal:
								</span>
							</div>

							<div class="size-209 cart-sub-total-div">
								<span class="mtext-110 cl2">
									<c:forEach var="item" items="${cartList}">
											<span class="stext-110 cl2 cart-list-subtotal-content">
											    <c:set var="subTotalPrice" value="${item.price * item.count}" />
											    
											    <fmt:formatNumber value="${subTotalPrice}" pattern="###,###" />
											</span>
									</c:forEach>
								</span>
							</div>
						</div>

						

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Total:
								</span>
							</div>

							<div class="size-209 p-t-1 cart-total-price-div">
								<span class="mtext-110 cl2">
									<c:set var="totalPrice" value="0" />
								    <c:forEach var="item" items="${cartList}">
								        <c:set var="totalPrice" value="${totalPrice + (item.price * item.count)}" />
								    </c:forEach>
								    <fmt:formatNumber value="${totalPrice}" pattern="###,###" />
								</span>
							</div>
						</div>

						<a href="/payment/payment" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Proceed to Checkout
						</a>
					</div>
				</div>
			</div>
		</div>
	</form>
	<%@include file="../includes/footer.jsp"%>
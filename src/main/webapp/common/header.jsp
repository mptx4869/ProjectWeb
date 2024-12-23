<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!--  -->
<!-- Start Top Nav -->
    <nav class="sticky-top navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block h3" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <a class="navbar-sm-brand text-light fw-bold text-decoration-none btn" href="mailto:ITITIU21205@student.hcm.edu.vn"><i class="fa fa-envelope mx-2"></i> ITITIU21205@student.hcm.edu.vn</a>
                    <a class="navbar-sm-brand text-light fw-bold text-decoration-none btn" href="mailto:ITITIU21353@student.hcm.edu.vn"><i class="fa fa-envelope mx-2"></i> ITITIU21353@student.hcm.edu.vn</a>
                </div>
                <c:if test="${accountLogin == null}"> <!-- lấy seesion từ /login --> <!-- Nếu chưa đăng nhập -->
					<div>
                    	<a class="text-white fw-bold btn" href="/home/register"><i class="fa fa-plus pr-1"></i> Register</a>
                    	<a class="text-white fw-bold btn" href="/home/login"><i class="fa fa-user"></i> Login</a>
                	</div>
				</c:if>
				<c:if test="${accountLogin != null}"> <!-- Nếu đã đăng nhập -->
						<div>
					<c:if test="${accountLogin.admin == true}">
						<a class="text-white fw-bold btn" href="/admin/index"><i class="fas fa-users-cog"></i> Administration</a>
					</c:if>
						<a class="text-white fw-bold btn" id="btnLogOff" href="/home/logout" title=""><i class="fas fa-sign-out-alt"></i> Logout</a>
						</div>
				</c:if>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="/home/index">
                Liceria Jewelry
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/home/index">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/home/about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/home/shop">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/home/contact">Contact</a>
                        </li>
						<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Account </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<c:if test="${accountLogin != null}"> <!-- Nếu đã đăng nhập -->
							<li><a class="dropdown-item" href="/home/profile">My Profile</a></li>
							<li><a class="dropdown-item" href="/home/allOrders">My Orders</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="/home/forgotPassword">Forgot Password</a></li>
							<li><a class="dropdown-item" href="/home/changePassword">Change Password</a></li>
						</c:if>
						<c:if test="${accountLogin == null}"> <!-- Nếu chưa đăng nhập -->
							<li><a class="dropdown-item" href="/home/login">Login</a></li>
							<li><a class="dropdown-item" href="/home/register">Register</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="/home/forgotPassword">Forgot Password</a></li>
						</c:if>
						</ul>
						</li>
				</ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark "></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="/home/cart">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark"></i> Cart
                        <!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">3</span> -->
                    </a>
                    <c:if test="${accountLogin == null}">
                    	<a class="nav-icon position-relative text-decoration-none" href="/home/login">
                        	<i class="fa fa-fw fa-user text-dark"></i> User
                        	<!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>  -->
                    	</a>
                    </c:if>
                    <c:if test="${accountLogin != null}">
                    	<a class="nav-icon position-relative text-decoration-none" href="/home/profile">
                        	<i class="fa fa-fw fa-user text-dark"></i> ${accountLogin.fullname}
                        	<!-- <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span> -->
                    	</a>
                    </c:if>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->
    
    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
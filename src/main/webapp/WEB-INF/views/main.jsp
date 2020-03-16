<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page
	import="vo.WantadVO, vo.LoginVO, vo.PageVO, vo.WantSearchVO, java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>잉력시장</title>
</head>
    <title>Negotiate - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="bootstrap/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/animate.css">
    
    <link rel="stylesheet" href="bootstrap/css/owl.carousel.min.css">
    <link rel="stylesheet" href="bootstrap/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="bootstrap/css/magnific-popup.css">

    <link rel="stylesheet" href="bootstrap/css/aos.css">

    <link rel="stylesheet" href="bootstrap/css/ionicons.min.css">
    
    <link rel="stylesheet" href="bootstrap/css/flaticon.css">
    <link rel="stylesheet" href="bootstrap/css/icomoon.css">
    <link rel="stylesheet" href="bootstrap/css/style.css">

<body>
  <div class="bg-top navbar-light d-flex flex-column-reverse">
    	<div class="container py-3">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="index.html">잉력시장 <span>surpluspower market</span></a>
    			</div>
	    		<div class="col-lg-8 d-block">
		    		<div class="row d-flex">
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-paper-plane"></span></div>
					    	<div class="text">
					    		<span>Email</span>
						    	<span>surpluspowermarket@gmail.com</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-call"></span></div>
						    <div class="text">
						    	<span>Call</span>
						    	<span>+123 523 5598</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-time"></span></div>
						    <div class="text">
						    	<span>Project Period</span>
						    	<span>20200309-20200319</span>
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
		  <div class="top-social-menu py-2 bg-light">
		  	<div class="container">
		  		<div class="row">
			    	<div class="col">
			    		<p class="social mb-0">
			    			<a href="#"><i class="ion-logo-facebook"></i><span class="sr-only">Facebook</span></a>
			    			<a href="#"><i class="ion-logo-twitter"></i><span class="sr-only">Twitter</span></a>
			    			<a href="#"><i class="ion-logo-googleplus"></i><span class="sr-only">Googleplus</span></a>
			    		</p>
			    	</div>
			    	<div class="col text-right">
			    		<a href="#" class="btn-link">Request A Quote</a>
			    	</div>
			    </div>
		  	</div>
		  </div>
    </div>
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="/javas/" class="nav-link">홈</a></li>
	        	<li class="nav-item"><a href="about.html" class="nav-link">소개</a></li>
	        	<li class="nav-item"><a href="team.html" class="nav-link">팀원</a></li>
	        	<li class="nav-item"><a href="/javas/jobad" class="nav-link">대타 구인</a></li>
	        	<li class="nav-item"><a href="/javas/wantad" class="nav-link">대타 구직</a></li>
	        	
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<c:if test="${!empty loginVO}">
					<li class="nav-item"><a href="/javas/mypage" class="nav-link">마이페이지</a></li>
					<li class="nav-item"><a href="/javas/logout" class="nav-link">로그아웃</a></li>
				</c:if>         	
				<c:if test="${empty loginVO}">
	          	<li class="nav-item"><a href="/javas/login/form" class="nav-link">로그인</a></li>
	          	<li class="nav-item"><a href="/javas/resources/meminfo.jsp" class="nav-link">회원가입</a></li>
	          	</c:if>
	          
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image:url(images/bg_1.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-7 ftco-animate mb-md-5">
          	<span class="subheading">Negotiate Consulting</span>
            <h1 class="mb-4">We Are The Best Consulting Agency</h1>
            <p><a href="#" class="btn btn-primary px-4 py-3 mt-3">Our Services</a></p>
          </div>
        </div>
        </div>
      </div>

      <div class="slider-item" style="background-image:url(images/bg_2.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-7 ftco-animate mb-md-5">
          	<span class="subheading">Negotiate Consulting</span>
            <h1 class="mb-4">We Help to Grow Your Business</h1>
            <p><a href="#" class="btn btn-primary px-4 py-3 mt-3">Our Services</a></p>
          </div>
        </div>
        </div>
      </div>
    </section>

		<section class="ftco-section ftco-no-pt ftco-no-pb ftco-consult">
			<div class="container">
				<div class="row d-flex no-gutters align-items-stretch	consult-wrap">
					<div class="col-md-5 wrap-about align-items-stretch d-flex">
						<div class="ftco-animate bg-primary align-self-stretch px-4 py-5 w-100">
							<h2 class="heading-white mb-4">Free Consulting</h2>
							<form action="#" class="appointment-form ftco-animate">
		    				<div class="form-group">
		    					<input type="text" class="form-control" placeholder="First Name">
		    				</div>
		    				<div class="form-group">
		    					<input type="text" class="form-control" placeholder="Last Name">
		    				</div>
	    					<div class="form-group">
		    					<div class="form-field">
	        					<div class="select-wrap">
	                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                    <select name="" id="" class="form-control">
	                    	<option value="">Select Guidance</option>
	                      <option value="">Finance</option>
	                      <option value="">Business</option>
	                      <option value="">Auto Loan</option>
	                      <option value="">Real Estate</option>
	                      <option value="">Other Services</option>
	                    </select>
	                  </div>
		              </div>
		    				</div>
	    					<div class="form-group">
		    					<input type="text" class="form-control" placeholder="Phone">
		    				</div>
	    					<div class="form-group">
		              <textarea name="" id="" cols="30" rows="2" class="form-control" placeholder="Message"></textarea>
		            </div>
		            <div class="form-group">
		              <input type="submit" value="Request A Quote" class="btn btn-secondary py-3 px-4">
		            </div>
		    			</form>
						</div>
					</div>
					<div class="col-md-7 wrap-about ftco-animate align-items-stretch d-flex">
						<div class="bg-white p-5">
							<h2 class="mb-4">Negotiate <br>A Consulting Agency</h2>
							<div class="row">
								<div class="col-lg-6">
									<div class="services">
										<div class="icon mt-2 d-flex align-items-center"><span class="flaticon-collaboration"></span></div>
										<div class="text media-body">
											<h3>Business Solution</h3>
											<p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
										</div>
									</div>
									<div class="services">
										<div class="icon mt-2"><span class="flaticon-analysis"></span></div>
										<div class="text media-body">
											<h3>Financial Analysis</h3>
											<p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="services">
										<div class="icon mt-2"><span class="flaticon-search-engine"></span></div>
										<div class="text media-body">
											<h3>Marketing Strategy</h3>
											<p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
										</div>
									</div>
									<div class="services">
										<div class="icon mt-2"><span class="flaticon-handshake"></span></div>
										<div class="text media-body">
											<h3>Investment Planning</h3>
											<p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<section class="ftco-intro ftco-no-pb img" style="background-image: url(images/bg_3.jpg);">
    	<div class="container">
    		<div class="row justify-content-center">
          <div class="col-md-10 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-0">You Always Get the Best Guidance</h2>
          </div>
        </div>	
    	</div>
    </section>

    <section class="ftco-section ftco-about ftco-no-pt ftco-no-pb ftco-counter" id="section-counter">
			<div class="container consult-wrap">
				<div class="row d-flex align-items-stretch">
					<div class="col-md-6 wrap-about align-items-stretch d-flex">
						<div class="img" style="background-image: url(images/about.jpg);"></div>
					</div>
					<div class="col-md-6 wrap-about ftco-animate py-md-5 pl-md-5">
						<div class="heading-section mb-4">
							<span class="subheading">Welcome to Negotiate</span>
							<h2>The Smartest Thing To Do With Your Consulting Business</h2>
						</div>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						<div class="tabulation-2 mt-4">
							<ul class="nav nav-pills nav-fill d-md-flex d-block">
							  <li class="nav-item">
							    <a class="nav-link active py-2" data-toggle="tab" href="#home1"><span class="ion-ios-home mr-2"></span> Our Mission</a>
							  </li>
							  <li class="nav-item px-lg-2">
							    <a class="nav-link py-2" data-toggle="tab" href="#home2"><span class="ion-ios-person mr-2"></span> Our Vision</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link py-2" data-toggle="tab" href="#home3"><span class="ion-ios-mail mr-2"></span> Our Value</a>
							  </li>
							</ul>
							<div class="tab-content bg-light rounded mt-2">
							  <div class="tab-pane container p-0 active" id="home1">
							  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							  </div>
							  <div class="tab-pane container p-0 fade" id="home2">
							  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							  </div>
							  <div class="tab-pane container p-0 fade" id="home3">
							  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							  </div>
							</div>
						</div>
    				<div class="row mt-5">
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		            	<div class="icon"><span class="flaticon-doctor"></span></div>
		              <div class="text">
		                <strong class="number" data-number="1387">0</strong>
		                <span>Happy Clients</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		            	<div class="icon"><span class="flaticon-doctor"></span></div>
		              <div class="text">
		                <strong class="number" data-number="310">0</strong>
		                <span>Success Reports</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		            	<div class="icon"><span class="flaticon-doctor"></span></div>
		              <div class="text">
		                <strong class="number" data-number="35">0</strong>
		                <span>Experienced</span>
		              </div>
		            </div>
		          </div>
	          </div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section">
			<div class="container">
				<div class="row no-gutters justify-content-center mb-5">
          <div class="col-md-6 text-center heading-section ftco-animate">
          	<span class="subheading">Projects Done</span>
            <h2 class="mb-4">Case Studies</h2>
            <p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
            <p></p>
          </div>
        </div>
        <div class="row">
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(images/project-1.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">Consulting</span>
        				<h3><a href="#">Consultacy Solutions</a></h3>
        				<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(images/project-2.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">Marketing</span>
        				<h3><a href="#">Consultacy Solutions</a></h3>
        				<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(images/project-3.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">Financing</span>
        				<h3><a href="#">Consultacy Solutions</a></h3>
        				<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(images/project-4.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">Audit &amp; Taxes</span>
        				<h3><a href="#">Consultacy Solutions</a></h3>
        				<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(images/project-5.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">Financing</span>
        				<h3><a href="#">Consultacy Solutions</a></h3>
        				<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-md-4">
        		<div class="project">
        			<div class="img rounded mb-4" style="background-image: url(images/project-6.jpg);"></div>
        			<div class="text w-100 text-center">
        				<span class="cat">Real Estate</span>
        				<h3><a href="#">Consultacy Solutions</a></h3>
        				<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
        			</div>
        		</div>
        	</div>
        </div>
			</div>
		</section>

    <section class="ftco-section ftco-no-pt">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Services</span>
            <h2 class="mb-4">Why Choose Us?</h2>
            <p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
          </div>
        </div>
  			<div class="row tabulation mt-4 ftco-animate">
  				<div class="col-md-4">
						<ul class="nav nav-pills nav-fill d-md-flex d-block flex-column">
						  <li class="nav-item text-left">
						    <a class="nav-link active py-4" data-toggle="tab" href="#services-1"><span class="flaticon-analysis mr-2"></span> Business Analysis</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-2"><span class="flaticon-business mr-2"></span> Business Consulting</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-3"><span class="flaticon-insurance mr-2"></span> Business Insurance</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-4"><span class="flaticon-money mr-2"></span> Global Investigation</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-5"><span class="flaticon-rating mr-2"></span> Audit &amp; Evaluation</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-6"><span class="flaticon-search-engine mr-2"></span> Marketing Strategy</a>
						  </li>
						</ul>
					</div>
					<div class="col-md-8">
						<div class="tab-content">
						  <div class="tab-pane container p-0 active" id="services-1">
						  	<div class="img" style="background-image: url(images/project-2.jpg);"></div>
						  	<h3><a href="#">Business Analysis</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-2">
						  	<div class="img" style="background-image: url(images/project-3.jpg);"></div>
						  	<h3><a href="#">Business Consulting</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-3">
						  	<div class="img" style="background-image: url(images/project-4.jpg);"></div>
						  	<h3><a href="#">Business Insurance</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-4">
						  	<div class="img" style="background-image: url(images/project-5.jpg);"></div>
						  	<h3><a href="#">Global Investigation</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-5">
						  	<div class="img" style="background-image: url(images/project-6.jpg);"></div>
						  	<h3><a href="#">Audit &amp; Evaluation</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-6">
						  	<div class="img" style="background-image: url(images/project-1.jpg);"></div>
						  	<h3><a href="#">Marketing Strategy</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						</div>
					</div>
				</div>
    	</div>
    </section>

    <section class="ftco-intro ftco-no-pb img" style="background-image: url(images/bg_1.jpg);">
    	<div class="container">
    		<div class="row justify-content-center">
          <div class="col-lg-9 col-md-8 d-flex align-items-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-3 mb-md-0">You Always Get the Best Guidance</h2>
          </div>
          <div class="col-lg-3 col-md-4 ftco-animate">
          	<p class="mb-0"><a href="#" class="btn btn-secondary py-3 px-4">Request Quote</a></p>
          </div>
        </div>	
    	</div>
    </section>

    <section class="ftco-section testimony-section">
      <div class="container-fluid px-md-5">
        <div class="row justify-content-center mb-5">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Testimonies</span>
            <h2 class="mb-4">Our Clients Says</h2>
            <p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
          </div>
        </div>
        <div class="row ftco-animate justify-content-center">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_1.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Racky Henderson</p>
                    <span class="position">Father</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_2.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Henry Dee</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_3.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Mark Huff</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_4.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Rodel Golez</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_1.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="name">Ken Bosh</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <hr>

		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
          	<span class="subheading">Blog Posts</span>
            <h2 class="mb-4">Recent Blog</h2>
            <p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
          </div>
        </div>
				<div class="row">
          <div class="col-md-6 col-lg-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20 d-flex align-items-end" style="background-image: url('images/image_1.jpg');">
								<div class="meta-date text-center p-2">
                  <span class="day">15</span>
                  <span class="mos">Oct.</span>
                  <span class="yr">2019</span>
                </div>
              </a>
              <div class="text border border-top-0 p-4">
                <h3 class="heading"><a href="#">Finance And Legal Working Streams Occur Throughout</a></h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20 d-flex align-items-end" style="background-image: url('images/image_2.jpg');">
								<div class="meta-date text-center p-2">
                  <span class="day">15</span>
                  <span class="mos">Oct.</span>
                  <span class="yr">2019</span>
                </div>
              </a>
              <div class="text border border-top-0 p-4">
                <h3 class="heading"><a href="#">Finance And Legal Working Streams Occur Throughout</a></h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20 d-flex align-items-end" style="background-image: url('images/image_3.jpg');">
								<div class="meta-date text-center p-2">
                  <span class="day">15</span>
                  <span class="mos">Oct.</span>
                  <span class="yr">2019</span>
                </div>
              </a>
              <div class="text border border-top-0 p-4">
                <h3 class="heading"><a href="#">Finance And Legal Working Streams Occur Throughout</a></h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
	                </p>
                </div>
              </div>
            </div>
          </div>
        </div>
			</div>
		</section>

		
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
	            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-2">
            <div class="ftco-footer-widget mb-5 ml-md-4">
              <h2 class="ftco-heading-2">Links</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Home</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>About</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Services</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Projects</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="ftco-footer-widget mb-5">
              <h2 class="ftco-heading-2">Recent Blog</h2>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> Oct. 16, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-5 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> Oct. 16, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Subscribe Us!</h2>
              <form action="#" class="subscribe-form">
                <div class="form-group">
                  <input type="text" class="form-control mb-2 text-center" placeholder="Enter email address">
                  <input type="submit" value="Subscribe" class="form-control submit px-3">
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>



  <script src="bootstrap/js/jquery.min.js"></script>
  <script src="bootstrap/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="bootstrap/js/popper.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
  <script src="bootstrap/js/jquery.easing.1.3.js"></script>
  <script src="bootstrap/js/jquery.waypoints.min.js"></script>
  <script src="bootstrap/js/jquery.stellar.min.js"></script>
  <script src="bootstrap/js/owl.carousel.min.js"></script>
  <script src="bootstrap/js/jquery.magnific-popup.min.js"></script>
  <script src="bootstrap/js/aos.js"></script>
  <script src="bootstrap/js/jquery.animateNumber.min.js"></script>
  <script src="bootstrap/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="bootstrap/js/google-map.js"></script>
  <script src="bootstrap/js/main.js"></script>
    

</body>
</html>
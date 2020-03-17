<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,vo.JobadVO,vo.LoginVO"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Negotiate - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
  <% LoginVO loginVO = (LoginVO)session.getAttribute("loginVO"); %>
  <% if(loginVO==null){ %>
	<button onclick="location.href='/javas/resources/loginForm.html'">로그인하기</button>
<% 
}
else{
%>
		<h4><%= loginVO.getMem_username() %>님 환영합니다!</h4>
		<button onclick="logout();">로그아웃</button>
<%
}
List<JobadVO> list = (List<JobadVO>)request.getAttribute("list");
JobadVO vo = (JobadVO)request.getAttribute("vo");
%>
	  <div class="bg-top navbar-light d-flex flex-column-reverse">
    	<div class="container py-3">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="/javas">Negotiate <span>Consulting Agency</span></a>
    			</div>
	    		<div class="col-lg-8 d-block">
		    		<div class="row d-flex">
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-paper-plane"></span></div>
					    	<div class="text">
					    		<span>Email</span>
						    	<span>youremail@email.com</span>
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
						    	<span>Working Hours</span>
						    	<span>Mon - Sat 8am - 5pm</span>
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
	      <form action="#" class="searchform order-lg-last">
          <div class="form-group d-flex">
            <input type="text" class="form-control pl-3" placeholder="Search">
            <button type="submit" placeholder="" class="form-control search"><span class="ion-ios-search"></span></button>
          </div>
        </form>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item"><a href="/javas" class="nav-link">Home</a></li>
	        	<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	        	<li class="nav-item"><a href="team.html" class="nav-link">Team</a></li>
	        	<li class="nav-item"><a href="services.html" class="nav-link">Services</a></li>
	        	<li class="nav-item active"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">구인 게시판</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">메인페이지 <i class="ion-ios-arrow-forward"></i></a></span> <span>구인 게시판 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
<%
if(list!=null && list.size()!=0){
%>
		<section class="ftco-section">
			<div class="container">
				<div class="row">
<%
	for(JobadVO vo1 : list){
%>
          <div class="col-md-6 col-lg-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20 d-flex align-items-end">
				<div class="meta-date text-center p-2">
                  <span class="day"><%= vo1.getPost_writedate() %></span>
                </div>
                <img src="/javas/resources/images2/<%= vo1.getMem_userid() %>.png">
              </a>
              <div class="text border border-top-0 p-4">
                <h3 class="heading"><a href="/javas/jobad?action=listone&post_id=<%= vo1.getPost_id() %>"><%= vo1.getPost_title() %></a></h3>
                <a href="/javas/jobad?action=listWriter&mem_username=<%= vo1.getMem_username() %>"><%= vo1.getMem_username() %></a>
                <p><%= vo1.getPost_content() %></p>
                <p><%= vo1.getPost_location() %></p>
                <div class="d-flex align-items-center mt-4">
	                <p class="mb-0"><a href="/javas/jobad?action=listone&post_id=<%= vo1.getPost_id() %>" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a></p>
	                <p class="ml-auto mb-0">
	                	<a href="#" class="mr-2">Admin</a>
	                	<a href="#" class="meta-chat"><span class="icon-chat"></span> <%= vo1.getPost_review_count() %></a>
	                </p>
                </div>
              </div>
            </div>
          </div>
<%
	}
%>
		</div>
		</section>
		<section>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
<%
				out.print(request.getAttribute("pagelist"));
%>
            </div>
          </div>
        </div>
		</section>
<% 	if(list!=null && list.size()!=0){ %>
<div style="text-align : center;">
	<div>
		<button class="btn btn-primary" onclick="isAdmin('insert');">새 글 작성</button>
		<button class="btn btn-primary" onclick="location.href='/javas/jobad'">맨앞 페이지로 가기</button>
		<br><br>
		<form action="/javas/jobad" method="get">
			<input type="hidden" name="action" value="search">
			<select class="selectpicker" name="searchType">
				<option value="location">위치</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="title_content">제목+내용</option>
			</select>
			<input type="text" name="key">
			<input type="submit" value="검색">
		</form>
	</div>
</div>
<% 
	}
}
if(request.getAttribute("snull")!=null){
%>
	<h1><%= (String)request.getAttribute("snull") %></h1>
	<button onclick="location.href='/javas/jobad'">목록 가기</button>
<%
}
if(vo!=null){
%>
<div style="text-align : center;">
	<ul class="list-unstyled">
	<li>유저 아이디 : <%= vo.getMem_userid() %></li>
	<li>유저 이름 : <%= vo.getMem_username() %></li>
	<li>글 제목 : <%= vo.getPost_title() %></li>
	<li>글 내용 : <%= vo.getPost_content() %></li>
	<li>작성 날짜 : <%= vo.getPost_writedate() %></li>
	<li>조회수 : <%= vo.getPost_hit() %></li>
	<li>장소 : <%= vo.getPost_location() %></li>
	<li>시급 : <%= vo.getPost_payment() %></li>
	<li>전화번호 : <%= vo.getPost_phone() %></li>
	<li>리뷰 수 : <%= vo.getPost_review_count() %></li>
	</ul>
	<button onclick="location.href='/javas/jobad?pgNum=${sessionScope.pgNum}'">목록 가기</button>
	<button onclick="isAdmin('delete');">글 삭제하기</button>
	<button onclick="isAdmin('update');">글 수정하기</button>
</div>
<hr>
<div style="text-align : center;">
	<%@ include file="jobreviewform.jsp" %>
</div>
<%
}
%>
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

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  <script src="js/bootstrap-select.js"></script>
  <script>
  $(window).on('load', function (){
		$('.selectpicker').selectpicker({
		  		'selectedText': 'cat'
		});
  });
  </script>
  </body>
</html>
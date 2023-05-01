<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Modern Business - Start Bootstrap Template</title>
<!-- css, favicon -->
<c:import url="../temp/style.jsp"></c:import>
<!-- css, favicon -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
</head>
<body class="d-flex flex-column h-100">
	<main class="flex-shrink-0">
		<!-- Navigation-->
        <c:import url="../temp/header.jsp"></c:import>
        <!-- Header-->
        <!-- Page content-->
            <section class="py-5">
                <div class="container px-5">
                    <!-- Contact form-->
                    <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                        <div class="text-center mb-5">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                            <h1 class="fw-bolder">${board}</h1>
                            <p class="lead fw-normal text-muted mb-0">${board} 등록</p>
                        </div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                                <%-- <form id="contactForm" action="./add" method="post" data-sb-form-api-token="API_TOKEN" enctype="multipart/form-data"> --%>
                            	<form:form id="contactForm" modelAttribute="boardVO" action="./add" method="post" data-sb-form-api-token="API_TOKEN" enctype="multipart/form-data">
	                                    <!-- Title input-->
	                                    <div class="form-floating mb-3">
	                                        <!-- <input class="form-control" id="title" name="title" type="text" placeholder="Enter Title..." data-sb-validations="required" /> -->
	                                        <form:input path="title" id="title" cssClass="form-control"/>
	                                        <label for="title">Title</label>
	                                        <form:errors path="title"></form:errors>
	                                        <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
	                                    </div>
	                                    <!-- writer input-->
	                                    <div class="form-floating mb-3">
	                                        <!-- <input class="form-control" id="writer" name="writer" type="text" placeholder="Enter Title..." data-sb-validations="required,email" /> -->
	                                        <form:input path="writer" id="writer" cssClass="form-control"/>
	                                        <label for="writer">Writer</label>
	                                        <form:errors path="writer"></form:errors>
	                                    </div>
	                                    <!-- content input-->
	                                    <div class="form-floating mb-3">
	                                        <textarea class="form-control" id="content" name="content" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>
	                                        <label for="content">Content</label>
	                                        <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
	                                    </div>  
	                                    
	                                    <div class="form-floating mb-3">
	                                    	<input type="file" name="boardFiles">
	                                    </div>
	                                                              
	                                    <div class="d-grid"><button class="btn btn-primary btn-lg" id="submitButton" type="submit">Submit</button></div>
                                	</form:form>   
                                <%-- </form> --%>
                            </div>
                        </div>
                    </div>
                    <!-- Contact cards-->
                    <div class="row gx-5 row-cols-2 row-cols-lg-4 py-5">
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-chat-dots"></i></div>
                            <div class="h5 mb-2">Chat with us</div>
                            <p class="text-muted mb-0">Chat live with one of our support specialists.</p>
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-people"></i></div>
                            <div class="h5">Ask the community</div>
                            <p class="text-muted mb-0">Explore our community forums and communicate with other users.</p>
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-question-circle"></i></div>
                            <div class="h5">Support center</div>
                            <p class="text-muted mb-0">Browse FAQ's and support articles to find solutions.</p>
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                            <div class="h5">Call us</div>
                            <p class="text-muted mb-0">Call us during normal business hours at (555) 892-9403.</p>
                        </div>
                    </div>
                </div>
            </section>
        
        
	</main>
	
	<!-- Footer -->
    <c:import url="../temp/footer.jsp"></c:import>
    <!-- Footer -->
    
    <script type="text/javascript" src="/js/boardForm.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <script>
		$("#content").summernote();
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>



<html lang="en">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
window.onload = function(){
	getDepartmentList();
};


</script>
<head>
    <title>RjR </title>
    <!-- Meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Gadget Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />
    <script>
        addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
    </script>
    <!-- Meta tags -->
    <!-- font-awesome icons -->
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--stylesheets-->
    <link href="resources/css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//style sheet end here-->
    <link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
</head>
<body>
    <h1 class="error">User Sign Up Form</h1>
	<!---728x90--->
    <div class="w3layouts-two-grids">
	<!---728x90--->
        <div class="mid-class">
            <div class="img-right-side">
                <h3>Manage Your Personal Account</h3>
                <img src="resources/images/b11.png" class="img-fluid" alt="">
            </div>
            <div class="txt-left-side">
             <div class="success_pop" id="msgDiv" style="display: none;"></div>
                <h2> Sign Up Here </h2>
                
                <form action="saveEmployee" method="post">
                    <div class="form-left-to-w3l">
                        <span class="fa fa-user-o" aria-hidden="true"></span>
                        <input type="text" name="Name" placeholder=" Name" required="">

                        <div class="clear"></div>
                    </div>
                    <div class="form-left-to-w3l">
                        <span class="fa fa-phone" aria-hidden="true"></span>
                        <input type="text" name="Phone" placeholder="Phone" required="">

                        <div class="clear"></div>
                    </div>
                    <div class="form-left-to-w3l">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                        <input type="email" name="email" placeholder="Email" required="">

                        <div class="clear"></div>
                    </div>
                    <div class="form-left-to-w3l ">

                        <span class="fa fa-lock" aria-hidden="true"></span>
                        <input type="password" name="password" placeholder="Password" required="">
                        <div class="clear"></div>
                    </div>
                   <!--  <div class="main-two-w3ls">
                        <div class="left-side-forget">
                            <input type="checkbox" class="checked">
                            <span class="remenber-me">Remember me </span>
                        </div>
                        <div class="right-side-forget">
                            <a href="#" class="for">Forgot password...?</a>
                        </div>
                    </div> -->
                    <div class="btnn">
                        <button type="submit">Sign Up </button>
                        
                    </div>
                </form>
                <input type="button" class="btn btn-primary" id="upload_button"
										name="upload_button" onclick="getDepartmentList();"
										value="Import">
                <div class="w3layouts_more-buttn">
                    <h3>Already Have an account..?
                        <a href="/goToLoginPage">Login Here
                        </a>
                    </h3>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
	<!---728x90--->
    <footer class="copyrigh-wthree">
        <p>
            © 2019 RjR Sign Up Form. All Rights Reserved
        </p>
    </footer>
</body>
<script type="text/javascript">
function getDepartmentList(){
	
	$.ajax({
    	type: "GET",
        contentType: "application/json",
        url: "/getAllEmployee", 
        success: function(json) {
        	 $("#msgDiv").html("Total number of users - " +json);
        	 $("#msgDiv").show();
        }
    });	
}
</script>
</html>






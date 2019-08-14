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
    <link href="resourcess/css/font-awesome.min.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--stylesheets-->
    <link href="resourcess/css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//style sheet end here-->
    <link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
</head>
<body>
    <h1 class="error">User Sign Up Form</h1>
	<!---728x90--->
	
	<form>
		<p>Ist Num</p>
		   <input type="text" id="ist" placeholder="num ones" required="">
		      <div id="istValid" style="display: none";>
		      <p style="color:red;" id="istp"></p> 
		      </div>
		<p>2nd Num</p>
		    <input type="text" id="sc" placeholder="num two" required="">
		      <div id="scValid" style="display: none";>
		      <p style="color:red;" id="scp"></p> 
		      </div>
	    <p>Result</p>
		    <input type="text" id="result" name="result" placeholder="display">
		    <br>		
		 <input type="submit" class="btn btn-primary"  value="Click here" onclick="getSum();">
			 <div class="success_pop" id="resetdiv" style="display: none;">
			 <input type="submit" class="btn btn-primary"  value="Reset" onclick= "resestdiv();">
			 </div>
	 </form>
    
    <div class="w3layouts-two-grids">
	<!---728x90--->
        <div class="mid-class">
            <div class="img-right-side">
                <h3>Manage Your Personal Account</h3>
                <img src="resourcess/images/b11.png" class="img-fluid" alt="">
            </div>
            <div class="txt-left-side">
             <div class="success_pop" id="msgDiv" style="display: none;"></div>
                <h2> Sign Up Here </h2>
                
                <form  action="saveEmployee" name ="empForm" method="post" onsubmit="return validateform(empForm)" >
                    <div class="form-left-to-w3l">
                        <span class="fa fa-user-o" aria-hidden="true"></span>
                        <input type="text" id="name" name="Name" placeholder="Name">
                        <p id="nameP" style="color:red"></p>

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
</script >

<script  type="text/javascript">
function getSum(){
	
	var a = Number(document.getElementById("ist").value);
	var b = Number(document.getElementById("sc").value);
	if(a>50){
		var c = (a + b);	
		document.getElementById("result").value = c;
		$("#resetdiv").show();
	}else{
	 //	$("#istValid").html("value must be more than 50").css({"background":"#d9534f"});
		$("#istValid").show();
		$("#resetdiv").show();
	}
}


function resestdiv(){
	
	$("#istValid").hide();
	document.getElementById("result").value="";
	document.getElementById("ist").value="";
	document.getElementById("sc").value="";
	msgFadein();
}
</script>
<script>
	function msgFadein() {
		$("#resetdiv").fadeIn(200);
        $('#resetdiv').delay(2000).fadeOut('slow');
	}
	
	
	
function validateform(form){
	
	var regex = /^[a-zA-Z]{5}$/;
	var name = form.Name.value;
	  if(regex.test(form.Name) == false){
	   $("#nameP").html("Only Characters 0-5");
	   form.Name.focus();
	   return false;
	  }	else{
		  return true;
	  }
}	
   </script> 


</html>






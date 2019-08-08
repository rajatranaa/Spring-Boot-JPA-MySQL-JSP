
<!DOCTYPE html>
<html lang="en">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
    	var flag = '${flag}';
    	if(flag ==13){
    		$("#uploadXlsHistoryDivTitle").show();
    	}
    });
</script>

<head>
    <title>RjR</title>
    <!-- Meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Allied Login Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
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
    <h1 class="error">Login Form</h1>
    <div class="w3layouts-two-grids">
        <div class="mid-class">
            <div class="txt-left-side">
                <h2> Login Here </h2>
               
                <form action="/getLoginDetails" method="post">
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
                     <div class="require_wrap_table datatable_filter">
	                 <h5 id="uploadXlsHistoryDivTitle" style="display:none; color:red">Invalid Credentials</h5>
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
                        <button type="submit">Login </button>
                    </div>
                </form>
                <div class="w3layouts_more-buttn">
                    <h3>Don't Have an account..?
                        <a href="/">Register Here
                        </a>
                    </h3>
                </div>

            </div>
            <div class="img-right-side">
                <h3>Welcome To Login Form</h3>
                <p></p>
                <img src="resources/images/b12.png" class="img-fluid" alt="">
            </div>
        </div>
    </div>
    <footer class="copyrigh-wthree">
        <p>
            © 2019 RjR Login Form. All Rights Reserved
        </p>
    </footer>
</body>
</html>

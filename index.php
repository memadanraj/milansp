<?php
include('includes/config.php');
session_start();
error_reporting(0);

  ?>
<!DOCTYPE HTML>
<html>
<head>
<title>Old Age Home Management System || Home Page</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--Custom Theme files-->

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/modernizr.custom.js"></script>

 <!--start-smoth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
		
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->
<!--webfonts-->
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic,400italic,700italic|Niconne' rel='stylesheet' type='text/css'>
	<!--webfonts-->
</head>
<body>
<?php include_once('includes/header.php');?>
	</div>	
</div>	


<style>
	.home-image{
		float: right;
		width: 45%;
        height: 25%;
		margin-top: 20px;
        margin-bottom: 50px;  
		margin-right: 100px;     
	   margin-left: 20px;
	   
      
	}
	.banner-head {
	width: 44%;
	float: right;
	
}
.banner-head  h1{
	font-family: 'Bols';
	color:black;
	font-size: 3.3em;
	text-transform: uppercase;
}
.banner-head p{
	color: black;
	font-family: 'Lato', sans-serif;
	font-size: 1.1em;
	margin: 1em 0 0 0;
	font-weight: 500;
	line-height: 1.9em;
}.welcom-grid-text h2,{
	color:black;
	font-size: 2em;
	margin: 0em 0;
	font-weight: 400;
	text-transform: uppercase;
	font-family: 'Lato', sans-serif;
}


	
</style>
<div class="home-image">
<img src="images/banner.jpg" title="img" />
		</div>

	<div class="container">
		<div class="banner-head">
			<h1>Old age home is shelter place for senior citizen </h1>
			<p style="font-family:Georgia; font-size: 14pt;">Old age homes, also known as retirement homes or senior
				 living communities, are specialized residential 
				 facilities designed to cater to the unique needs 
				 of elderly individuals. These homes offer a range of 
				 services, amenities, and care options to support seniors
				  in their daily lives. .</p>
		</div>
	</div>


		<div class="welcome-section">
				<div class="container">
					<div class="welcom-grids">
						<div class="col-md-6 welcom-grid-img">
							<img src="images/v1.jpg" title="img" />
						</div>
						<div class="col-md-6 welcom-grid-text">
							<?php

$ret=mysqli_query($con,"select * from tblpage where PageType='aboutus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
							<h2><?php  echo $row['PageTitle'];?></h2>
							<p><?php  echo $row['PageDescription'];?>.</p><?php } ?>
						</div>
						<div class="clearfix"> </div>  
					</div>
				</div>
			</div>
			<!--start-letest-->
			 <div class="letest-section">
	 			<div class="container">
	 				<?php

$ret=mysqli_query($con,"select * from tblpage where PageType='eligibility' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
	 				<h3><?php  echo $row['PageTitle'];?></h3>
	 				<p><?php  echo $row['PageDescription'];?>.</p><?php } ?>
	 				<?php

$ret=mysqli_query($con,"select * from tblpage where PageType='rules' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
	 				<h3><?php  echo $row['PageTitle'];?></h3>
	 				<p><?php  echo $row['PageDescription'];?>.</p><?php } ?>
	 				
    </div>
 </div>
 
 <!--/End-services-->
<div class="Events">
	<div class="wmuSlider example1">
		 	<div class="container">
		 		<h3>Gallery</h3>
				 <article style="position: absolute; width:64%; opacity: 0;"> 
				   	<div class="client-sections">
						<div class="event-section">
				 				<div class="col-md-4">
				 					<div class="client-img">
					 					<img src="images/old9.jpg" title="" />
									</div>
					 			</div>
				 				<div class="col-md-4">
				 					<div class="client-img">
					 					<img src="images/old2.jpg" title="" />
									</div>	
				 				</div>
				 				<div class=" col-md-4">
				 					<div class="client-img">
					 					<img src="images/old3.jpg" title="" />
									</div>	
				 				</div>
				 				<div class="clearfix"> </div>  		
				 			</div>
				 			<div class="event-section1">
				 				<div class="col-md-4">
				 					<div class="client-img">
					 					<img src="images/about3.jpg" title="" />
									</div>
					 			</div>
				 				<div class="col-md-4">
				 					<div class="client-img">
					 					<img src="images/old8.jpg" title="" />
									</div>	
				 				</div>
				 				<div class=" col-md-4">
				 					<div class="client-img">
					 					<img src="images/c6.jpg" title="" />
									</div>	
				 				</div>
				 				</div>
			 				<div class="clearfix"> </div> 
			 		 </div> 		
		 			 </article>
		 			 <article style="position: absolute; width:64%; opacity: 0;"> 
				   	<div class="client-sections">
						<div class="event-section">
				 				<div class="col-md-4">
				 					<div class="client-img">
					 					<img src="images/old6.jpg" title="" />
									</div>
					 			</div>
				 				<div class="col-md-4">
				 					<div class="client-img">
					 					<img src="images/old11.jpg" title="" />
									</div>	
				 				</div>
				 				<div class=" col-md-4">
				 					<div class="client-img">
					 					<img src="images/old2.jpg" title="" />
									</div>	
				 				</div>
				 				<div class="clearfix"> </div>  		
				 			</div>
				 			<div class="event-section1">
				 				<div class="col-md-4">
				 					<div class="client-img">
					 					<img src="images/old10.jpg" title="" />
									</div>
					 			</div>
				 				<div class="col-md-4">
				 					<div class="client-img">
					 					<img src="images/old8.jpg" title="" />
									</div>	
				 				</div>
				 				<div class=" col-md-4">
				 					<div class="client-img">
					 					<img src="images/old12.jpg" title="" />
									</div>	
				 				</div>
				 				</div>
			 				<div class="clearfix"> </div> 
			 		 </div> 		
		 			 </article>
			
			
				 </div>
		  	</div>
		  	<div class="clearfix"> </div>  	
		</div>
	</div>
  </div>          
   <script src="js/jquery.wmuSlider.js"></script> 
					<script>
       				     $('.example1').wmuSlider();         
   					</script> 	           	      

<!--/new-projects-->
	
	<!--/start-footer-->
	<?php include_once('includes/footer.php');?>
								<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
					<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>




</body>
</html>				
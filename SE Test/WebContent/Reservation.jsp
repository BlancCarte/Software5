<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
	<head>
		<meta charset="utf-8">
		<title>레스토랑 예약</title>
		<meta name="description" content="">  
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

 		<!-- CSS -->
   		<link rel="stylesheet" href="css/base.css">
   		<link rel="stylesheet" href="css/vendor.css">  
   		<link rel="stylesheet" href="css/main.css">  

   		<!-- script -->

	</head>

	<body>
 		<section id="contact">
	   		<div class="row">
	   			<div class="tab-full">
	   			<h5>Reservation</h5>
	            	<form name="contactForm" id="contactForm" method="post">
	            		<div class="form-field">
	 					   	<input name="Name" type="text" id="" placeholder="성함" value="" required>
	               		</div>
	               		<div class="row">
	                 		<div class="col-four tab-full">
	                 			<div class="form-field">
									<select class="col-twelve" required>
										<option>010</option>
										<option>011</option>
										<option>012</option>
										<option>013</option>
										<option>014</option>
										<option>015</option>
										<option>016</option>
										<option>017</option>
										<option>018</option>
										<option>019</option>
									</select>
								</div>
			            	</div>
		            		<div class="col-four tab-full">	            
		            			<div class="form-field">
		            				<input name="Second" type="text" id="" placeholder="1234" value="" required>
		                  		</div>		     				   
			            	</div>
			            	<div class="col-four tab-full">	            
		            			<div class="form-field">
		            				<input name="Last" type="text" id="" placeholder="5678" value="" required>
		                  		</div>		     				   
			            	</div>
	               		</div>
	                    <div class="row">
		                    <div class="col-four tab-full">
			                    <div class="form-field">
									<select class="col-twelve" required>
										<option>2021</option>
										<option>2022</option>
									</select>
								</div>
							</div>
							<div class="col-four tab-full">
								<div class="form-field">
									<select class="col-twelve" required>
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
										<option>8</option>
										<option>9</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
									</select>
								</div>
							</div>
							<div class="col-four tab-full">
								<div class="form-field">
									<select class="col-twelve" required>
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
										<option>8</option>
										<option>9</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
		                    <div class="col-twelve tab-full">
			                    <div class="form-field">
									<select class="col-twelve">
										<option>오므라이스</option>
										<option>김치볶음밥</option>
									</select>
								</div>
							</div>
						</div>
	               		<div class="form-field">
		              		<textarea name="contactMessage" id="contactMessage" placeholder="message" rows="10" cols="50"></textarea>
		            	</div> 
	
	               		<div class="form-field">
	                  		<button class="submitform">Submit</button>
	                  		<div id="submit-loader">
	                     		<div class="text-loader">Sending...</div>                             
	       			      		<div class="s-loader">
	       			      			<div class="bounce1"></div>
									<div class="bounce2"></div>
									<div class="bounce3"></div>
								</div>
							</div>
	               		</div>
	      			</form>
				</div>
			</div>
		</section> 
	</body>
</html>
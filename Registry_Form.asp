<!DOCTYPE html>
<html>
<head>
	<link rel="icon"  type="image/png" sizes="14×18" href="img/ADSRLogo.png">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>A.D.S.R. Register</title>
</head>
<body>
<div class="container">
    <div class="title">A.D.S.R. Account Registration</div>
	    <div class="content">
	      	<form method="post" action="Registry_Success.asp">
		        <div class="user-details">
					<table>
						<div class="input-box">
		            		<span class="details">Full Name</span>
		            		<input name="compname" type="text" placeholder="Enter your name" required>
		          		</div>
		          		<div class="input-box">
		            		<span class="details">Username</span>
		            		<input name="usrname" type="text" placeholder="Enter Username" required>
		          		</div>
		          		<div class="input-box">
		            		<span class="details">Email</span>
		            		<input name="email" type="text" placeholder="Enter Email" required>
		          		</div>
		          		<div class="input-box">
		            		<span class="details">Phone Number</span>
		            		<input name="pnumber" type="text" placeholder="Enter Phone Number" required>
		          		</div>
		          		<div class="input-box">
		            		<span class="details">Password</span>
		            		<input name="pword" type="text" placeholder="Enter Password" required>
		          		</div>
		          		<div class="input-box" style="margin-left: 6%;">
		            		<span class="details">Confirm Password</span>
		            		<input type="text" placeholder="Enter Password" required>
		          		</div>
					</table>
					<div class="button" style="margin-left: 1%;">
						<input type="submit" value="Register">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
	*{
	  margin: 0;
	  padding: 0;
	  box-sizing: border-box;
	  font-family: 'Poppins',sans-serif;
	}
	body{
	  height: 100vh;
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  padding: 10px;
	  background: linear-gradient(135deg, #9900cc, #993366);
	}
	.container{
	  max-width: 700px;
	  width: 100%;
	  background-color: #fff;
	  padding: 25px 30px;
	  border-radius: 5px;
	  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
	}
	.container .title{
	  font-size: 25px;
	  font-weight: 500;
	  position: relative;
	}
	.container .title::before{
	  content: "";
	  position: absolute;
	  left: 0;
	  bottom: 0;
	  height: 3px;
	  width: 359px;
	  border-radius: 5px;
	  background: linear-gradient(500deg, #ff0066, #660066);
	}
	.content form .user-details{
	  display: flex;
	  flex-wrap: wrap;
	  justify-content: space-between;
	  margin: 20px 0 12px 0;
	}
	form .user-details .input-box{
	  margin-bottom: 15px;
	  width: calc(100% / 2 - 20px);
	}
	form .input-box span.details{
	  display: block;
	  font-weight: 500;
	  margin-bottom: 5px;
	}
	.user-details .input-box input{
	  height: 45px;
	  width: 100%;
	  outline: none;
	  font-size: 16px;
	  border-radius: 5px;
	  padding-left: 15px;
	  border: 1px solid #ccc;
	  border-bottom-width: 2px;
	  transition: all 0.3s ease;
	}
	.user-details .input-box input:focus,
	.user-details .input-box input:valid{
	  border-color: #9b59b6;
	}
	 form .button{
	   height: 45px;
	   margin: 35px 0
	 }
	 form .button input{
	   height: 100%;
	   margin-left: 30px;
	   width: 500%;
	   border-radius: 5px;
	   border: none;
	   color: #fff;
	   font-size: 18px;
	   font-weight: 500;
	   letter-spacing: 1px;
	   cursor: pointer;
	   transition: all 1.0s ease;
	   background: linear-gradient(135deg, #ff0066, #660066);
	 }
	 form .button input:hover{
	  /* transform: scale(0.99); */
	  background: linear-gradient(-135deg, #ff0066, #660066);
	  }
	 @media(max-width: 584px){
	 .container{
	  max-width: 100%;
	}
	form .user-details .input-box{
	    margin-bottom: 15px;
	    width: 100%;
	  }
	  .content form .user-details{
	    max-height: 300px;
	    overflow-y: scroll;
	  }
	  .user-details::-webkit-scrollbar{
	    width: 5px;
	  }
	  }
	  @media(max-width: 459px){
	  .container .content .category{
	    flex-direction: column;
	  }
	}
	#contact input[type="text"],
		#contact input[type="email"],
		#contact input[type="tel"],
		#contact input[type="url"],
		#contact textarea,
		#contact button[type="submit"] {
		  font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
		}

		#contact {
		  background: #F9F9F9;
		  padding: 25px;
		  margin: 150px 0;
		  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
		}

		#contact h3 {
		  display: block;
		  font-size: 30px;
		  font-weight: 300;
		  margin-bottom: 10px;
		}

		#contact h4 {
		  margin: 5px 0 15px;
		  display: block;
		  font-size: 13px;
		  font-weight: 400;
		}

		fieldset {
		  border: medium none !important;
		  margin: 0 0 10px;
		  min-width: 100%;
		  padding: 0;
		  width: 100%;
		}

		#contact input[type="text"],
		#contact input[type="email"],
		#contact input[type="tel"],
		#contact input[type="url"],
		#contact textarea {
		  width: 100%;
		  border: 1px solid #ccc;
		  background: #FFF;
		  margin: 0 0 5px;
		  padding: 10px;
		}

		#contact input[type="text"]:hover,
		#contact input[type="email"]:hover,
		#contact input[type="tel"]:hover,
		#contact input[type="url"]:hover,
		#contact textarea:hover {
		  -webkit-transition: border-color 0.3s ease-in-out;
		  -moz-transition: border-color 0.3s ease-in-out;
		  transition: border-color 0.3s ease-in-out;
		  border: 1px solid #aaa;
		}

		#contact textarea {
		  height: 100px;
		  max-width: 100%;
		  resize: none;
		}

		#contact button[type="submit"] {
		  cursor: pointer;
		  width: 100%;
		  border: none;
		  background: #4CAF50;
		  color: #FFF;
		  margin: 0 0 5px;
		  padding: 10px;
		  font-size: 15px;
		}

		#contact button[type="submit"]:hover {
		  background: #43A047;
		  -webkit-transition: background 0.3s ease-in-out;
		  -moz-transition: background 0.3s ease-in-out;
		  transition: background-color 0.3s ease-in-out;
		}

		#contact button[type="submit"]:active {
		  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
		}

		.copyright {
		  text-align: center;
		}

		#contact input:focus,
		#contact textarea:focus {
		  outline: 0;
		  border: 1px solid #aaa;
		}

		::-webkit-input-placeholder {
		  color: #888;
		}

		:-moz-placeholder {
		  color: #888;
		}

		::-moz-placeholder {
		  color: #888;
		}

		:-ms-input-placeholder {
		  color: #888;
		}
		body {
			background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
			background-size: 400% 400%;
			animation: gradient 15s ease infinite;
		}
		@keyframes gradient {
			0% {
				background-position: 0% 50%;
			}
			50% {
				background-position: 100% 50%;
			}
			100% {
				background-position: 0% 50%;
			}
		}
		@viewport {
			zoom: 1.0;
			width: extend-to-zoom;
		}
		@-ms-viewport {
			width: extend-to-zoom;
			zoom: 1.0;
		}
</style>
</html>
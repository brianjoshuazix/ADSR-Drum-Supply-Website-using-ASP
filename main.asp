<!DOCTYPE html>
<html>
	<head>
		<link rel="icon"  type="image/png" sizes="14×18" href="img/ADSRLogo.png">
		<title>A.D.S.R. Drum Samples Library</title>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
			<script src="bootstrap/popper.min.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

	</head>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Yellowtail&display=swap');
		.header {
			width:100%;
			height:80px;
			background-color:#000000;
			margin-bottom: 10px;
			}

		.logo {
			height: 10%;
			width: 20%;
			float: left;
			padding-left:450px;
			margin-top:0px;
			margin:0px;
			line-height:70px;
			}

		.login {
			color:#ffffff;
			font-size:18px;
			font-family:verdana;
			text-align:right;
			margin-top:0px;
			float:right;
			margin:0px;
			line-height:80px;
			padding-right:400px;
		}

		.register {
			color:#ffffff;
			font-size:18px;
			font-family:verdana;
			text-align:right;
			margin-top:0px;
			float:right;
			margin:0px;
			line-height:80px;
			padding-right:30px;
		}

		body {
			margin:0px;
			padding:0px;
			background-image: url("https://images.hdqwalls.com/wallpapers/los-angles-synthwave-4k-wp.jpg");
			background-color: #000000;
			background-repeat: no-repeat;
			background-size: cover;
			background-position: center;
			background-attachment: fixed;
			}
		
		.latest {
			text-align: center;
			color:#ffffff;
			font-family: 'Yellowtail';
			font-size: 60px;
		}

		.wrapper {
			padding: 50px;
			text-align: center;
			margin-left: 500px;
			margin-right: 500px;
		}

		.table-dark td {
			vertical-align: middle;
		}

		footer {
			text-align: center;
			height: 100px;
			padding: 35px;
			background-color: #000000;
			color: white;
		}
	</style>
	<body>
		<div class="header">
			<a href="userslist.asp">
				<h1 class="logo">
					<img src="img/ADSRLogo.png">
				</h1>
			</a>
			<a href="Login">
				<p class="login">Login</p>
			</a>
			<a href="Registry_Form.asp">
				<p class="register">Register</p>
			</a>
		</div>
			<div class="wrapper">
				<h1 class="latest">Latest Products</h1>
				<table class="table table-striped table-dark table-hover"> 
					<%
						response.write "<thead>"
							response.write "<tr>"
								response.write "<th>Product Name</th>"
								response.write "<th>Genre</th>"
								response.write "<th>Price $</th>"
							response.write "</tr>"
						response.write "</thead>"

						

						set conn=server.createobject("adodb.connection")
						conn.Open "DRIVER={MySQL ODBC 5.3 Unicode Driver}; SERVER=niepresjohnarrogante.cmu-online.tech; UID=cmuon_arrogante; PASSWORD=nHl#65u2; DATABASE=cmuonine_niepresjohnarrogante;"

						set rs=server.createobject("adodb.recordset")
						rs.open "SELECT * FROM products", conn

						do until rs.eof=true
								
								response.write "<tr>"
									response.write "<td>" & rs.fields("ProductID") & "</td>"
									response.write "<td>" & rs.fields("Genre") & "</td>"
									response.write "<td>" & formatnumber(rs.fields("Price $")) & "</td>"
								response.write "</tr>"

							rs.movenext
						loop

						rs.close
						conn.close
					%>		
				</table>	
			</div>
			<h1 class="latest">Products List</h1>
		<div>
			<a href="EDM 01 Drum Sample Pack Bundle">
				<img src="img/edm01.png" style="width: 23%; margin-left: 30px;">
			</a>
			<a href="EDM 02 Drum Sample Pack Bundle">
				<img src="img/edm02.png" style="width: 23%;">
			</a>
			<a href="Hiphop 01 Drum Sample Pack Bundle">
				<img src="img/hiphop01.png" style="width: 23%;">
			</a>
			<a href="Hiphop 02 Drum Sample Pack Bundle">
				<img src="img/hiphop02.png" style="width: 23%;">
			</a>
		</div>
		<div>
			<a href="House 01 Drum Sample Pack Bundle">
				<img src="img/house01.png" style="width: 23%; margin-left: 30px;">
			</a>
			<a href="House 02 Drum Sample Pack Bundle">
				<img src="img/house02.png" style="width: 23%;">
			</a>
			<a href="Pop 01 Drum Sample Pack Bundle">
				<img src="img/pop01.png" style="width: 23%;">
			</a>
			<a href="Pop 02 Drum Sample Pack Bundle">
				<img src="img/pop02.png" style="width: 23%;">
			</a>
		</div>
		<div>
			<a href="Synth 01 Drum Sample Pack Bundle">
				<img src="img/synth01.png" style="width: 23%; margin-left: 30px;">
			</a>
			<a href="Synth 02 Drum Sample Pack Bundle">
				<img src="img/synth02.png" style="width: 23%;">
			</a>
			<a href="Trance 01 Drum Sample Pack Bundle">
				<img src="img/trance01.png" style="width: 23%;">
			</a>
			<a href="Trance 02 Drum Sample Pack Bundle">
				<img src="img/trance02.png" style="width: 23%;">
			</a>
		</div>
		<footer>
  			<p>© 2021 A.D.S.R. All Rights Reserved.</p>
		</footer>
	</body>
</html>

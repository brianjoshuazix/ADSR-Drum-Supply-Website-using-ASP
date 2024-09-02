<!DOCTYPE html>
<html>
	<head>
		<link rel="icon"  type="image/png" sizes="14×18" href="img/ADSRLogo.png">
		<title>A.D.S.R. Users List</title>
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
			margin-left: 200px;
			margin-right: 200px;
		}

		.table-dark td {
			vertical-align: middle;
		}

	</style>
	<body>
		<div class="header">
			<a href="main.asp">
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
				<h1 class="latest">Users List</h1>
				<table class="table table-striped table-dark table-hover"> 
					<%
						response.write "<thead>"
							response.write "<tr>"
								response.write "<th>No.</th>"
								response.write "<th>Name</th>"
								response.write "<th>Username</th>"
								response.write "<th>Email</th>"
								response.write "<th>Phone Number</th>"
								response.write "<th>Password</th>"
								response.write "<th>Created at</th>"
								response.write "<th>Action</th>"
							response.write "</tr>"
						response.write "</thead>"

						

						set conn=server.createobject("adodb.connection")
						conn.Open "DRIVER={MySQL ODBC 5.3 Unicode Driver}; SERVER=niepresjohnarrogante.cmu-online.tech; UID=cmuon_arrogante; PASSWORD=nHl#65u2; DATABASE=cmuonine_niepresjohnarrogante;"

						set rs=server.createobject("adodb.recordset")
						rs.open "SELECT * FROM users", conn

						do until rs.eof=true
								
								response.write "<tr>"
									response.write "<td>" & rs.fields("userid") & "</td>"
									response.write "<td>" & rs.fields("complete_name") & "</td>"
									response.write "<td>" & rs.fields("uname") & "</td>"
									response.write "<td>" & rs.fields("eml") & "</td>"
									response.write "<td>" & rs.fields("pnum") & "</td>"
									response.write "<td>" & rs.fields("pw") & "</td>"
									response.write "<td>" & rs.fields("created_at") & "</td>"
									response.write "<td><a href='del_user.asp?uid=" & rs.fields("userid") & "'>Delete</a> | <a href='user_update.asp?uid=" & rs.fields("userid") & "'>Update</a>"
								response.write "</tr>"

							rs.movenext
						loop

						rs.close
						conn.close
					%>		
				</table>	
			</div>
	</body>
</html>

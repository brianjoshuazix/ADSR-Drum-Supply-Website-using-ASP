<%
set conn=server.CreateObject("adodb.connection")
conn.Open "DRIVER={MySQL ODBC 5.3 Unicode Driver}; SERVER=niepresjohnarrogante.cmu-online.tech; UID=cmuon_arrogante; PASSWORD=nHl#65u2; DATABASE=cmuonine_niepresjohnarrogante;"

sql="DELETE FROM users WHERE userid=" & request.querystring("uid")
conn.Execute sql

response.redirect("userslist.asp")
%>
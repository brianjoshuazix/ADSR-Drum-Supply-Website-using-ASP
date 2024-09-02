<%
set conn=server.createobject("adodb.connection")
conn.Open "DRIVER={MySQL ODBC 5.3 Unicode Driver}; SERVER=niepresjohnarrogante.cmu-online.tech; UID=cmuon_arrogante; PASSWORD=nHl#65u2; DATABASE=cmuonine_niepresjohnarrogante;"

sql="UPDATE users SET "
sql=sql & "complete_name='" & request.form("compname") & "',"
sql=sql & "uname='" & request.form("usrname") & "',"
sql=sql & "eml='" & request.form("email") & "',"
sql=sql & "pnum='" & request.form("pnumber") & "',"
sql=sql & "pw='" & request.form("pword") & "'"
sql=sql & " WHERE userid=" & request.form("usrid")

conn.Execute sql
response.redirect("userslist.asp")
%>
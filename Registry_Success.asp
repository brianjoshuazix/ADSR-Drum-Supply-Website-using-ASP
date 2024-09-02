<%
set conn=server.CreateObject("adodb.connection")
conn.Open "DRIVER={MySQL ODBC 5.3 Unicode Driver}; SERVER=niepresjohnarrogante.cmu-online.tech; UID=cmuon_arrogante; PASSWORD=nHl#65u2; DATABASE=cmuonine_niepresjohnarrogante;"

sql="INSERT INTO users (complete_name,uname,eml,pnum,pw)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("compname") & "',"
sql=sql & "'" & Request.Form("usrname") & "',"
sql=sql & "'" & Request.Form("email") & "',"
sql=sql & "'" & Request.Form("pnumber") & "',"
sql=sql & "'" & Request.Form("pword") & "')"

on error resume next
conn.Execute sql,recaffected
if err<>0 then
  Response.Write("No update permissions!")
else
  Response.Write("<h3>" & recaffected & " record added</h3>")
end if
conn.close

response.redirect("userslist.asp")
%>
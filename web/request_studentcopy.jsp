<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Student Copy Request</title>
<style type="text/css">
<!--
.style1 {
	font-size: x-large;
	color: #2A9FFF;
	font-weight: bold;
}
.style2 {font-size: large; color: #2A9FFF; font-weight: bold; }
.style3 {
	font-size: large;
	font-weight: bold;
	color: #000000;
}
.style4 {
	font-size: medium;
	color: #2A9FFF;
}
.style5 {
	font-size: large;
	color: #FF0000;
}
-->
</style>
</head>

<body>
<table width="1000" border="0" align="center">
  <tr>
    <td align="center"><table width="800" height="500" border="0">
      <tr>
        <td align="center" valign="top"><table width="600" border="0" align="center">
          <tr>
            <td width="104" rowspan="2"><img src="image/pgcrest.jpg" width="100" height="80" /></td>
            <td width="386" height="46"><div align="center" class="style1">THE POSTGRADUATE SCHOOL </div></td>
            <td width="96" rowspan="2"><img src="image/logo.PNG" width="100" height="80" /></td>
          </tr>
          <tr>
            <td><div align="center" class="style2">UNIVERSITY OF IBADAN, IBADAN </div></td>
          </tr>
          
        </table>
		 <div id="border" align="center" style=" border-style:solid; border-color:#2A9FFF; border-radius:3em; width:750px; height:300px">
		 <form method="post" action="">
		   <table width="700" border="0">
             <tr>
               <td colspan="2">&nbsp;</td>
               <td colspan="2"><div align="center" class="style3">REQUEST FORM </div></td>
               <td width="206">&nbsp;</td>
             </tr>
             <tr>
               <td colspan="2">&nbsp;</td>
               <td colspan="2"><div align="center" class="style5"><blink>Pls!!! Kindly fill in your Valid Email Address and Phone No </blink></div></td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td width="21">&nbsp;</td>
               <td width="170"><span class="style4">Student Email Address  : </span></td>
               <td width="268"><input name="student_email" type="text" id="student_email" size="40" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">Student Phone No  :</td>
               <td><input name="student_no" type="text" id="student_no" size="40" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
			  <tr>
               <td>&nbsp;</td>
               <td class="style4">Request Type: </td>
               <td><select name="request" id="request">
			    <option selected="selected" > ... Select One...</option>
	 		  <% try {
                  Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studtranscript",
            "root", "");
                  Statement stm = con.createStatement();
          ResultSet rs = stm.executeQuery("select type from request_type");
             while (rs.next()) {
             %>
            <option value="<%=rs.getString("type")%>"><%=rs.getString("type")%></option>
              <% }
             } catch (Exception e) {
                e.printStackTrace();
             }
            %>
                        
               </select>
               </td>
               <td colspan="2">&nbsp;</td>
             </tr>
               <td>&nbsp;</td>
               <td class="style4">&nbsp;</td>
               <td><input type="submit" name="Submit" value="Send Transcript" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
           </table>
		   </form>
			</div>
           <p>&nbsp;</p></td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>

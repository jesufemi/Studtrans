<%@page import="classes.Util"%>
<%@page import="classes.DbConn"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import ="java.sql.*" %>

	
			   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
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
.style5 {	font-size: large;
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
		 <div id="border" align="center" style=" border-style:solid; border-color:#2A9FFF; border-radius:3em; width:750px; height:500px">
		 <form method="post" action="applynew.jsp">
		   <table width="700" border="0">
             <tr>
               <td colspan="2">&nbsp;</td>
               <td colspan="2"><div align="center" class="style3">REQUEST FORM </div></td>
               <td width="112">&nbsp;</td>
             </tr>
             <tr>
               <td colspan="2">&nbsp;</td>
               <td width="366"><div align="center" class="style5"><blink>Pls!!! Kindly fill in your Valid Details </blink></div></td>
               <td width="41">&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td width="26">&nbsp;</td>
               <td width="133"><span class="style4">Matric Number: </span></td>
               <td><input name="matric_number" type="text" id="matric_number" size="40" /></td>
               <td colspan="2"> <input name="invoice" type="hidden" value="<%= (int) (Math.random() * (10000 * (8888/2))) %>" />			                 	</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">Surname:</td>
               <td><input name="surname" type="text" id="surname" size="40" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">Othernames:</td>
               <td><input name="othernames" type="text" id="othernames" size="40" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
			 <tr>
               <td>&nbsp;</td>
               <td class="style4">Gender:</td>
               <td><input name="gender" type="text" id="gender" size="40" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
			 <tr>
               <td>&nbsp;</td>
               <td class="style4">Maiden Name:</td>
               <td><input name="maiden" type="text" id="maiden" size="40" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">Faculty:</td>
               <td><select name="faculty" id="faculty">
			    <option selected="selected" > ... Select One...</option>           
               <%
                   ResultSet rs;
                          String dropDown = new Util().generateDropdown("select * from faculty", "id", "title");
                          %>
               <%=dropDown %>
                        
               </select>               </td>
               <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">Department: </td>
               <td><select name="dept" id="dept">
			    <option selected="selected" > ... Select One...</option>           
               <%
                   ResultSet rst;
                          String dropDowns = new Util().generateDropdown("select * from department", "id", "title");
                          %>
               <%=dropDowns %>
                        
               </select></td>
               <td colspan="2">&nbsp;</td>
             </tr>
			 <tr>
               <td>&nbsp;</td>
               <td class="style4">Programme:</td>
               <td><select name="programme" id="programme">
                 <option>Please Select</option>
                 <option>PGD</option>
                 <option>Masters</option>
                 <option>P.HD</option>
                              </select></td>
               <td colspan="2">&nbsp;</td>
             </tr>
			 <tr>
               <td>&nbsp;</td>
               <td class="style4">Degree:</td>
               <td><select name="degree" id="degree">
                 <option>Please Select</option>
                 <option>M.A</option>
                 <option>M.Sc</option>
                 <option>M.P.P</option>
               </select></td>
               <td colspan="2">&nbsp;</td>
             </tr>
			 <tr>
               <td>&nbsp;</td>
               <td class="style4">Session of Admission </td>
               <td><input name="session_add" type="text" id="session_add" size="40" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
			<tr>
               <td>&nbsp;</td>
               <td class="style4">Session of Graduation </td>
               <td><input name="session_grad" type="text" id="session_grad" size="40" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
			 <tr>
               <td>&nbsp;</td>
               <td class="style4">Request Type:</td>
               <td><select name="request_id" id="request_id">
			    <option selected="selected" > ... Select One...</option>
	 		  
            
            
               <%
                   ResultSet rsts;
                          String dropDows = new Util().generateDropdown("select * from request_type", "type_id", "type");
                          %>
               <%=dropDows %>
                        
               </select>               </td>
               <td colspan="2">&nbsp;</td>
             </tr>
			 
             <tr>
               <td>&nbsp;</td>
               <td class="style4">&nbsp;</td>
               <td>
			 
			   
			   
			   </td>
               <td colspan="2">	 </td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">&nbsp;</td>
               <td><input type="submit" name="Submit" value="SUBMIT" /></td>
               <td colspan="2"></td>
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

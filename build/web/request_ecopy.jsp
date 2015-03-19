<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>E-copy Request</title>
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
		 <form method="post" action="ecopy.jsp">
		   <table width="700" border="0">
             <tr>
               <td colspan="2">&nbsp;</td>
               <td colspan="3"><div align="center" class="style3">REQUEST FORM </div></td>
               <td width="115">&nbsp;</td>
             </tr>
             <tr>
               <td colspan="2">&nbsp;</td>
               <td colspan="2">&nbsp;</td>
               <td width="8">&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td width="25">&nbsp;</td>
               <td width="134"><span class="style4">Matric Number: </span></td>
               <td colspan="2"><input name="matric_number" type="text" id="matric_number" size="60" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">Surname:</td>
               <td colspan="2"><input name="surname" type="text" id="surname" size="60" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">Othernames:</td>
               <td colspan="2"><input name="othernames" type="text" id="othernames" size="60" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">Degree:</td>
               <td colspan="2"><select name="degree" id="degree">
                 <option>Please Select</option>
                 <option>M.A</option>
                 <option>M.Sc</option>
                 <option>M.P.P</option>
               </select>               </td>
               <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">Session of Admission: </td>
               <td colspan="2"><input name="sess" type="text" id="sess" size="60" /></td>
               <td colspan="2">&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td class="style4">&nbsp;</td>
               <td width="302"><input type="submit" name="Submit" value="Proceed" /></td>
               <td width="90">
			 
			   
			   
			   </td>
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

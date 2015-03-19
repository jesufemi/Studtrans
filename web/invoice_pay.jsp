 <%@ page import ="java.sql.*" %>
<%
    String surname = "";
    String othernames = "";
    String reques = "";
    String request_amount="";
    
    String matric_number =request.getParameter("matric_number");
    String invoice = request.getParameter("invoice");
 try    {
            Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studtranscript",
            "root", "");
String selectStoredProc = "SELECT * FROM transcript_requests WHERE matric_number = '"+matric_number+"' & invoice = '"+invoice+"' ";

                        PreparedStatement ps = con.prepareStatement(selectStoredProc);
                       
                    ResultSet rs=ps.executeQuery();
                    while(rs.next()) {
                     // id = rs.getString(1);

                      matric_number =rs.getString(12);
                        surname=rs.getString(2);
                      othernames=rs.getString(3);
                      invoice = rs.getString(26);
                       reques = rs.getString(29);
                        request_amount = rs.getString(30);
   
                    }
                    rs.close();
                    rs = null;
 }
 catch(Exception e){
                    
   System.out.println(e.getLocalizedMessage());
                }
                finally {     
                }
 
 

    %>
                             <%
 Connection con = null;
     Statement st = null;
            try{
               
              ResultSet rslt=st.executeQuery("SELECT * FROM transcript_request "
                      + "LEFT JOIN request_type ON transcript_request.request_id = request_type.type_id matric_number = '"+matric_number+"' & invoice = '"+invoice+"'" );
              //ResultSet rsl=st.executeQuery("SELECT * FROM course WHERE course = "+code);
              while(rslt.next()){
                  if(request_amount.isEmpty()){
                      request_amount = rslt.getString("amount");
                      reques=rslt.getString("request_type");
                  }
                  
                  
        %>
        <%
              }
            }catch(Exception e){

            }
        %>
     

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Invoice Page</title>
<style type="text/css">
<!--
.style1 {
	color: #2A9FFF;
	font-size: large;
}
.inv {
	color: #2A9FFF;
	font-size: xx-large;
	font-weight: bold;
}
.style3 {
	font-size: large;
	font-weight: bold;
}
.style4 {font-size: large}
.style5 {
	font-size: medium;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="1000" height="600" border="0" align="center">
  <tr>
    <td valign="top"><table width="800" border="0" align="center">
      <tr>
        <td width="130" rowspan="3"><div align="center"><img src="image/pgcrest.jpg" width="100" height="100" /></div></td>
        <td width="530" height="40"><div align="center" class="style1">UNIVERSITY OF IBADAN, IBADAN, NIGERIA </div></td>
        <td width="126" rowspan="3"><div align="center"><img src="image/logo.PNG" width="100" height="100" /></div></td>
      </tr>
      <tr>
        <td height="21"><div align="center" class="inv">THE POSTGRADUATE SCHOOL </div></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        </tr>
      
    </table>
      <table width="800" border="0" align="center">
        <tr>
          <td width="132">&nbsp;</td>
          <td colspan="2">&nbsp;</td>
          <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="6"><div align="center" class="style3"><u>INVOICE</u><span class="style4"> (PRINT this Invoice)</span></div></td>
        </tr>
        <tr>
          <td colspan="3">&nbsp;</td>
          <td width="96">&nbsp;</td>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2"><span class="style3">Matric No: </span></td>
          <td width="285"><div align="left" class="style3"><%=matric_number%></div></td>
          <td width="96"><span class="style3">Invoice No: </span></td>
          <td width="175"><div align="left" class="style3"><%=invoice%></div></td>
          <td width="76">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2"><strong>Surname: </strong></td>
          <td><div align="left" class="style3"><%= surname%></div></td>
          <td width="96">&nbsp;</td>
          <td colspan="2">&nbsp;</td>
        </tr>
         <tr>
          <td colspan="2"><strong>Othername:</strong></td>
          <td><div align="left" class="style3"><%= othernames%></div></td>
          <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3">&nbsp;</td>
        </tr>
      </table>      
      <table width="800" border="0" align="center">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="800" border="0" align="center" style="border:thin; border-color:#000000; border-style:solid">
        <tr>
          <td width="585" style="border:thin; border-color:#000000; border-style:solid"><div align="center" class="style3">Cost Item </div></td>
          <td style="border:thin; border-color:#000000; border-style:solid"><div align="center" class="style4"><strong>Charge(N)</strong></div></td>
        </tr>
        <tr>
          <td style="border:thin; border-color:#000000; border-style:solid"><%=reques%></td>
          <td width="201" style="border:thin; border-color:#000000; border-style:solid"><%=request_amount%></td>
        </tr>
        <tr>
          <td style="border:thin; border-color:#000000; border-style:solid">Transaction Charges </td>
          <td style="border:thin; border-color:#000000; border-style:solid">150</td>
        </tr>
        <tr>
          <td style="border:thin; border-color:#000000; border-style:solid"><div align="right"><strong>Total Charge </strong></div></td>
          <td style="border:thin; border-color:#000000; border-style:solid"><%%></td>
        </tr>
      </table>
      <table width="800" border="0" align="center">
        <tr>
          <td><div align="center" class="style4"><strong>Total Amount Due - </strong><%%></div></td>
        </tr>
      </table>
      <table width="800" border="0" align="center" style="border:thin; border-color:#000000; border-style:solid">

        <tr>
          <td colspan="3" style="border:thin; border-color:#000000; border-style:solid"><div align="center" class="style5">Please pay into University of Ibadan Postgraduate School Application Account</div></td>
        </tr>
        <tr>
          <td width="197" style="border:thin; border-color:#000000; border-style:solid"><div align="center"><strong>Bank</strong></div></td>
          <td width="286" style="border:thin; border-color:#000000; border-style:solid"><div align="center"><strong>Account No </strong></div></td>
          <td width="299" style="border:thin; border-color:#000000; border-style:solid"><div align="center"><strong>Hotline to Call if Challenges exist </strong></div></td>
        </tr>
        <tr>
          <td style="border:thin; border-color:#000000; border-style:solid">Unibadan Microfinance Bank Ltd. </td>
          <td style="border:thin; border-color:#000000; border-style:solid"><div align="center">1050000011</div></td>
          <td style="border:thin; border-color:#000000; border-style:solid"><div align="center">08062134345</div></td>
        </tr>
      </table>
       <table width="800" border="0" align="center">
        <tr>
          <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
          <td width="21">&nbsp;</td>
          <td width="734"><strong>Kindly print the invoice with its value and pay at  the above named bank. <u>Do not pay into other bank not listed here even though it was previously listed.</u> PG School is not liable for any money paid into any bank not in above list. Also keep a copy of your deposit slip. Don't send your deposit slip to PG School. </strong></td>
          <td width="31">&nbsp;</td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>


  <%@ page import ="java.sql.*" %>
<%
    String matric_number = request.getParameter("matric_number");   
    String surname = request.getParameter("surname");
    String degree = request.getParameter("degree");   
    String sess = request.getParameter("session");
    String othernames=request.getParameter("other_name");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studtranscript",
            "root", "");
    Statement st = con.createStatement();
    
    ResultSet rs;
    rs = st.executeQuery("select * from student where matric_number='" + matric_number + "' and surname='" + surname + "' and other_name='"+ othernames +"' and degree='" + degree +"' and sessionadm='"+ sess +"'");
    if (!rs.next()) { %>
   
   <html>
<style type="text/css">
<!--
.style1 {
	font-size: xx-large;
	font-weight: bold;
	color: #FF0000;
}
.style2 {
	color: #2A9FFF;
	font-style: italic;
	font-size: medium;
}
-->
</style>
</head>

<body>
<table width="1000" height="500" border="0" align="center">
  <tr>
    <td><table width="800" height="158" border="0" align="center">
      <tr>
        <td width="280">&nbsp;</td>
        <td colspan="2"><div align="center" class="style1">ERROR!!! </div></td>
        <td width="306">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="4"><div align="center" class="style2">Sorry!!! Record with Matric No:<%= matric_number %> not found in our database <a href="apply_new.jsp"> Click here</a> to apply for Transcript </div></td>
        </tr>
      <tr>
        <td colspan="4"><div align="center"></div></td>
        </tr>
      <tr>
        <td colspan="4"><div align="center"><span class="style2"><a href="request_ecopy.jsp">Click Here</a> to Goto Main Page </span></div></td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>



<% }else{
        response.sendRedirect("ecopy_proceed.jsp");   
    }
         
%>




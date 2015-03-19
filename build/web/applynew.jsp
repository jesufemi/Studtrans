<%@ page import ="java.sql.*" %>
 <%
String matric_number = request.getParameter("matric_number");   
String surname = request.getParameter("surname");
String othernames = request.getParameter("othernames");
String gender = request.getParameter("gender");   
String maiden = request.getParameter("maiden");
String faculty = request.getParameter("faculty");
String dept = request.getParameter("dept");   
String programme = request.getParameter("programme");
String degree = request.getParameter("degree");
String session_add = request.getParameter("session_add");   
String session_grad = request.getParameter("session_grad");
String special = null;
String paddress = null;
String collectb4 = null;
String collect_yr = null;
String institution = null;
String tel = null;
String email = null;
String trans = null;
String currency_type = null;
String qual_adm = null;
String requester = null;
String request_status = null;
//String date_requested = request.getParameter("date_requested");
String date_updated = "";
String invoice = request.getParameter("invoice");
String request_id = request.getParameter("request_id");
String request_cost = request.getParameter("request_id");

 
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studtranscript",
            "root", "");
    
    Statement st = con.createStatement();
    //ResultSet rs;
  
   String sql = "INSERT INTO transcript_requests(matric_number, surname, othernames, gender, maiden, faculty, dept, programme, degree, Yr_of_entry,invoice,Yr_obtained,date_requested,request_id,request_cost) VALUES ('" + matric_number + "','" + surname + "','" + othernames + "', '" + gender + "', '" + maiden + "', '" + faculty + "', '" + dept + "', '" + programme + "', '" + degree + "', '" + session_add + "','"+ invoice +"','" + session_grad + "',DATE_FORMAT(NOW(),'%b %d %Y %h:%i %p'), '" + request_id + "','" + request_cost + "')";
    int i = st.executeUpdate(sql);
    if (i > 0) {
        response.sendRedirect("invoice_pay.jsp?"+matric_number+"?"+invoice+"");
       //out.print("Registration Successfull!"+"Click to Print your "+"<a href="invoice_pay.jsp?matric_number="+matic_number+">"Invoice Slip</a>");
    } else {
         //out.print("Registration Successfull!"+"<a href='request_ecopy.jsp'>Go to Here</a>");
                out.print("Registration Not Successfull!"+"<a href='index.jsp'>Go to Here</a>");
    		}

%>
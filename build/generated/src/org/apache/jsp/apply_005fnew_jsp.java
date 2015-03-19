package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import classes.Util;
import classes.DbConn;
import java.sql.*;
import java.sql.*;

public final class apply_005fnew_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=iso-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\t\t   \n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write(".style1 {\n");
      out.write("\tfont-size: x-large;\n");
      out.write("\tcolor: #2A9FFF;\n");
      out.write("\tfont-weight: bold;\n");
      out.write("}\n");
      out.write(".style2 {font-size: large; color: #2A9FFF; font-weight: bold; }\n");
      out.write(".style3 {\n");
      out.write("\tfont-size: large;\n");
      out.write("\tfont-weight: bold;\n");
      out.write("\tcolor: #000000;\n");
      out.write("}\n");
      out.write(".style4 {\n");
      out.write("\tfont-size: medium;\n");
      out.write("\tcolor: #2A9FFF;\n");
      out.write("}\n");
      out.write(".style5 {\tfont-size: large;\n");
      out.write("\tcolor: #FF0000;\n");
      out.write("}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<table width=\"1000\" border=\"0\" align=\"center\">\n");
      out.write("  <tr>\n");
      out.write("    <td align=\"center\"><table width=\"800\" height=\"500\" border=\"0\">\n");
      out.write("      <tr>\n");
      out.write("        <td align=\"center\" valign=\"top\"><table width=\"600\" border=\"0\" align=\"center\">\n");
      out.write("          <tr>\n");
      out.write("            <td width=\"104\" rowspan=\"2\"><img src=\"image/pgcrest.jpg\" width=\"100\" height=\"80\" /></td>\n");
      out.write("            <td width=\"386\" height=\"46\"><div align=\"center\" class=\"style1\">THE POSTGRADUATE SCHOOL </div></td>\n");
      out.write("            <td width=\"96\" rowspan=\"2\"><img src=\"image/logo.PNG\" width=\"100\" height=\"80\" /></td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td><div align=\"center\" class=\"style2\">UNIVERSITY OF IBADAN, IBADAN </div></td>\n");
      out.write("          </tr>\n");
      out.write("                \n");
      out.write("        </table>\n");
      out.write("\t\t <div id=\"border\" align=\"center\" style=\" border-style:solid; border-color:#2A9FFF; border-radius:3em; width:750px; height:500px\">\n");
      out.write("\t\t <form method=\"post\" action=\"applynew.jsp\">\n");
      out.write("\t\t   <table width=\"700\" border=\"0\">\n");
      out.write("             <tr>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("               <td colspan=\"2\"><div align=\"center\" class=\"style3\">REQUEST FORM </div></td>\n");
      out.write("               <td width=\"112\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("               <td width=\"366\"><div align=\"center\" class=\"style5\"><blink>Pls!!! Kindly fill in your Valid Details </blink></div></td>\n");
      out.write("               <td width=\"41\">&nbsp;</td>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("               <td width=\"26\">&nbsp;</td>\n");
      out.write("               <td width=\"133\"><span class=\"style4\">Matric Number: </span></td>\n");
      out.write("               <td><input name=\"matric_number\" type=\"text\" id=\"matric_number\" size=\"40\" /></td>\n");
      out.write("               <td colspan=\"2\"> <input name=\"invoice\" type=\"hidden\" value=\"");
      out.print( (int) (Math.random() * (10000 * (8888/2))) );
      out.write("\" />\t\t\t                 \t</td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Surname:</td>\n");
      out.write("               <td><input name=\"surname\" type=\"text\" id=\"surname\" size=\"40\" /></td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Othernames:</td>\n");
      out.write("               <td><input name=\"othernames\" type=\"text\" id=\"othernames\" size=\"40\" /></td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("\t\t\t <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Gender:</td>\n");
      out.write("               <td><input name=\"gender\" type=\"text\" id=\"gender\" size=\"40\" /></td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("\t\t\t <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Maiden Name:</td>\n");
      out.write("               <td><input name=\"maiden\" type=\"text\" id=\"maiden\" size=\"40\" /></td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Faculty:</td>\n");
      out.write("               <td><select name=\"faculty\" id=\"faculty\">\n");
      out.write("\t\t\t    <option selected=\"selected\" > ... Select One...</option>           \n");
      out.write("               ");

                   ResultSet rs;
                          String dropDown = new Util().generateDropdown("select * from faculty", "id", "title");
                          
      out.write("\n");
      out.write("               ");
      out.print(dropDown );
      out.write("\n");
      out.write("                        \n");
      out.write("               </select>               </td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Department: </td>\n");
      out.write("               <td><select name=\"dept\" id=\"dept\">\n");
      out.write("\t\t\t    <option selected=\"selected\" > ... Select One...</option>           \n");
      out.write("               ");

                   ResultSet rst;
                          String dropDowns = new Util().generateDropdown("select * from department", "id", "title");
                          
      out.write("\n");
      out.write("               ");
      out.print(dropDowns );
      out.write("\n");
      out.write("                        \n");
      out.write("               </select></td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("\t\t\t <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Programme:</td>\n");
      out.write("               <td><select name=\"programme\" id=\"programme\">\n");
      out.write("                 <option>Please Select</option>\n");
      out.write("                 <option>PGD</option>\n");
      out.write("                 <option>Masters</option>\n");
      out.write("                 <option>P.HD</option>\n");
      out.write("                              </select></td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("\t\t\t <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Degree:</td>\n");
      out.write("               <td><select name=\"degree\" id=\"degree\">\n");
      out.write("                 <option>Please Select</option>\n");
      out.write("                 <option>M.A</option>\n");
      out.write("                 <option>M.Sc</option>\n");
      out.write("                 <option>M.P.P</option>\n");
      out.write("               </select></td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("\t\t\t <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Session of Admission </td>\n");
      out.write("               <td><input name=\"session_add\" type=\"text\" id=\"session_add\" size=\"40\" /></td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Session of Graduation </td>\n");
      out.write("               <td><input name=\"session_grad\" type=\"text\" id=\"session_grad\" size=\"40\" /></td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("\t\t\t <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">Request Type:</td>\n");
      out.write("               <td><select name=\"request_id\" id=\"request_id\">\n");
      out.write("\t\t\t    <option selected=\"selected\" > ... Select One...</option>\n");
      out.write("\t \t\t  \n");
      out.write("            \n");
      out.write("            \n");
      out.write("               ");

                   ResultSet rsts;
                          String dropDows = new Util().generateDropdown("select * from request_type", "type_id", "type");
                          
      out.write("\n");
      out.write("               ");
      out.print(dropDows );
      out.write("\n");
      out.write("                        \n");
      out.write("               </select>               </td>\n");
      out.write("               <td colspan=\"2\">&nbsp;</td>\n");
      out.write("             </tr>\n");
      out.write("\t\t\t \n");
      out.write("             <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">&nbsp;</td>\n");
      out.write("               <td>\n");
      out.write("\t\t\t \n");
      out.write("\t\t\t   \n");
      out.write("\t\t\t   \n");
      out.write("\t\t\t   </td>\n");
      out.write("               <td colspan=\"2\">\t </td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("               <td>&nbsp;</td>\n");
      out.write("               <td class=\"style4\">&nbsp;</td>\n");
      out.write("               <td><input type=\"submit\" name=\"Submit\" value=\"SUBMIT\" /></td>\n");
      out.write("               <td colspan=\"2\"></td>\n");
      out.write("             </tr>\n");
      out.write("           </table>\n");
      out.write("\t\t   </form>\n");
      out.write("\t\t\t</div>\n");
      out.write("           <p>&nbsp;</p></td>\n");
      out.write("        </tr>\n");
      out.write("    </table></td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

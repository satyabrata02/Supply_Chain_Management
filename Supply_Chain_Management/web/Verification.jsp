<%@ page language='java' import='java.sql.*' %>
<%
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");

    if(uname.length()!=0 && pwd.length()!=0)
     {
            if(uname.equals("Admin") && pwd.equals("Admin"))
                  response.sendRedirect("AdminForm.jsp");
            else
             {
               try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scms","root","root");
                    Statement stmt=con.createStatement();
                    String str="select * from client_table where usn='"+uname+"' and pwd='"+pwd+"'";
                    ResultSet rs=stmt.executeQuery(str);

                    String uid=""; String pwd1=""; String cust_id="";
                    if(rs.next())
                     {
                        cust_id=rs.getString("cust_id");	                
                    uid=rs.getString("usn");
                        pwd1=rs.getString("pwd");

                 } 

                      if(uname.equals(uid) && pwd.equals(pwd1))
                            {

                                    application.setAttribute("cust_id",cust_id);

                                    response.sendRedirect("c_login.jsp");
                            }
                              else
                     {
                out.println("<b><center>UserName/PassWord Not Matched....");
                out.println("<hr><a href='index.jsp'>Click Here </a> -> To Try Again");
                     }

            rs.close();
            stmt.close();
            con.close();


            }
                      catch(Exception e)
             {
           out.println("<b><center>UserName/PassWord Not Entered....");
           out.println("<hr><a href='index.jsp'>Click Here </a> -> To Try Again");
             }
             }
     }
    else
     {
           out.println("<b><center>UserName/PassWord Not Entered....");
           out.println("<hr><a href='index.jsp'>Click Here </a> -> To Try Again");
     }

%>
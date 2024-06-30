
<body background='Picture4.jpg'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	String name=request.getParameter("name");
	String productname=request.getParameter("productname");
	String comments=request.getParameter("comments");
        if(name.length()!=0  && productname.length()!=0)
	{
	    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scms","root","root");
            Statement stmt=con.createStatement();
            String str="insert into pfeedback values('"+name+"','"+productname+"','"+comments+"')";
	    stmt.execute(str);
            out.println("<b>Feedback Added Successfully......</b>");
            stmt.close();
            con.close();
	 }
        else
	 {
	       out.println("<b>Incomplete Data Values are Provided.....</b>");
	 }
    }
   catch(Exception e)
    {
	out.println("<b>Error in Saving the Feedback information....</b>"+e.toString());
    }
%>
</body>
	

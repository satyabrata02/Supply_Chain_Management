<body background='Picture4.jpg'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
    String cust_id=request.getParameter("cid");
	String firstname=request.getParameter("firstname");
	String middlename=request.getParameter("middlename");
	String lastname=request.getParameter("lastname");
        String gender=request.getParameter("gender");
	String street=request.getParameter("street");
	String city=request.getParameter("city");
	String pin=request.getParameter("pin");
	String state=request.getParameter("state");
	String c_number=request.getParameter("c_number");
	String mail_id=request.getParameter("mail_id");
	String a_mail_id=request.getParameter("a_mail_id");
	String usn=request.getParameter("usn");
	String pwd=request.getParameter("pwd");
//	String cmdp=request.getParameter("cmdp");
    String security_question=request.getParameter("security_question");
	String ans=request.getParameter("ans");
	String dob=request.getParameter("date");
        
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scms","root","root");
	Statement stmt=con.createStatement();
        String str="insert into client_table values('"+cust_id+"','"+firstname+"','"+middlename+"','"+lastname+"','"+gender+"','"+street+"','"+city+"','"+pin+"','"+state+"','"+c_number+"','"+ mail_id+"','"+a_mail_id+"','"+usn+"','"+pwd+"','"+security_question+"','"+ans+"')";
        stmt.execute(str);
        out.println("<b> Data Added Successfully......</b>");
        stmt.close();
        con.close();
	 
    }
   catch(Exception e)
    {
	out.println("<b>Error in Saving the  Data....</b>"+e.toString());
    }
%>
</body>
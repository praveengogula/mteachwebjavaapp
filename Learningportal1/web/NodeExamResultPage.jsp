<%-- 
    Document   : NodeExamResultPage
    Created on : Jan 17, 2015, 4:31:56 PM
    Author     : miracle
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body color="Wheat">
        
         <div class="container">

           
            <div class="jumbotron">
          <h2>Result Page</h2> 
        <%
        
            int jcount=0;
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = null;

            con = DriverManager.getConnection("jdbc:mysql://ap-cdbr-azure-east-c.cloudapp.net:3306/mteachdbcloud", "b9d02bea3a2c2f", "2f105eda");


            String a1 = request.getParameter("q1");
            PreparedStatement ps = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps.setString(1, "1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                String str1 = rs.getString(1);
                if (str1.equalsIgnoreCase(a1)) {
                    jcount++;
                }
            }

            String a2 = request.getParameter("q2");
            PreparedStatement ps2 = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps2.setString(1, "2");
            ResultSet rs2 = ps2.executeQuery();

            while (rs2.next()) {

                String str1 = rs2.getString(1);
                if (str1.equalsIgnoreCase(a2)) {
                    jcount++;
                }
            }


            String a3 = request.getParameter("q3");
            PreparedStatement ps3 = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps3.setString(1, "3");
            ResultSet rs3 = ps3.executeQuery();

            while (rs3.next()) {

                String str1 = rs3.getString(1);
                if (str1.equalsIgnoreCase(a3)) {
                    jcount++;
                }
            }

            String a4 = request.getParameter("q4");
            PreparedStatement ps4 = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps4.setString(1, "4");
            ResultSet rs4 = ps4.executeQuery();

            while (rs4.next()) {

                String str1 = rs4.getString(1);
                if (str1.equalsIgnoreCase(a4)) {
                    jcount++;
                }
            }
            String a5 = request.getParameter("q5");
            PreparedStatement ps5 = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps5.setString(1, "5");
            ResultSet rs5 = ps5.executeQuery();

            while (rs5.next()) {

                String str1 = rs5.getString(1);
                if (str1.equalsIgnoreCase(a5)) {
                    jcount++;
                }
            }
            
            
          
        %>


        <h2> Marks for Node examination <%=jcount%></h2>
       <span class="glyphicon glyphicon-circle-arrow-left"></span> <a href="Nodejs.html">Back</a>
         </div></div>
    </body>
</html>

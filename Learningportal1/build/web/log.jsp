<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    String Email = request.getParameter("Email");
    //out.println(Email);
    String Password = request.getParameter("Password");
    Class.forName("com.ibm.db2.jcc.DB2Driver");
    // out.println("driver is loaded");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mteachdb", "root", "root");
    //out.println("connection established");
    //System.out.println(Email);
    try {
        PreparedStatement stmt;
        stmt = con.prepareStatement("select Email,Password from UserDetails where Email=?");
        stmt.setString(1, Email);
        ResultSet rs = stmt.executeQuery();
        rs.next();
        String Email1 = rs.getString(1);
        // System.out.println(Email1);
        String Password1 = rs.getString(2);
        if ((Email != "") && (Password != "") && (Email.equals(Email1) && Password.equals(Password1))) {
            //out.write("login successful");
            response.sendRedirect("Nodejs.html");

        } else {
            // out.println("Login Failed");
            response.sendRedirect("login.html");
        }
    } catch (Exception e) {
        out.println("User does not exist");
    }

%>
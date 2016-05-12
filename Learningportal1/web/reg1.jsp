<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String Name = request.getParameter("Name");
//session.putValue("userid",user); 
    String Password = request.getParameter("Password");
    String PhoneNo = request.getParameter("PhoneNo");
    String Email = request.getParameter("Email");
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mteachdb", "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    int i = st.executeUpdate("insert into  UserDetails values ('" + Name + "','" + Password + "','" + Email + "','" + PhoneNo + "')");
    if (i > 0) {
        out.print("Registration Success");
    }

%>
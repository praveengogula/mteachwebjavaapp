<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String Name = request.getParameter("Name");
//session.putValue("userid",user); 
    String Password = request.getParameter("Password");
    String PhoneNo = request.getParameter("PhoneNo");
    String Email = request.getParameter("Email");
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://ap-cdbr-azure-east-c.cloudapp.net:3306/mteachdbcloud", "b9d02bea3a2c2f", "2f105eda");
    Statement st = con.createStatement();
    ResultSet rs;
    int i = st.executeUpdate("insert into  UserDetails values ('" + Name + "','" + Password + "','" + Email + "','" + PhoneNo + "')");
    if (i > 0) {
        out.print("Registration Success");
    }

%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String s=request.getParameter("val");
	if(s==null || s.trim().equals("")){
		out.print("please enter id");
	}else{
		int id=Integer.parseInt(s);
		out.print(id);
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","Admin#123");
		PreparedStatement ps=con.prepareStatement("select * from students where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			out.print(rs.getInt(1)+ " "+rs.getString(2)+ " "+rs.getInt(3));
			
		}
		con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
</body>
</html>
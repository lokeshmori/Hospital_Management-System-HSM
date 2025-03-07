<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.*" %>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card {
  box-shadow : 0 0 10px 0 rgba(0,0,0,0.5);
}
</style>
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container-fluid p-3">


<div class="row">

<div class="col-md-4 offset-md-4">
<div class="card paint-card">
<div class="card-body">
<p class="fs-3 text-center">Edit Doctor Details </p>


  
  
 
  <% int id=Integer.parseInt(request.getParameter("id"));
     DoctorDao dao2= new DoctorDao(DBConnect.getConn());
     Doctor d = dao2.getDoctorById(id);
  %>
  
  
  <form action="../updateDoctor" method="post">
   <div class="mb-3">
   <label class="form-lable">Full Name</label> <input type="text" value="<%=d.getFullName() %>"
   required name="fullname" class="form-control">
   </div>
  
  <div class="mb-3">
   <label class="form-lable">DOB</label> <input type="date" 
   required name="dob" class="form-control"
   value="<%= d.getDob()%>">
   </div>
   
   <div class="mb-3">
   <label class="form-lable">Qualification</label> <input type="text" 
   required name="qualification" class="form-control"
   value="<%= d.getQualification()%>">
         
   </div>
   
   
<div class="mb-3">
<label class="form-label">Specialist</label> <select name="specialist"
required class="form-control">

   <option><%=d.getSpecialist() %></option>
   
   <% SpecialistDao dao=new SpecialistDao(DBConnect.getConn());
     List<Specalist> list = dao.getAllSpecialist();
     
     for(Specalist s : list)
     {
    	 %>
    	 <option><%= s.getSpecialistName() %> </option>
   <%   
   }
   %>
   </select>
   </div>
   
   <div class="mb-3">
   <label class="form-lable">Email</label> <input type="text"
   required name="email" class="form-control" value="<%= d.getEmail() %>">
   </div>
   
   <div class="mb-3">
   <label class="form-lable">Mob No</label> <input type="text"
   required name="mobno" class="form-control" value="<%= d.getMobNo() %>">
   </div>
   
   <div class="mb-3">
   <label class="form-lable">password</label> <input type="password"
   required name="password" class="form-control" value="<%=d.getPassword() %>">
   </div>
   
   <input type="hidden" name="id" value=" <%=d.getId() %> " >
   
   <button type="submit" class="btn btn-primary col-md-12">Update</button>
  
  </form>

</div>
</div>
</div>

  

</div>
</div>


</body>
</html>
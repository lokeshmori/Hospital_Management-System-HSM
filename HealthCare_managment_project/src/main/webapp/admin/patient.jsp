<%@page import="com.dao.AppointmentDao"%>
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



   
<div class="col-md-12">
<div class="card paint-card">
<div class="card-body">
<p class="fs-3 text-center">Patient Details </p>

   
 

     <c:if test="${not empty sucMsg }">
 <p class="text-center text-success fs-3" role="alert">${sucMsg }</p>
  <c:remove var="sucMsg" scope="session"/>
 </c:if>
  
  
  <c:if test="${not empty errorMsg }">
  <p class="text-center text-danger fs-3">${errorMsg }</p>
  <c:remove var="errorMsg" scope="session"/>
  
  
  </c:if>


<table class="table"'>
<thead>
<tr>
<th scope="col">Full Name</th>
<th scope="col">Gender</th>
<th scope="col">Age</th>
<th scope="col">Appointment</th>
<th scope="col">Email</th>
<th scope="col">Diseases</th>
<th scope="col">Doctor Name</th>
<th scope="col">Address</th>
<th scope="col">Status</th>

</tr>
</thead>
 <tbody>
 <%
   AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
   DoctorDao   dao2 = new DoctorDao(DBConnect.getConn());
   List<Appointments> list = dao.getAllAppointment() ;
    for(Appointments d : list){
    	Doctor dp = dao2.getDoctorById(d.getDoctorId());
 %>
 <tr>
 
 <td><%= d.getFullName() %> </td>
 <td><%= d.getGender() %> </td>
 <td><%= d.getAge() %> </td>
 <td><%= d.getAppoinDate() %> </td>
 <td><%= d.getEmail() %> </td>
 <td><%= d.getDiseases() %> </td>
 <td><%= dp.getFullName() %> </td>
 <td><%= d.getAddress() %> </td>
 <td><%= d.getStatus() %> </td>
 
  
 

 </tr>
  <%}
    %>
 
 
 </tbody>

</table>


</div>
</div>


</body>
</html>
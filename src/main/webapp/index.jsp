<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index page</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/component/style.css">

<%@include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
  box-shadow : 0 0 10px 0 rgba(0,0,0,0.5);
}
</style>
</head>
<body>

<%@include file ="component/navbar.jsp" %>


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
  </div>
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/hosp2.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="img/hosp1.jpg" class="d-block w-100" alt="..."  height="600px">
    </div>
    
    <div class="carousel-item">
      <img src="img/mp.jpg" class="d-block w-100" alt="..."   height="600px">
    </div>
    
    <div class="carousel-item">
      <img src="img/po.jpg" class="d-block w-100" alt="..."   height="600px">
    </div>
    
         
    
    </div>
    
  
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


 <!-- Services Section -->
    <section class="services">
        <h2>Our Services</h2>
        <div class="service-cards">
            
            <div class="card">
                <h3>Inpatient Services</h3>
                <p>We provide comfortable and state-of-the-art facilities for inpatient care.</p>
            </div>
            <div class="card">
                <h3>Emergency Services</h3>
                <p>Our emergency department is open 24/7 to handle any urgent medical situations.</p>
            </div>
            <div class="card">
                <h3>Medical Research</h3>
                <p>there is own Medical Reserch center in which many type madician are made .</p>
            </div>
            <div class="card">
                <h3>100% Safety</h3>
                <p>this is multiSpecilist hospital there are all fecility availeble for patient with full sefety.</p>
            </div>
            <div class="card">
                <h3>Friendly Doctors</h3>
                <p>there are many kind of doctors that is specilist in there field with friendly bahavior.</p>
            </div>
            <div class="card">
                <h3>Clean Enviroment</h3>
                <p>there all the room flour  bad and enviroment are very clean Healty food provided by hospital.</p>
            </div>
            <div class="card">
                <h3>Outpatient Services</h3>
                <p>Our outpatient department offers a wide range of medical services to cater to your needs.</p>
            </div>
            
            
        </div>
    </section>
    
    
    



           

           
   
    <section class="serv">
        
        
                  <h1>Our Team</h1>
                  
                  
                   <div class="serv-cards">
                   
                   <div class="cards">
                
                 <img alt="" src="img/doc3.jpg" class="d-img" width="300px"  height="350px">
                 <h5> CEO </h5>
            </div>
            
            <div class="cards">
                
                <img alt="" src="img/doc2.png" class="d-img" width="300px" height="350px">
                <h5>Chief Doctor</h5>
                
                
            </div>
            <div class="cards">
                
                 <img alt="" src="img/doc1.jpg" class="d-img" width="300px"  height="350px">
                <h5>Chief Doctor</h5>
            </div>
            
            
            
            <div class="cards">
                
                 <img alt="" src="img/doc5.png" class="d-img" width="300px"  height="350px">
                <h5> Chief Doctor </h5> 
                 
            </div>
            
             <div class="cards">
                
                <img alt="" src="img/pos.jpeg" class="d-img" width="300px" height="350px">
                <h5>Chief Doctor</h5>
                
                
            </div>
            <div class="cards">
                
                 <img alt="" src="img/w-1.png" class="d-img" width="300px"  height="350px">
                <h5>Chief Doctor</h5>
            </div>
            
        </section>  
        
     
             
             
             
            
   
       <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Your Health, Our Priority</h1>
            <p>Providing comprehensive healthcare services with compassion and excellence.</p>
            <a href="user_appointment.jsp" class="btn-primary">Book an Appointment</a>
        </div>
    </section>
    
       

   
   
     <section class="services">
        
        
                <h2>About Our Hospital</h2>
                <p>Our hospital is committed to providing exceptional medical care, equipped with modern facilities and expert staff. We strive to make healthcare accessible and affordable for everyone.</p>
                  <p>Established Healthcare solutions provider, trusted by renowned clinics, hospitals, and multi-chain facilities, with a broad customer base spanning India and overseas.</p>
                  <p>Robust security protocols and data privacy policy safeguards customer data, ensuring confidentiality without any data commercialization.</p>
                  <p>Fully integrated software architecture with seamless data flow between departments for effortless patient data management.</p>
                  
            
    </section>




   </div>





</div>

<%@include file="component/footer.jsp" %>
</body>
</html>
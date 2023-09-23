<%-- 
    Document   : bid
    Created on : 09-Nov-2022, 3:45:11 pm
    Author     : bharat sharma
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<% 
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/FreeLation","root","bharatsharma@htmlpp123");  
    Statement stmt = con.createStatement();  
    ResultSet rs = stmt.executeQuery("select * from clientPostProject");   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FreeLancer - Bid</title>
        <link rel="url icon" href="Images/url_icon.png">
        <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
        
           <link rel="stylesheet" href="style.css">

    <style>
        table{
            width: 90%;
            margin-top: 120px;
            margin-bottom: 20px;
            margin-left: 70px;
        }
        table th{
        color: red;
        }
        
        nav{
            background-color: black;
        }
        
        form{
            margin: 20px 50px;
            border: 2px solid black;
        }
* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: red;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.6;
}

.registerbtn:hover {
  opacity: 1;
  transition: all 1s;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
marquee{
    margin: 0px 600px;
    color: red;
    font-size: 25px;
    font-weight: 1000;
}

    </style>
        
    </head>
    <body>
        
        <header>
      <nav>
        <div class="logo">
          <img src="Images/logo.png">
        </div>
     
            <ul>
                  <li><a href="#">Home</a></li>
                <li><a href="ourteam.html">About</a></li>
                <li><a href="contactus.html">Contact Us</a></li>
                <li><a href="profileupdate.html"><%=session.getAttribute("cname") %></a></li>
            </ul>
      </nav>
        
    </header>
           
            
            <section>
                <table border=1 width=50% height=50>
             <thead>

            <tr>
                <th>Client Name</th>
                <th>Client Email</th>
                <th>Tech Stack </th>
                <th>clientProjectReturnDate</th>
                <th>Age</th>
                <th>Repositorie</th>
                <th>Domain</th>
                <th>About Project</th>
                <th>Posted On</th>
            <tr>
        </thead>
            <%
             try 
         {  
             
             while (rs.next()) 
             {  
                 String clientName = rs.getString("clientName");  
                 String clientEmail = rs.getString("clientEmail");  
                 String clientWantsProjectType = rs.getString("clientWantsProjectType"); 
                 int clientProjectReturnDate = Integer.parseInt(rs.getString("clientProjectReturnDate"));
                 int clientAge = Integer.parseInt(rs.getString("clientAge"));
                 String clientWantsWhichApplictaion = rs.getString("clientWantsWhichApplictaion"); 
                 String clientRepositories = rs.getString("clientRepositories"); 
                 String clientAboutProject = rs.getString("clientAboutProject"); 
                 String clientPostProjectDateAndTime = rs.getString("clientPostProjectDateAndTime"); 
                 
                 out.println("<tr><td>" + clientName + "</td><td>" + clientEmail + "</td><td>" + clientWantsProjectType + "</td><td>" + clientProjectReturnDate + "</td><td>" + clientAge + "</td><td>" + clientRepositories + "</td><td>" + clientWantsWhichApplictaion + "</td><td>" + clientAboutProject + "</td><td>" + clientPostProjectDateAndTime +"</td></tr>");   
             }  
           
            }  
             catch (Exception e) 
            {  
             out.println("error");  
         }  

            %>      
            
        </table>
            </section>
            
            
           
            <marquee behavior="" direction="">BID HERE!!!</marquee>
        
            
            <section>
                <form action="freelancerBidsProject" method="post">
                     <div class="container">
    <h1>Bid Here</h1>
    <hr>

    <input type="text" placeholder="Your Email" name="freelancerEmail" id="email" required>

    <input type="text" placeholder="Client Email" name="clientEmail" id="email" required>

    <input type="text" placeholder="Domain" name="domain" id="email" required>
    
     <input type="text" placeholder="Tech Stack" name="techStack" id="email" required>
    
    <select name="priceRange">
        <option>Price Range in $:</option>
         <option name="1">1-5</option>
         <option name="2">10-20</option>
         <option name="3">50-100</option>
         <option name="4">100-500</option>
         <option name="5">Above 500</option> 
    </select>
   
    <button type="submit" class="registerbtn">Bid</button>
  </div>

                </form>
                
            </section>
            
            <footer class="footer">
        <div class="containerrr">
          <div class="roww">
            <div class="footer-col">
              <h4>company</h4>
              <ull>
                <li><a href="#">our services</a></li>
                <li><a href="#">how it works</a></li>
                <li><a href="#">affiliate program</a></li>
                <li><a href="#">freeLation reviews</a></li>
              </ull>
            </div>
            <div class="footer-col">
              <h4>about us</h4>
              <ull>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">careers</a></li>
                <li><a href="#">privacy policy</a></li>
                <li><a href="#">terms of service</a></li>
              </ull>
            </div>
            <div class="footer-col">
              <h4>get support</h4>
              <ull>
                <li><a href="#">help & support</a></li>
                <li><a href="#">trust & safety</a></li>
              </ull>
            </div>
            <div class="footer-col">
              <h4>follow us</h4>
              <div class="social-links">
                <a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                <a href="https://twitter.com/i/flow/login"><i class="fab fa-twitter"></i></a>
                <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
                <a href="https://in.linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                
              </div>
            </div>
          </div>
        </div>
        <p class="copyright">Copyright FreeLation @ 2022</p>
     </footer>
    </body>
</html>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
  <title>FreeLation - Post Project</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" type="text/css" href="clientPostProject.css">
  <link rel="url icon" href="Images/url_icon.png">
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>

<body>
  <header>
    <nav>
      <div class="logo">
        <img src="Images/logo.png">
      </div>
      <ul>
        <li><a href="afterClientLogin.jsp">Home</a></li>
        <li><a href="ourteam.html">About</a></li>
        <li><a href="contactus.html">Contact Us</a></li>
        <li><a href="profileupdate.html">Bharat Sharma</a></li>
      </ul>
    </nav>

  </header>

  <div class="container">
    <form action="clientPostProject" method="post">
      <div class="one">
        <input class="inputOne" type="text" name="clientName" required placeholder="Enter your name">
        <input class="inputTwo" type="text" name="clientEmail" required placeholder="Enter your email">
      </div>

      <div class="two">
        <textarea cols="30" rows="4" required name="clientWantsProjectType" placeholder="Technology stack"></textarea>
      </div>

      <div class="three">
        <input type="number" required name="clientProjectReturnDate" placeholder="Days of return">
        <input type="number" required name="clientAge" placeholder="Age">
      </div>

      <div class="four">
        <div>Gender</div>
        <div>
          <span>Male</span><input type="radio" required value="Male" name="clientGender">
          <span>Female</span><input type="radio" required value="Female" name="clientGender">
          <span>Not prefer to say</span><input required value="Trans" type="radio" name="clientGender">
        </div>
      </div>

      <div class="five">
        <input type="url" name="clientRepositories" placeholder="Link for post of project">
        <select name="clientWantsWhichApplictaion" id="">
          <option>choose domain</option>
          <option required value="WebPage">WebPage</option>
          <option required value="Android">Android</option>
          <option required value="Graphics">Graphics</option>
        </select>
      </div>

      <div class="six">
        <textarea cols="30" rows="4" name="clientAboutProject" placeholder="Enter about project"></textarea>
      </div>

      <div class="seven">
        <input type="submit" value="Post Project">
      </div>
    </form>
  </div>

  </section>
  <script type="text/javascript">
    window.addEventListener("scroll", function () {
      var header = document.querySelector("nav");
      header.classList.toggle("sticky", window.scrollY > 0);
    })
  </script>



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
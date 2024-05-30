<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="jakarta.servlet.http.HttpServlet" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Hospital</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="images/favicon_image.png" rel="icon">
 
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  
  <style>
     <%@ include file="CSS/homeStyle.css"%>
  </style>
  
  </head>

<body>
  <!------------------------------------------------  Top Bar ------------------------------------->

  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">

      <div class="contact-info d-flex align-items-center">
          <i class="bi bi-envelope"></i><a href="mailto:swapnil.khartode07@gmail.com">hospital@gmail.com</a>
          <i class="bi bi-phone"></i> +91 9620 60700 55

      </div>

      <div class="social-links d-none d-lg-flex align-items-center">
                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
      </div>
    </div>
  </div>

  <!------- ================= Header ======================================-->

  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">
      <h1 class="logo me-auto"><a href="homepage.htm">Hospital</a></h1>
        <!-- Navbar Starts -->
      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto" href="#departments">Departments</a></li>
          <li><a class="nav-link scrollto" href="#doctors">Doctors</a></li>
          <li><a class="nav-link scrollto" href="#gallery">Gallery</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
    </ul>
    <i class="bi bi-list mobile-nav-toggle "></i>
    
  </nav>   <!--NavBar-->
   
   <a href="login.jsp" class="appointment-btn scrollto"><span class="d-none d-md-inline">Login</span></a>
    </div>
  </header>         <!--End Header-->

  <!--Hero Section-->
   <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <h1>Welcome to Hospital</h1>
      <h2>We are team of highly experienced and qualified personnel</h2>
      <a href="#about" class="btn-get-started scrollto">Get Started</a>
    </div>
   </section><!--End Hero-->

    <main id="main">

      <!--Why Us Section-->
      <section id="why-us" class="why-us">
           <div class="container">
               <div class="row">
                <div class="col-lg-4 d-flex align-items-stretch">
                       <div class="content">
                        <h3>Why Choose Hospital?</h3>
                        <p>We aim to provide best possible medical care in the lowest cost possible.
                           We have low competative price and best quality assured.
                           Also we have advanced technology based fully computerized laboratory having departments Pathology, Cardiology, etc.
                          </p>

                          <div class="text-center">
                            <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
                          </div>
                       </div>

                </div>

                <div class="col-lg-8 d-flex align-items-stretch">
                  <div class="icon-boxes d-flex flex-column justify-content-center">
                    <div class="row">
                      <div class="col-xl-4 d-flex align-items-stretch">
                        <div class="icon-box mt-4 mt-xl-0">
                          <i class="bx bx-receipt"></i>
                          <h4>Emergency</h4>
                          <p>We have talented doctors to manage our emergency assistance service 24 hours a day.</p>
                        </div>
                      </div>
                      <div class="col-xl-4 d-flex align-items-stretch">
                        <div class="icon-box mt-4 mt-xl-0">
                          <i class="bx bx-cube-alt"></i>
                          <h4>Quality Standards</h4>
                          <p>We strive to provide the patients with the best possible treatment.</p>
                        </div>
                      </div>
                      <div class="col-xl-4 d-flex align-items-stretch">
                        <div class="icon-box mt-4 mt-xl-0">
                          <i class="bx bx-images"></i>
                          <h4>Perioperative Care</h4>
                          <p>The goal is to provide better conditions for patients before operation.</p>
                        </div>
                      </div>
                    </div>
                  </div><!-- End .content-->
                </div>
               </div>

           </div>

      </section>
<!--About Section-->
      <section id="about" class="about">
         
        <div class="container-fluid">

          <div class="row">
              <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch position-relative">
                <a href="https://youtu.be/7YQuzw0Mk9U?si=i-ECpI5rUiFfpT4j" class="glightbox play-btn mb-4"></a>

              </div>
               
              <div class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
                <h3>About Us</h3>
                <p>Hospital & Research Center is a multispeciality tertiary care hospital in Pune, presently has 300 beds and is situated in a central location, with easy access to the City.</p>
                  
                 <div class="icon-box">
                     <div class="icon"><i class="bi bi-eye"></i></div>
                     <h4 class="title"><a href="#">Our Vision</a></h4>
                     <p class="description">To be the most trusted healthcare partner for people through our unsurpassed quality & care and by striving to provide accessible, affordable healthcare service.</p>
                 </div>

                 <div class="icon-box">
                  <div class="icon"><i class="bi bi-bullseye"></i></div>
                  <h4 class="title"><a href="#">Our Mission</a></h4>
                  <p class="description">
                    To provide comprehensive patient care by working as a team and offering highest standards of medical service in an ethical manner.
                  </p>
                 </div>

                 <div class="icon-box">
                   <div class="icon"><i class="bi bi-gem"></i></div>
                   <h4 class="title"><a href="#">Our Core Values</a></h4>
                   <p class="description">Focus on patient and patient care. Treating all people with respect and dignity.Creating value for the society we live in.
                   </p>

                 </div>
              </div>
          </div>
        </div>    


      </section>          <!--End About Section-->

      <!-- ===========Counts Section ================----->
      <section id="counts" class="counts">
        <div class="container">
  
          <div class="row">
  
            <div class="col-lg-3 col-md-6">
              <div class="count-box">
                <i class="fas fa-user-md"></i>
                <span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="1" class="purecounter"></span>
                <p>Doctors</p>
              </div>
            </div>
  
            <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
              <div class="count-box">
                <i class="far fa-hospital"></i>
                <span data-purecounter-start="0" data-purecounter-end="18" data-purecounter-duration="1" class="purecounter"></span>
                <p>Departments</p>
              </div>
            </div>
  
            <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
              <div class="count-box">
                <i class="fas fa-flask"></i>
                <span data-purecounter-start="0" data-purecounter-end="12" data-purecounter-duration="1" class="purecounter"></span>
                <p>Research Labs</p>
              </div>
            </div>
  
            <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
              <div class="count-box">
                <i class="fas fa-award"></i>
                <span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1" class="purecounter"></span>
                <p>Awards</p>
              </div>
            </div>
  
          </div>
  
        </div>
      </section>  <!--End of count Section-->
      
      
      <!-- ============== Services Section ===========-->

      <section id="services" class="services">

        <div class="container">

          <div class="section-title">
            <h2>Services</h2>
            <p>At Hospital Services , we prioritize your health and well-being. Our Dedicated team of professionals is here to provide exceptional medical care tailored to your needs.</p>
          </div>

          <div class="row">

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
               <div class="icon-box">
                <div class="icon"><i class="fa-solid fa-stethoscope"></i></div>
                <h4><a href="#">General Medicine</a></h4>
                <p>The Department of Medicine is committed to setting the highest standards for patient care
                   and training. We are devoted to advancing the science of medicine by developing new methods
                    to diagnose and treat all aspects of human disease and to provide good and comforting health
                     care to all our patients. Providing outstanding, innovative clinical care to every patient is our guiding principle.</p>
               </div>
            </div>
    
            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                  <div class="icon-box">
                        <div class="icon"><i class="fa-solid fa-virus-covid"></i></div>
                        <h4><a href="#">Infectious Diseases</a></h4>
                        <p>At our Infectious Diseases Unit in Pune, our foremost priority is the prevention 
                          of disease transmission. We are dedicated to providing internationally recognized 
                          infection control programs and practices to minimize the risk associated with infection spread. Our team comprises highly qualified Hospital infection control officers and Infection control nurses, committed to upholding 
                          safe infection prevention practices and continuously seeking improvement.</p>

                  </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
              <div class="icon-box">

                <div class="icon"><i class="fa-solid fa-lungs"></i></div>
                  <h4><a href="">Lungs Transplant</a></h4>
                  <p>Lung transplantation is gaining widespread acceptance as the preferred
                     therapeutic option for selected cases of end-stage lung disease in India.
                      The indications of lung transplantation are increasing, with better post-operative survival,
                     including the COVID affected lung, if we choose our patients well. </p>
              </div>
        </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                  <div class="icon-box">

                    <div class="icon"><i class="fas fa-dna"></i></div>
                      <h4><a href="">Spine Surgery</a></h4>
                      <p>Spine surgeons at the KIMS Department of Spine Surgery combine experience,
                         expertise and innovation to offer the most appropriate surgical approaches
                          for treating difficult spine conditions. They provide a full spectrum of adult cervical, thoracic and lumbar procedures for the treatment of degenerative, inflammatory and neoplastic conditions of the spine, as well
                         as for spinal trauma and deformity, including scoliosis and spondylolistesis. </p>
                  </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
              <div class="icon-box">

                <div class="icon"><i class="fa-solid fa-tooth"></i></div>
                  <h4><a href="">Dental</a></h4>
                  <p>The Dentistry Department at Sahyadri Hospital treats both children’s and adults’ dental issues. The professionals examine the patient’s needs and condition to provide multidisciplinary care. We have a team of licensed dental specialists who provide routine care and special practices to ensure treatment for every dental problem. In addition, our specialists help the patient manage issues relating to dental hygiene, dental oncology, dental sleep medicine, etc. </p>
              </div>
        </div>

        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
          <div class="icon-box">

            <div class="icon"><i class="fa-solid fa-bone"></i></div>
              <h4><a href="">Orthopedagogy</a></h4>
              <p>Jupiter stands as the foremost orthopaedic hospital in Pune, providing 
                unparalleled care for musculoskeletal conditions. Our commitment to excellence
                 is underlined by our medical facilities and our team of adept orthopaedic
                  surgeons. Focused on treating a diverse range of musculoskeletal issues,
                   our multidisciplinary team, including orthopaedic surgeons, physiotherapists, 
                   orthopaedic traumatologists, and dedicated supporting staff, employs sophisticated diagnostic, surgical, and therapeutic techniques.</p>
          </div>
           </div>

          </div>
        </div>
      </section>
      
      
       <!-- ======= Departments Section ======= -->
    <section id="departments" class="departments mt-5">
      <div class="container">

        <div class="section-title">
          <h2>Departments</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row gy-4">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">Cardiology</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-2">Neurology</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-3">Dental</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-4">Pediatrics</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-5">Eye Care</a>
              </li>
            </ul>
          </div>
          <div class="col-lg-9">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Cardiology</h3>
                    <p class="fst-italic">Cardiology is a branch of medicine that deals with disorders of the heart and the cardiovascular system. </p>
                    <p>The field includes medical diagnosis and treatment of congenital heart defects, coronary artery disease, heart failure, valvular heart disease, and electrophysiology. Physicians who specialize in this field of medicine are called cardiologists, a specialty of internal medicine. Pediatric cardiologists are pediatricians who specialize in cardiology. </p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="images/cardiology.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Neurology</h3>
                    <p class="fst-italic">Neurology is the branch of medicine concerned especially with the structure, function, and diseases of the nervous system.</p>
                    <p>Our medical facility routinely encounters patients contending with a spectrum of brain, spine, and nerve ailments. In our rapidly evolving world, where research and treatment methodologies continuously advance, specialized expertise become indispensable in addressing complex neurological conditions.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="images/departments-2.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Dental</h3>
                    <p class="fst-italic">International standard of dental care</p>
                    <p>Hospital provides a wide range of dental treatments and services. With a team of experienced dentists and advanced technology, 
We are a leading multi-speciality dental clinic delivering international standards of dental care to thousands of patients.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="images/dental.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-4">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Pediastrics</h3>
                    <p class="fst-italic">Pediatrics is the branch of medicine that involves the medical care of infants, children,and young adults.</p>
                    <p>Our team, comprising highly experienced and dedicated paediatric specialists, collaborates seamlessly with professionals from diverse medical disciplines. This collaborative effort results in unparalleled and personalised treatment plans designed for paediatric patients facing a myriad of medical conditions. .</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="images/pediastrics.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-5">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Eye Care</h3>
                    <p class="fst-italic">An eye care professional is an individual who provides a service related to the eyes or vision.</p>
                    <p> Eye Care offers the best lasik surgery in Pune, with minimal pain and downtime.

The surgeons are highly trained and experienced in performing all types of lasik surgeries.

The clinic uses state-of-the-art technology, such as the Femtosecond laser, to perform precise lasik procedures.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="images/eye-checkup.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>
    
    
    
    
      <!-- ======= Doctors Section ======= -->
    <section id="doctors" class="doctors">
      <div class="container">

        <div class="section-title">
          <h2>Doctors</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="images/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Dr. AKOLE PRASAD</h4>
                <span>Chief Medical Officer</span>
                <p>MBBS M.S.(Gen. Surg),M.Ch.(PI.Surg)</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4 mt-lg-0">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="images/doctors/doctors-2.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Dr. PILLAY USHA</h4>
                <span>Psychialogist</span>
                <p>MBBS D.P.M., PG DIP PSYCH (UK), MRCP (UK)</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="images/doctors/doctors-3.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Dr. DHOPESHWARKAR RAJESH</h4>
                <span>Cardiology</span>
                <p>MBBS MD(MEDICINE), DM(CARDIOLOGY)</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="images/doctors/doctors-4.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Dr. ARORA SONALI</h4>
                <span>Surgeon</span>
                <p>MBBS DNB(Gen. Surg), M.Ch.( Surgical Oncology )</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Doctors Section -->
    
     <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery mt-5">
      <div class="container">

        <div class="section-title">
          <h2>Gallery</h2>
           
        </div>
      </div>

      <div class="container-fluid">
        <div class="row g-0">

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="images/gallery/gallery-1.jpg" class="galelry-lightbox">
                <img src="images/gallery/gallery-1.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="images/gallery/gallery-2.jpg" class="galelry-lightbox">
                <img src="images/gallery/gallery-2.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="images/gallery/gallery-3.jpg" class="galelry-lightbox">
                <img src="images/gallery/gallery-3.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="images/gallery/gallery-4.jpg" class="galelry-lightbox">
                <img src="images/gallery/gallery-4.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="images/gallery/gallery-5.jpg" class="galelry-lightbox">
                <img src="images/gallery/gallery-5.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="images/gallery/gallery-6.jpg" class="galelry-lightbox">
                <img src="images/gallery/gallery-6.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="images/gallery/gallery-7.jpg" class="galelry-lightbox">
                <img src="images/gallery/gallery-7.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="images/gallery/gallery-8.jpg" class="galelry-lightbox">
                <img src="images/gallery/gallery-8.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Gallery Section -->
    
    
    
    
     <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Medilab</h3>
            <p>
              Nagar Road <br>
              Pune, 413433<br>
              Maharashtra, India <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> hospital@gmail.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Departments</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Doctors</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">General Medicine</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Infectious Disease</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Lungs Transplant</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Dental</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Spine Surgery</a></li>
            </ul>
          </div>
          
          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Departments</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Cardiology</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Pediastrics</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Neurology</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Dental</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Eye Care</a></li>
            </ul>
          </div>

          

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>Hospital</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
         
          Designed by <a>Hospital</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

    </main>

   
   
   
   
   
  <script src="vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/glightbox/js/glightbox.min.js"></script>
  <script src="vendor/swiper/swiper-bundle.min.js"></script>
  <script src="JS/main.js"></script>

</body>

</html>
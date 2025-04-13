<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ include file="includes/connect.jsp"%>
<%
String loggedInUser = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us | Property Management System</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">

<!-- Custom Styles -->
<style>
body {
	padding-top: 80px;
}

.navbar-brand img {
	width: 80px;
	border-radius: 50%;
}

.contact-card {
	border: none;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
}

.footer-links a {
	color: white;
	text-decoration: none;
	transition: 0.3s;
}

.footer-links a:hover {
	color: #f8d210;
}

.social-icons a {
	font-size: 1.5rem;
	margin-right: 15px;
	color: white;
	transition: 0.3s;
}

.social-icons a:hover {
	color: #f8d210;
}
</style>
</head>
<body>

	<!-- Navigation Bar -->
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
			style="background-color: #f8f9fa; border-bottom: 1px solid #ddd;">
			<div class="container">
				<a class="navbar-brand" href="#"> <img
					src="image/property-logo.png" alt="Property Management System Logo"
					style="width: 100px; border-radius: 50%;">
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"
						style="background-color: #007bff;"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link" href="index.jsp"
							style="color: #333; font-weight: 500;">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="contact.jsp"
							style="color: #333; font-weight: 500;">Contact Us</a></li>



					</ul>
				</div>
			</div>
		</nav>
	</header>


	<!-- Contact Us Section -->
<section class="container my-5">
	<div class="row justify-content-center">
		<div class="col-lg-8 col-md-10">
			<div class="card contact-card p-4">
				<h3 class="text-center mb-4">Get in Touch</h3>
				<form id="contactForm" action="contact_process.jsp" method="post" novalidate>
					
					<div class="mb-3">
						<label class="form-label">Your Name</label>
						<input type="text" class="form-control" name="name" id="name" placeholder="Enter your name" required>
						<small class="text-danger" id="nameError"></small>
					</div>

					<div class="mb-3">
						<label class="form-label">Your Email</label>
						<input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
						<small class="text-danger" id="emailError"></small>
					</div>

					<div class="mb-3">
						<label class="form-label">Your Phone Number</label>
						<input type="text" class="form-control" name="phone" id="phone" placeholder="Enter your phone number" required>
						<small class="text-danger" id="phoneError"></small>
					</div>

					<div class="mb-3">
						<label class="form-label">Your Message</label>
						<textarea class="form-control" name="message" id="message" rows="5" placeholder="Enter your message" required></textarea>
						<small class="text-danger" id="messageError"></small>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary btn-lg">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<!-- JavaScript for Validation -->
<script>
document.getElementById("contactForm").addEventListener("submit", function(e) {
	let isValid = true;

	// Get form fields
	let name = document.getElementById("name").value.trim();
	let email = document.getElementById("email").value.trim();
	let phone = document.getElementById("phone").value.trim();
	let message = document.getElementById("message").value.trim();

	// Clear previous errors
	document.getElementById("nameError").innerText = "";
	document.getElementById("emailError").innerText = "";
	document.getElementById("phoneError").innerText = "";
	document.getElementById("messageError").innerText = "";

	// Name validation (only letters and spaces, at least 3 characters)
	if (!/^[a-zA-Z\s]{3,}$/.test(name)) {
		document.getElementById("nameError").innerText = "Enter a valid name (at least 3 letters).";
		isValid = false;
	}

	// Email validation
	if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
		document.getElementById("emailError").innerText = "Enter a valid email address.";
		isValid = false;
	}

	// Phone number validation (10 digits)
	if (!/^\d{10}$/.test(phone)) {
		document.getElementById("phoneError").innerText = "Phone number must be 10 digits.";
		isValid = false;
	}

	// Message validation (at least 10 characters)
	if (message.length < 10) {
		document.getElementById("messageError").innerText = "Message must be at least 10 characters.";
		isValid = false;
	}

	if (!isValid) {
		e.preventDefault(); // Prevent form submission if errors exist
	}
});
</script>

	<!-- Footer Section -->
	<footer class="bg-dark text-white pt-5 pb-4">
		<div class="container text-center text-md-start">
			<div class="row">
				<!-- About Section -->
				<div class="col-md-4 col-lg-4 col-xl-4 mx-auto mb-4">
					<h5 class="text-uppercase fw-bold mb-4">
						<img src="image/property-logo.png" alt="Logo"
							style="width: 100px; height: 100px; align: center; margin-right: 10px;">
					</h5>
					<p style="font-size: 1.1em;">Your trusted partner in finding
						the perfect property.</p>
				</div>

				<!-- Quick Links -->
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
					<h5 class="text-uppercase fw-bold mb-4">Quick Links</h5>
					<ul class="list-unstyled" style="font-size: 1.1em;">
						<li><a href="index.jsp"
							class="text-white text-decoration-none">Home</a></li>
						<li><a href="#about" class="text-white text-decoration-none">About
								Us</a></li>
						<li><a href="#properties"
							class="text-white text-decoration-none">Properties</a></li>
						<li><a href="gallery.jsp"
							class="text-white text-decoration-none">Gallery</a></li>
						<li><a href="contact.jsp"
							class="text-white text-decoration-none">Contact Us</a></li>
					</ul>
				</div>

				<!-- Contact Information -->
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-4">
					<h5 class="text-uppercase fw-bold mb-4">Get In Touch</h5>
					<p style="font-size: 1.1em;">
						123 Property Street,<br> City Center,<br> Country -
						12345
					</p>
					<p style="font-size: 1.1em;">
						<i class="bi bi-telephone-fill"></i> +91-1020304050
					</p>
					<p style="font-size: 1.1em;">
						<i class="bi bi-envelope-fill"></i> info@propertymanagement.com
					</p>
				</div>

				<!-- Social Links -->
				<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mb-4">
					<h5 class="text-uppercase fw-bold mb-4">Follow Us</h5>
					<div class="mt-3">
						<a href="#" class="text-white me-3 fs-4"><i
							class="bi bi-facebook"></i></a> <a href="#"
							class="text-white me-3 fs-4"><i class="bi bi-instagram"></i></a>
						<a href="#" class="text-white me-3 fs-4"><i
							class="bi bi-linkedin"></i></a> <a href="#" class="text-white fs-4"><i
							class="bi bi-youtube"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2); font-size: 1.1em;">
			© 2025 Property Management System | All Rights Reserved</div>
	</footer>


	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

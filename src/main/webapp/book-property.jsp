<%@ page import="java.sql.*, java.io.*, java.text.SimpleDateFormat"%>
<%@ include file="includes/connect.jsp"%>
<%@ page import="com.pms.model.UserDetails"%>

<%
System.out.println("Request method: " + request.getMethod()); // Debugging line
System.out.println("Session: " + request.getMethod()); // Debugging line

if ("POST".equalsIgnoreCase(request.getMethod())) {
	PreparedStatement pstmt = null;

	try {
		// Ensure user is logged in
		UserDetails user = (UserDetails) session.getAttribute("userDetails");
		if (user == null) {
	response.sendRedirect("login.jsp?msg=Session expired.");
	return;
		}

		out.println("Welcome " + user.getUsername() + " (" + user.getEmail() + ")");

		// Get parameters
		int propertyId = Integer.parseInt(request.getParameter("property_id"));
		String bookingDateStr = request.getParameter("booking_date");
		String status = request.getParameter("status");

		// Convert booking date
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date parsedDate = sdf.parse(bookingDateStr);
		java.sql.Timestamp bookingDate = new java.sql.Timestamp(parsedDate.getTime());

		// Insert query
		String sql = "INSERT INTO bookings (property_id, user_id, booking_date, status) VALUES (?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, propertyId);
		pstmt.setInt(2, user.getUserId());
		pstmt.setTimestamp(3, bookingDate);
		pstmt.setString(4, status);

		int rowsInserted = pstmt.executeUpdate();

		if (rowsInserted > 0) {
	response.sendRedirect("gallery.jsp?msg=Booking Successful!");
		} else {
	response.sendRedirect("gallery.jsp?msg=Booking Failed!");
		}
	} catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("gallery.jsp?msg=Booking Error!");
	} finally {
		try {
	if (pstmt != null)
		pstmt.close();
	if (conn != null && !conn.isClosed())
		conn.close();
		} catch (SQLException e) {
	e.printStackTrace();
		}
	}
} else {
	System.out.println("Invalid request method: " + request.getMethod());
	response.sendRedirect("gallery.jsp?msg=Invalid request method.");
}
%>

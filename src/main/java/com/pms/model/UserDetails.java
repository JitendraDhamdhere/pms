package com.pms.model;

public class UserDetails  {
    private int userId;
    private String username;
    private String email;

    public UserDetails(int userId, String username, String email) {
        this.userId = userId;
        this.username = username;
        this.email = email;
    }

    public int getUserId() {
        return userId;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

	@Override
	public String toString() {
		return "UserDetails [userId=" + userId + ", username=" + username + ", email=" + email + "]";
	}
    
    

    // Optionally: setters if needed
}

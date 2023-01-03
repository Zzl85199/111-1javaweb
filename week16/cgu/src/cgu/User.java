package cgu;
public class User {
    protected String lastName;
    protected String firstName;

    public String getLastName() {
	return lastName;
    }

    public void setLastName(String lname) {
	lastName = lname;
    }

    public String getFirstName() {
	return firstName;
    }

    public void setFirstName(String fname) {
	firstName = fname;
    }

    protected String userName;

    public String getUserName() {
	return userName;
    }

    public void setUserName(String uname) {
	userName = uname;
    }

    public boolean isValidUserData() {
	System.out.println("first name = " + firstName);
	return ((firstName != null) && (firstName.length() > 0) &&
		(lastName != null) && (lastName.length() > 0));
    }
}


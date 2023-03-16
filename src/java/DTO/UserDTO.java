package DTO;

public class UserDTO {

    private int userID;
    private String userName;
    private String passWord;
    private String fullName;
    private int isUser;
    private int isAdmin;

    public UserDTO() {
    }
    
    public UserDTO(int userID, String userName, String passWord, String fullName, int isUser, int isAdmin) {
        this.userID = userID;
        this.userName = userName;
        this.passWord = passWord;
        this.fullName = fullName;
        this.isUser = isUser;
        this.isAdmin = isAdmin;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getIsUser() {
        return isUser;
    }

    public void setIsUser(int isUser) {
        this.isUser = isUser;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "UserDTO{" + "userID=" + userID + ", userName=" + userName + ", passWord=" + passWord + ", fullName=" + fullName + ", isUser=" + isUser + ", isAdmin=" + isAdmin + '}';
    }
    
    
}

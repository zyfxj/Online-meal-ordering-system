package shixi.project;

public class useri {
    private int id;
    private String idnumber;
    private String password;
    private String username;
    private String phone;
    private String email;
    private String address;
    private int flag;

    public int getId() {
        return id;
    }

    public String getIdnumber() {
        return idnumber;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public int getFlag() {
        return flag;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public useri() {
    }

    public useri(int id, String idnumber, String password, String username, String phone, String email, String address) {
        this.id = id;
        this.idnumber = idnumber;
        this.password = password;
        this.username = username;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.flag = 0;
    }
}

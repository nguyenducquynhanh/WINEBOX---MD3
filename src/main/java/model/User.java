package model;


public class User {
    private int id;
    private String userName;

    private String password;
    private String fullName;
    private String age;
    private Gender gender;
    private int phone;
    private String email;
    private String city;
    private String country;

    private Status blocked;

    private String urlImage;
    private Role role;

    public User(int id, String userName, String password, String fullName, String age, Gender gender, int phone, String email, String city, String country, Status blocked, String urlImage, String role) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.age = age;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.city = city;
        this.country = country;
        this.blocked = blocked;
        this.urlImage = urlImage;
        this.role = Role.fromValue(role);
    }

    public User() {
    }

    public User(String userName, String password, String fullName, String age, Gender gender, int phone, String email, String city, String country, Status blocked) {
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.age = age;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.city = city;
        this.country = country;
        this.blocked = blocked;
    }

    public User(int id, String userName, String password, String fullName, String age, Gender gender, int phone, String email, String city, String country, Status blocked, String urlImage) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.age = age;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.city = city;
        this.country = country;
        this.blocked = blocked;
        this.urlImage = urlImage;
    }

    public User(String userName, String password, String fullName, String age, Gender gender, int phone, String email, String city, String country) {
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.age = age;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.city = city;
        this.country = country;

    }

    public User(int id, String userName, String password, String fullName, String age, Gender gender, int phone, String email, String city, String country) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.age = age;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.city = city;
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Status getBlocked() {
        return blocked;
    }

    public void setBlocked(Status blocked) {
        this.blocked = blocked;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}

package users.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Temporal;
import users.RegistrationController;

@Entity
public class UserDataEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idUser;    
    private String name;    
    private String surname;    
    private String username;    
    private String password;    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dateOfBirth;    
    private String placeOfBirth;    
    private long jmbg;    
    private String phoneNumber;
    private String email;
    private String type;   
    @Lob
    private byte[] profilePicture;
    
    public UserDataEntity() {}
    
    public UserDataEntity(RegistrationController builder) {
        this.name = builder.getName();
        this.surname = builder.getSurname();
        this.username = builder.getUsername();
        this.password = builder.getPassword();
        this.dateOfBirth = builder.getDateOfBirth();
        this.placeOfBirth = builder.getPlaceOfBirth();
        this.jmbg = builder.getJmbg();
        this.phoneNumber = builder.getPhoneNumber();
        this.email = builder.getEmail();
        this.type = builder.getType();
        this.profilePicture = builder.getProfilePicture();
    } 
    
    //getters

    public int getIdUser() {
        return idUser;
    }
    
    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public String getPlaceOfBirth() {
        return placeOfBirth;
    }

    public void setPlaceOfBirth(String placeOfBirth) {
        this.placeOfBirth = placeOfBirth;
    }

    public long getJmbg() {
        return jmbg;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public String getType() {
        return type;
    }
    
    //setters

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public void setJmbg(long jmbg) {
        this.jmbg = jmbg;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setType(String type) {
        this.type = type;
    }

    public byte[] getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(byte[] profilePicture) {
        this.profilePicture = profilePicture;
    }
    
}

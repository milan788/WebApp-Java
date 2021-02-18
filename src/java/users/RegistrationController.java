package users;

import users.entities.UserDataEntity;
import db.UsersTableUtil;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.annotation.ManagedBean;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import org.primefaces.event.FileUploadEvent;
import org.primefaces.model.UploadedFile;

@ManagedBean
@Named(value = "registrationController")
@SessionScoped
public class RegistrationController implements Serializable {

    private String errorMessage;
    private String name;
    private String surname;
    private String username;
    private String password;
    private String password2;
    private Date dateOfBirth;
    private String placeOfBirth;
    private long jmbg;
    private String phoneNumber;
    private String email;
    private String type;
    private byte[] profilePicture;

    private UserDataEntity newUser;

    private boolean validate() {
        this.newUser = new UserDataEntity(this);

        UserDataEntity oldUser = UsersTableUtil.getByUsername(this.newUser.getUsername());
        if (oldUser != null) {
            errorMessage = "Korisnicko ime je vec zauzeto";
            return false;
        }

        List<UserDataEntity> userAccounts = UsersTableUtil.getByEmail(this.newUser.getEmail());
        if (userAccounts.size() == 2) {
            errorMessage = "Vec postoje 2 naloga sa datom e-mail adresom";
            return false;
        }
        
        if(!password.equals(password2)) {
            errorMessage = "Lozinke moraju da se poklapaju";
            return false;
        }
        return true;
    }

    public void submitRegistrationAndSendRequest() {
        if (validate()) {
            UsersTableUtil.sendRequest(newUser);
            Navigator.redirect("index");
        }
    }

    public void addUserAsAdmin() {
        if (validate()) {
            UsersTableUtil.insertNewUser(newUser);
            Navigator.redirect("admin");
        }
    }

    public void loadPicture(FileUploadEvent event) {
        UploadedFile file = event.getFile();
        this.profilePicture = file.getContents();
        if (this.profilePicture == null) {
            this.errorMessage = "Greska prilikom ucitavanja slike";
        }
    }

    //getters and setters
    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
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

    public void setJmbg(long jmbg) {
        this.jmbg = jmbg;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getType() {
        return type;
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

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }
    
    

}

package users;

import users.entities.UserDataEntity;
import db.UsersTableUtil;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.Serializable;
import javax.annotation.ManagedBean;
import javax.enterprise.context.SessionScoped;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.servlet.http.HttpSession;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

@ManagedBean
@Named(value = "loginController")
@SessionScoped
public class LoginController implements Serializable {

    private String errorMessage;
    private String username;
    private String password;

    private UserDataEntity loggedUser;
    private StreamedContent picture;

    public void login() {
        if (UsersTableUtil.getRequestByUsername(username)) {
            errorMessage = "Ceka se potvrda registracije. Pokusajte kasnije";
            return;
        }

        UserDataEntity user = UsersTableUtil.getByUsername(username);

        if (user == null) {
            errorMessage = "Ne postoji korisnik sa datim korisnickim imenom";
            return;
        }

        if (!user.getPassword().equals(password)) {
            errorMessage = "Neispavna sifra";
            return;
        }

        this.loggedUser = user;
        byte[] profilePictureBytes = user.getProfilePicture();
        if (profilePictureBytes != null) {
            this.picture = new DefaultStreamedContent(new ByteArrayInputStream(profilePictureBytes), "image/jpeg");
        }

        FacesContext fc = FacesContext.getCurrentInstance();
        HttpSession hs = (HttpSession) fc.getExternalContext().getSession(false);
        hs.setAttribute("user", user);
        String userPage = user.getType();
        
        Navigator.redirect("faces/" + userPage + "/" + userPage);
    }
    
    private StreamedContent unpackPicture() {
        if(picture != null){
            InputStream is = new ByteArrayInputStream((byte[]) this.loggedUser.getProfilePicture());
            DefaultStreamedContent newPhoto = new DefaultStreamedContent(is, "image/jpg");
            return newPhoto;
        }
        return null;
    }

    public void logout() {
        FacesContext fc = FacesContext.getCurrentInstance();
        HttpSession s = (HttpSession) fc.getExternalContext().getSession(false);
        s.invalidate();
        this.loggedUser = null;
        Navigator.redirect("../index");
    }

    //getters and setters
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

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public UserDataEntity getLoggedUser() {
        return loggedUser;
    }

    public void setLoggedUser(UserDataEntity loggedUser) {
        this.loggedUser = loggedUser;
    }

    public StreamedContent getPicture() {
        return picture;
    }

    public void setPicture(StreamedContent picture) {
        this.picture = picture;
    }

}

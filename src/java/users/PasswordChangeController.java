package users;

import db.UsersTableUtil;
import java.io.Serializable;
import javax.annotation.ManagedBean;
import javax.enterprise.context.SessionScoped;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.servlet.http.HttpSession;

@ManagedBean
@Named(value="passwordChangeController")
@SessionScoped
public class PasswordChangeController implements Serializable {
    private String errorMessage;
    private String username;
    private String oldPassword;
    private String newPassword;
    private String newPasswordConfirm;
    
    public void toPasswordChange() {
        errorMessage = null;
        username = null;
        Navigator.redirect("../password_change");
    }
    
    public void submitPasswordChange() {
        
        if(!newPassword.equals(newPasswordConfirm)) {
            errorMessage = "Nije uneta ista sifra";
            return;
        }
        
        if(!newPassword.equals(oldPassword)) {
            errorMessage = "Nova sifra ne moze da bude ista kao stara sifra";
            return;
        }
        
        boolean result = UsersTableUtil.changePassword(username, oldPassword, newPassword);
        if(result == false) {
            errorMessage = "Pogresna sifra";
            return;
        }
        
        //ako je korisnik bio ulogovan
        FacesContext fc = FacesContext.getCurrentInstance();
        HttpSession s = (HttpSession) fc.getExternalContext().getSession(false);
        s.invalidate();
        
        Navigator.redirect("index");
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getOldPassword() {
        return oldPassword;
    }

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getNewPasswordConfirm() {
        return newPasswordConfirm;
    }

    public void setNewPasswordConfirm(String newPasswordConfirm) {
        this.newPasswordConfirm = newPasswordConfirm;
    }
    
    
}

package users.admin;

import db.HibernateUtil;
import db.UsersTableUtil;
import java.io.Serializable;
import java.util.List;
import javax.annotation.ManagedBean;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import users.Navigator;
import users.entities.UserDataEntity;

@ManagedBean
@Named(value = "adminController")
@SessionScoped
public class AdminController implements Serializable {
    private List<UserDataEntity> requests;
    private UserDataEntity selectedReq;

    public AdminController() {
        this.requests = UsersTableUtil.getRequests();
    }     
    
    public void accept() {
        UsersTableUtil.acceptRequest(selectedReq);
        requests.remove(selectedReq);
        selectedReq = null;
    }
    
    public void deny() {
        UsersTableUtil.denyRequest(selectedReq);
        requests.remove(selectedReq);
        selectedReq = null;
    }
    
    List<UserDataEntity> users;
    UserDataEntity selectedUser;
    
    public void toAdminHome() {
        Navigator.redirect("admin");
    }
    
    public void toDataChange() {
        this.users = UsersTableUtil.getUsers();
        Navigator.redirect("admin_change_data");
    }
    
    public void toNewUser() {
        Navigator.redirect("admin_new_user");
    }
    
    public void submitChange() {
        UsersTableUtil.updateUserData(selectedUser);
        this.selectedUser = null;
    }
    
    public void deleteUser() {
        UsersTableUtil.deleteUser(selectedUser);
        users.remove(selectedUser);
        this.selectedUser = null;
    }
     
    public List<UserDataEntity> getRequests() {
        return requests;
    }

    public void setRequests(List<UserDataEntity> requests) {
        this.requests = requests;
    }

    public UserDataEntity getSelectedReq() {
        return selectedReq;
    }

    public void setSelectedReq(UserDataEntity selectedReq) {
        this.selectedReq = selectedReq;
    }

    public List<UserDataEntity> getUsers() {
        return users;
    }

    public void setUsers(List<UserDataEntity> users) {
        this.users = users;
    }

    public UserDataEntity getSelectedUser() {
        return selectedUser;
    }

    public void setSelectedUser(UserDataEntity selectedUser) {
        this.selectedUser = selectedUser;
    }
    
    
    
}

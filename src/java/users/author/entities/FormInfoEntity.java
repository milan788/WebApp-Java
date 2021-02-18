package users.author.entities;

import java.io.Serializable;
import java.util.ArrayList;
import users.author.FormInfoBuilder;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import users.entities.UserDataEntity;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class FormInfoEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)    
    private int id;    
    @OneToOne(
            fetch = FetchType.EAGER
    )
    private UserDataEntity userData;         
    private String name;    
    private String basicInfo;    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date startTime;   
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date endTime;
    @OneToMany(
            cascade = CascadeType.ALL,
            fetch = FetchType.EAGER
    )
    private List<QuestionEntity> questions;

    protected FormInfoEntity() {}

    protected FormInfoEntity(FormInfoBuilder builder) {
        this.userData = builder.getUserData();
        this.name = builder.getName();
        this.basicInfo = builder.getBasicInfo();
        this.startTime = builder.getStartTime();
        this.endTime = builder.getEndTime();
        this.questions = builder.getQuestions();
    }

    //getters
    public UserDataEntity getUserData() {
        return userData;
    }

    public String getName() {
        return name;
    }

    public String getBasicInfo() {
        return basicInfo;
    }

    public Date getStartTime() {
        return startTime;
    }

    public int getId() {
        return id;
    }

    public Date getEndTime() {
        return endTime;
    }

    public List<QuestionEntity> getQuestions() {
        return questions;
    }

    //setters
    public void setId(int id) {
        this.id = id;
    }

    public void setUserData(UserDataEntity userData) {
        this.userData = userData;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setBasicInfo(String basicInfo) {
        this.basicInfo = basicInfo;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public void setQuestions(ArrayList<QuestionEntity> questions) {
        this.questions = questions;
    }

}

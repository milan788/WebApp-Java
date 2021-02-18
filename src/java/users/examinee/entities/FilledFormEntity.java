package users.examinee.entities;

import java.io.Serializable;
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
import users.author.entities.FormInfoEntity;
import users.entities.UserDataEntity;
import users.examinee.FormFiller;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class FilledFormEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private int id;
    public enum FilledFormState { UNFILLED, UNFINISHED, CLOSED, FINISHED }
    private FilledFormState currentState;
    @OneToOne(fetch = FetchType.LAZY)
    private UserDataEntity userData;
    @OneToOne(fetch = FetchType.LAZY)
    private FormInfoEntity form;
    @OneToMany(
            cascade = CascadeType.ALL,
            fetch = FetchType.LAZY
    )
    private List<AnsweredQuestionEntity> answeredQuestions;
    
    protected FilledFormEntity() {}
    
    public void update(FormFiller formFiller) {
        this.currentState = formFiller.getCurrentState();
        this.userData = formFiller.getUserData();
        this.form = formFiller.getForm();
        this.answeredQuestions = formFiller.getAnsweredQuestions();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public FilledFormState getCurrentState() {
        return currentState;
    }

    public void setCurrentState(FilledFormState currentState) {
        this.currentState = currentState;
    }

    public UserDataEntity getUserData() {
        return userData;
    }

    public void setUserData(UserDataEntity userData) {
        this.userData = userData;
    }

    public FormInfoEntity getForm() {
        return form;
    }

    public void setForm(FormInfoEntity form) {
        this.form = form;
    }

    public List<AnsweredQuestionEntity> getAnsweredQuestions() {
        return answeredQuestions;
    }

    public void setAnsweredQuestions(List<AnsweredQuestionEntity> answeredQuestions) {
        this.answeredQuestions = answeredQuestions;
    }
    
    
}

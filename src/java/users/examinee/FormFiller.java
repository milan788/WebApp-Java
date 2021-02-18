package users.examinee;

import java.util.ArrayList;
import java.util.List;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import users.author.entities.FormInfoEntity;
import users.author.entities.QuestionEntity;
import users.entities.UserDataEntity;
import users.examinee.entities.AnsweredQuestionEntity;
import users.examinee.entities.FilledFormEntity;

public abstract class FormFiller {

    protected boolean editable;
    protected UserDataEntity userData;
    protected FormInfoEntity form;
    protected FilledFormEntity filledForm;
    protected FilledFormEntity.FilledFormState currentState;
    protected List<AnsweredQuestionBuilder> answeredQuestionBuilders;
    protected List<AnsweredQuestionEntity> answeredQuestions;

    protected FormFiller(FormInfoEntity form) {
        this.editable = true;
        FacesContext fc = FacesContext.getCurrentInstance();
        HttpSession hs = (HttpSession) fc.getExternalContext().getSession(false);
        this.userData = (UserDataEntity) hs.getAttribute("user");
        this.form = form;
        this.currentState = FilledFormEntity.FilledFormState.UNFILLED;
        this.answeredQuestions = new ArrayList<>();
    }

    protected FormFiller(FilledFormEntity filledForm) {
        this.editable = filledForm.getCurrentState() != FilledFormEntity.FilledFormState.FINISHED;
        this.userData = filledForm.getUserData();
        this.form = filledForm.getForm();
        this.filledForm = filledForm;
        this.currentState = filledForm.getCurrentState();
    }

    protected final void addAnsweredQuestionBuilder(QuestionEntity q) {
        if (answeredQuestionBuilders == null) {
            answeredQuestionBuilders = new ArrayList<>();
        }
        answeredQuestionBuilders.add(new AnsweredQuestionBuilder(q, this));
    }
    
    protected final void addAnsweredQuestionBuilder(AnsweredQuestionEntity aq) {
        if (answeredQuestionBuilders == null) {
            answeredQuestionBuilders = new ArrayList<>();
        }
        answeredQuestionBuilders.add(new AnsweredQuestionBuilder(aq, this));
    }

    public void update() {
        answeredQuestionBuilders.forEach((b) -> {
            b.update();
        });
        filledForm.update(this);
    }
    
    protected void build() {
        answeredQuestionBuilders.forEach((b) -> {
            b.build();
        });
        filledForm.update(this);
    }
        
    public abstract void archiveFinished();
    public abstract void archiveUnfinished();
    
    public double getScore() {
        double ret = 0;
        for(AnsweredQuestionBuilder aqb : answeredQuestionBuilders) {
            ret += aqb.getScore();
        }
        return ret;
    }

    public UserDataEntity getUserData() {
        return userData;
    }

    public void setUserData(UserDataEntity userData) {
        this.userData = userData;
    }

    public abstract FormInfoEntity getForm();

    public void setForm(FormInfoEntity form) {
        this.form = form;
    }

    public FilledFormEntity.FilledFormState getCurrentState() {
        return currentState;
    }

    public void setCurrentState(FilledFormEntity.FilledFormState currentState) {
        this.currentState = currentState;
    }

    public List<AnsweredQuestionEntity> getAnsweredQuestions() {
        return answeredQuestions;
    }

    public void setAnsweredQuestions(ArrayList<AnsweredQuestionEntity> answeredQuestions) {
        this.answeredQuestions = answeredQuestions;
    }

    public List<AnsweredQuestionBuilder> getAnsweredQuestionBuilders() {
        return answeredQuestionBuilders;
    }

    public void setAnsweredQuestionBuilders(ArrayList<AnsweredQuestionBuilder> answeredQuestionBuilders) {
        this.answeredQuestionBuilders = answeredQuestionBuilders;
    }

    public boolean isEditable() {
        return editable;
    }

    public void setEditable(boolean editable) {
        this.editable = editable;
    }

    public FilledFormEntity getFilledForm() {
        return filledForm;
    }

    public void setFilledForm(FilledFormEntity filledForm) {
        this.filledForm = filledForm;
    }
    
    

}

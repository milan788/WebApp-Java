package users.author;

import java.util.Date;
import java.util.ArrayList;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import users.author.entities.QuestionEntity;
import users.entities.UserDataEntity;

public abstract class FormInfoBuilder {
    private final QuestionEntity.QuestionType questionType;
    private UserDataEntity userData;
    private String name;
    private String basicInfo; 
    private Date startTime;
    private Date endTime;
    private ArrayList<QuestionBuilder> questionBuilders;
    private ArrayList<QuestionEntity> questions;
    
    public FormInfoBuilder(QuestionEntity.QuestionType questionType) {
        this.questionType = questionType;
        FacesContext fc = FacesContext.getCurrentInstance();
        HttpSession hs = (HttpSession) fc.getExternalContext().getSession(false);
        this.userData = (UserDataEntity) hs.getAttribute("user");
    }

    private String newQuestionText;
    private double newQuestionPoints;
    private String newAnswerType;
    private boolean newQuestionRequired = true;
    
    public void addQuestionBuilder() {
        //provera da li je prethodno pitanje ispravno formirano
        if (questionBuilders == null) {
            questionBuilders = new ArrayList<>();
        }
        questionBuilders.add(new QuestionBuilder(this));
        newQuestionText = null;  
    }

    protected abstract boolean check();

    protected abstract boolean insertIntoDB();

    public boolean build() {
        boolean ret;
        for (QuestionBuilder qb : questionBuilders) {
            ret = qb.build();
            if (!ret) {
                return false;
            }
        }
        ret = check();
        if (ret) {
            insertIntoDB();
        }
        return ret;
    }

    public void addQuestion(QuestionEntity q) {
        if (questions == null) {
            questions = new ArrayList<>();
        }
        questions.add(q);
    }

    public void removeQuestion(QuestionEntity q) {
        if (questions == null) {
            return;
        }
        questions.remove(q);
    }

    //getters and setters
    public UserDataEntity getUserData() {
        return userData;
    }

    public void setUserData(UserDataEntity userData) {
        this.userData = userData;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBasicInfo() {
        return basicInfo;
    }

    public void setBasicInfo(String basicInfo) {
        this.basicInfo = basicInfo;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public ArrayList<QuestionEntity> getQuestions() {
        return questions;
    }

    public String getNewQuestionText() {
        return newQuestionText;
    }

    public void setNewQuestionText(String newQuestionText) {
        this.newQuestionText = newQuestionText;
    }

    public double getNewQuestionPoints() {
        return newQuestionPoints;
    }

    public void setNewQuestionPoints(double newQuestionPoints) {
        this.newQuestionPoints = newQuestionPoints;
    }

    public boolean isNewQuestionRequired() {
        return newQuestionRequired;
    }

    public void setNewQuestionRequired(boolean newQuestionRequired) {
        this.newQuestionRequired = newQuestionRequired;
    }

    public String getNewAnswerType() {
        return newAnswerType;
    }

    public void setNewAnswerType(String newAnswerType) {
        this.newAnswerType = newAnswerType;
    }

    public ArrayList<QuestionBuilder> getQuestionBuilders() {
        return questionBuilders;
    }

    public void setQuestionBuilders(ArrayList<QuestionBuilder> questionBuilders) {
        this.questionBuilders = questionBuilders;
    }

    public QuestionEntity.QuestionType getQuestionType() {
        return questionType;
    }

}

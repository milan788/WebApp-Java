package users.author;

import db.FormsTablesUtil;
import users.author.entities.SurveyInfoEntity;
import users.author.entities.TestInfoEntity;
import java.io.Serializable;
import java.util.List;
import javax.annotation.ManagedBean;
import javax.enterprise.context.SessionScoped;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.servlet.http.HttpSession;
import users.Navigator;
import users.author.entities.QuestionEntity;
import users.entities.UserDataEntity;

@ManagedBean
@Named(value = "authorController")
@SessionScoped
public class AuthorController implements Serializable {

    private UserDataEntity user;
    private int chosenQuestionId;

    private UserDataEntity getLoggedUser() {
        if (user == null) {
            FacesContext fc = FacesContext.getCurrentInstance();
            HttpSession hs = (HttpSession) fc.getExternalContext().getSession(false);
            this.user = (UserDataEntity) hs.getAttribute("user");
        }
        return this.user;
    }

    private List<TestInfoEntity> myTests;

    public void toTestsView() {
        this.myTests = FormsTablesUtil.getTestsForUser(getLoggedUser());
        Navigator.redirect("author_tests_view");
    }

    private List<SurveyInfoEntity> mySurveys;

    public void toSurveyView() {
        this.mySurveys = FormsTablesUtil.getSurveysForUser(getLoggedUser());
        Navigator.redirect("author_surveys_view");
    }

    private TestInfoBuilder testInfoBuilder;
    private List<QuestionEntity> myTestQuestions;

    public void toNewTest() {
        this.testInfoBuilder = null;
        this.testInfoBuilder = new TestInfoBuilder();
        this.myTestQuestions = FormsTablesUtil.getTestQuestions(getLoggedUser());
        Navigator.redirect("author_new_test");
    }
    
    public void addOldTestQuestion(int id) {
        //QuestionEntity q = myTestQuestions.get(id);
        
    }

    private SurveyInfoBuilder surveyInfoBuilder;
    private List<QuestionEntity> mySurveyQuestions;

    public void toNewSurvey() {
        this.surveyInfoBuilder = null;
        this.mySurveyQuestions = FormsTablesUtil.getSurveyQuestions(getLoggedUser());
        this.surveyInfoBuilder = new SurveyInfoBuilder();
        Navigator.redirect("author_new_survey");
    }

    public void submitNewTest() {
        testInfoBuilder.build();
        Navigator.redirect("author");
    }

    public void submitNewSurvey() {
        surveyInfoBuilder.build();
        Navigator.redirect("author");
    }

    public void removeTest(TestInfoEntity testToDelete) {
        myTests.remove(testToDelete);
        FormsTablesUtil.removeTest(testToDelete);
    }

    public void removeSurvey(SurveyInfoEntity surveyToDelete) {
        mySurveys.remove(surveyToDelete);
        FormsTablesUtil.removeSurvey(surveyToDelete);
    }

    TestInfoEntity testReportToShow;
    SurveyInfoEntity surveyReportToShow;

    public void formReport(TestInfoEntity test) {

    }

    public void formReport(SurveyInfoEntity survey) {

    }

    /*FilledSurveyEntity filledSurveyToShow;  
    public void formExamineeReport(FilledSurveyEntity filledSurvey) {
        
    }*/
    //getters and setters
    public List<SurveyInfoEntity> getMySurveys() {
        return mySurveys;
    }

    public void setMySurveys(List<SurveyInfoEntity> mySurveys) {
        this.mySurveys = mySurveys;
    }

    public List<TestInfoEntity> getMyTests() {
        return myTests;
    }

    public void setMyTests(List<TestInfoEntity> myTests) {
        this.myTests = myTests;
    }

    public TestInfoBuilder getTestInfoBuilder() {
        return testInfoBuilder;
    }

    public void setTestInfoBuilder(TestInfoBuilder testInfoBuilder) {
        this.testInfoBuilder = testInfoBuilder;
    }

    public SurveyInfoBuilder getSurveyInfoBuilder() {
        return surveyInfoBuilder;
    }

    public void setSurveyInfoBuilder(SurveyInfoBuilder surveyInfoBuilder) {
        this.surveyInfoBuilder = surveyInfoBuilder;
    }

    public List<QuestionEntity> getMyTestQuestions() {
        return myTestQuestions;
    }

    public void setMyTestQuestions(List<QuestionEntity> myTestQuestions) {
        this.myTestQuestions = myTestQuestions;
    }

    public List<QuestionEntity> getMySurveyQuestions() {
        return mySurveyQuestions;
    }

    public void setMySurveyQuestions(List<QuestionEntity> mySurveyQuestions) {
        this.mySurveyQuestions = mySurveyQuestions;
    }

    public int getChosenQuestionId() {
        return chosenQuestionId;
    }

    public void setChosenQuestionId(int chosenQuestionId) {
        this.chosenQuestionId = chosenQuestionId;
    }

    

}

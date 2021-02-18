package users.examinee;

import db.FilledFormsTableUtil;
import db.FormsTablesUtil;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.annotation.ManagedBean;
import javax.enterprise.context.SessionScoped;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.servlet.http.HttpSession;
import users.Navigator;
import users.author.entities.FormInfoEntity;
import users.author.entities.SurveyInfoEntity;
import users.author.entities.TestInfoEntity;
import users.entities.UserDataEntity;
import users.examinee.entities.FilledSurveyEntity;
import users.examinee.entities.FilledTestEntity;

@ManagedBean
@Named(value = "examineeController")
@SessionScoped
public class ExamineeController implements Serializable {

    private UserDataEntity user;

    private UserDataEntity getLoggedUser() {
        if (user == null) {
            FacesContext fc = FacesContext.getCurrentInstance();
            HttpSession hs = (HttpSession) fc.getExternalContext().getSession(false);
            this.user = (UserDataEntity) hs.getAttribute("user");
        }
        return this.user;
    }
    
    public void toHome() {
        Navigator.redirect("examinee");
    }

    private List<TestInfoEntity> tests;

    public void toTestsView() {
        this.tests = FormsTablesUtil.getAllTests();
        Navigator.redirect("examinee_tests_view");
    }

    private List<SurveyInfoEntity> surveys;

    public void toSurveysView() {
        this.surveys = FormsTablesUtil.getAllSurveys();
        Navigator.redirect("examinee_surveys_view");
    }

    private TestInfoEntity testToView;
    private FilledTestEntity filledTest;

    public void chooseTest(TestInfoEntity testToView) {
        this.testToView = testToView;
        this.testToViewClosed = isFormClosed(testToView);
        this.filledTest = FilledFormsTableUtil.getFilledTestForUser(getLoggedUser(), testToView);
    }

    private TestFiller testFiller;
    private int timeLeft;
    public void startTest() {
        testFiller = new TestFiller(testToView);
        timeLeft = testToView.getDuration() * 60;
        timeMessage = null;
        Navigator.redirect("examinee_test_filler");
        //pokretanje tajmera
    }
    
    private String timeMessage;
    public void timerUpdate() {
        timeLeft--;
        if(timeLeft == 10) timeMessage = "Test se uskoro zavrsava";
        if(timeLeft == 0) archiveTest();
    }

    public void submitTest() {
        testFiller.update();
        Navigator.redirect("examinee_finish_test");
    }

    public void archiveTest() {
        testFiller.archiveFinished();
        Navigator.redirect("examinee_tests_view");
    }

    public void viewTestDetails() {
        testFiller = new TestFiller(filledTest);
        Navigator.redirect("examinee_test_filler");
    }

    private SurveyInfoEntity surveyToView;
    private FilledSurveyEntity filledSurvey;

    public void chooseSurvey(SurveyInfoEntity surveyToView) {
        this.surveyToView = surveyToView;
        this.surveyToViewClosed = isFormClosed(surveyToView);
        this.filledSurvey = FilledFormsTableUtil.getFilledSurveyForUser(getLoggedUser(), surveyToView);
    }

    private SurveyFiller surveyFiller;
    private int questionsPerPage;
    public void startSurvey() {
        if(filledSurvey != null) surveyFiller = new SurveyFiller(filledSurvey);
        else surveyFiller = new SurveyFiller(surveyToView);
        this.questionsPerPage = surveyToView.getQuestions().size() / surveyToView.getNumOfPages();
        Navigator.redirect("examinee_survey_filler");
    }
    
    public void submitSurvey() {
        surveyFiller.update();
        Navigator.redirect("examinee_finish_survey");
    }
    
    public void archiveSurveyUnfinished() {
        surveyFiller.archiveUnfinished();
        Navigator.redirect("examinee_surveys_view");
        
    }
    
    public void archiveSurveyFinished() {
        surveyFiller.archiveFinished();
        Navigator.redirect("examinee_surveys_view");
    }

    public void viewSurveyDetails() {
        surveyFiller = new SurveyFiller(filledSurvey);
        this.questionsPerPage = surveyToView.getQuestions().size() / surveyToView.getNumOfPages();
        Navigator.redirect("examinee_survey_filler");
    }

    boolean testToViewClosed;
    boolean surveyToViewClosed;

    public boolean isFormClosed(FormInfoEntity formToCheck) {
        Date now = new Date(System.currentTimeMillis());
        return (now.compareTo(formToCheck.getStartTime()) < 0) || (now.compareTo(formToCheck.getEndTime()) > 0);
    }

    //getters and setters
    public TestInfoEntity getTestToView() {
        return testToView;
    }

    public void setTestToView(TestInfoEntity testToView) {
        this.testToView = testToView;
    }

    public TestFiller getTestFiller() {
        return testFiller;
    }

    public void setTestFiller(TestFiller testFiller) {
        this.testFiller = testFiller;
    }

    public SurveyInfoEntity getSurveyToView() {
        return surveyToView;
    }

    public void setSurveyToView(SurveyInfoEntity surveyToView) {
        this.surveyToView = surveyToView;
    }

    public SurveyFiller getSurveyFiller() {
        return surveyFiller;
    }

    public void setSurveyFiller(SurveyFiller surveyFiller) {
        this.surveyFiller = surveyFiller;
    }

    public List<TestInfoEntity> getTests() {
        return tests;
    }

    public void setTests(List<TestInfoEntity> tests) {
        this.tests = tests;
    }

    public List<SurveyInfoEntity> getSurveys() {
        return surveys;
    }

    public void setSurveys(List<SurveyInfoEntity> surveys) {
        this.surveys = surveys;
    }

    public FilledTestEntity getFilledTest() {
        return filledTest;
    }

    public void setFilledTest(FilledTestEntity filledTest) {
        this.filledTest = filledTest;
    }

    public FilledSurveyEntity getFilledSurvey() {
        return filledSurvey;
    }

    public void setFilledSurvey(FilledSurveyEntity filledSurvey) {
        this.filledSurvey = filledSurvey;
    }

    public boolean isTestToViewClosed() {
        return testToViewClosed;
    }

    public void setTestToViewClosed(boolean testToViewClosed) {
        this.testToViewClosed = testToViewClosed;
    }

    public boolean isSurveyToViewClosed() {
        return surveyToViewClosed;
    }

    public void setSurveyToViewClosed(boolean surveyToViewClosed) {
        this.surveyToViewClosed = surveyToViewClosed;
    }

    public UserDataEntity getUser() {
        return user;
    }

    public void setUser(UserDataEntity user) {
        this.user = user;
    }

    public int getTimeLeft() {
        return timeLeft;
    }

    public void setTimeLeft(int timeLeft) {
        this.timeLeft = timeLeft;
    }

    public String getTimeMessage() {
        return timeMessage;
    }

    public void setTimeMessage(String timeMessage) {
        this.timeMessage = timeMessage;
    }

    public int getQuestionsPerPage() {
        return questionsPerPage;
    }

    public void setQuestionsPerPage(int questionsPerPage) {
        this.questionsPerPage = questionsPerPage;
    }
    
    

}

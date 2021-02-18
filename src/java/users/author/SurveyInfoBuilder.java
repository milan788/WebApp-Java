package users.author;

import db.FormsTablesUtil;
import users.author.entities.QuestionEntity;
import users.author.entities.SurveyInfoEntity;

public class SurveyInfoBuilder extends FormInfoBuilder {
    private int numOfPages;
    private boolean personalized;
    
    public SurveyInfoBuilder() {
        super(QuestionEntity.QuestionType.SURVEY_Q);
    }  
    
    @Override
    public boolean check() {
        if(numOfPages == 0) numOfPages = 1;
        return true;
    }

    @Override
    protected boolean insertIntoDB() {
        SurveyInfoEntity newSurvey = new SurveyInfoEntity(this);
        FormsTablesUtil.saveNewSurvey(newSurvey);
        return true;
    }
    
    //getters and setters
    
    public int getNumOfPages() {
        return numOfPages;
    }

    public void setNumOfPages(int numOfPages) {
        this.numOfPages = numOfPages;
    }

    public boolean isPersonalized() {
        return personalized;
    }

    public void setPersonalized(boolean personalized) {
        this.personalized = personalized;
    }
    
    
}

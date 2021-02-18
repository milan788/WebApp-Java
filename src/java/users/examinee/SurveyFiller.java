package users.examinee;

import db.FilledFormsTableUtil;
import java.util.ArrayList;
import java.util.List;
import users.author.entities.QuestionEntity;
import users.author.entities.SurveyInfoEntity;
import users.examinee.entities.AnsweredQuestionEntity;
import users.examinee.entities.FilledFormEntity;
import users.examinee.entities.FilledSurveyEntity;

public class SurveyFiller extends FormFiller {
    //strukture za pamcenje unetih podataka

    public SurveyFiller(SurveyInfoEntity survey) {
        super(survey);
        this.filledForm = new FilledSurveyEntity();
        List<QuestionEntity> questions = survey.getQuestions();
        questions.forEach((q) -> { 
            addAnsweredQuestionBuilder(q);
        });
    }

    public SurveyFiller(FilledSurveyEntity filledSurvey) {
        super(filledSurvey);
        this.answeredQuestions = new ArrayList<>();
        
        List<AnsweredQuestionEntity> answeredQuestionsSoFar = filledSurvey.getAnsweredQuestions();
        List<QuestionEntity> allQuestions = this.form.getQuestions();
        
        allQuestions.forEach((question) -> {
            AnsweredQuestionEntity foundAnsweredQuestion = null;
            for (AnsweredQuestionEntity answeredQuetion : answeredQuestionsSoFar) {
                if (answeredQuetion.getQuestion().getId() == question.getId()) {
                    foundAnsweredQuestion = answeredQuetion;
                }
            }
            if (foundAnsweredQuestion != null) {
                addAnsweredQuestionBuilder(foundAnsweredQuestion);
            } else {
                addAnsweredQuestionBuilder(question);
            }
        });
    }

    @Override
    public void update() {
        super.update();
    }   
    
    @Override
    public void archiveFinished() {
        this.currentState = FilledFormEntity.FilledFormState.FINISHED;
        build();
        FilledFormsTableUtil.insertNewFilledSurvey((FilledSurveyEntity)this.filledForm);

    }

    @Override
    public void archiveUnfinished() {
        this.currentState = FilledFormEntity.FilledFormState.UNFINISHED;
        build();
        FilledFormsTableUtil.insertNewFilledSurvey((FilledSurveyEntity)this.filledForm);
    }

    @Override
    public SurveyInfoEntity getForm() {
        return (SurveyInfoEntity) this.form;
    }
}

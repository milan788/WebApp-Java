package users.examinee;

import db.FilledFormsTableUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import users.author.entities.QuestionEntity;
import users.author.entities.TestInfoEntity;
import users.examinee.entities.AnsweredQuestionEntity;
import users.examinee.entities.FilledFormEntity;
import users.examinee.entities.FilledTestEntity;

public class TestFiller extends FormFiller {
    //strukture za pamcenje unetih podataka
    public TestFiller(TestInfoEntity test) {
        super(test);
        this.filledForm = new FilledTestEntity();
        List<QuestionEntity> questions = test.getQuestions();
        Collections.shuffle(questions);
        questions.forEach((q) -> { 
            addAnsweredQuestionBuilder(q);
        });
    }
    
    public TestFiller(FilledTestEntity filledTest) {
        super(filledTest);
        this.answeredQuestions = new ArrayList<>();
        List<AnsweredQuestionEntity> answeredQuestionsSoFar = filledTest.getAnsweredQuestions();
        answeredQuestionsSoFar.forEach((aq) -> {
            addAnsweredQuestionBuilder(aq);
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
        //ubacivanje u bazu;
        FilledFormsTableUtil.insertNewFilledTest((FilledTestEntity)this.filledForm);
    }

    @Override
    public void archiveUnfinished() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
    
    @Override
    public TestInfoEntity getForm() {
        return (TestInfoEntity)this.form;
    }   
    
}

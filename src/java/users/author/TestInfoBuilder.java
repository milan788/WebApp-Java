package users.author;

import db.FormsTablesUtil;
import users.author.entities.QuestionEntity;
import users.author.entities.TestInfoEntity;

public class TestInfoBuilder extends FormInfoBuilder {
    private int duration;

    public TestInfoBuilder() {
        super(QuestionEntity.QuestionType.TEST_Q);
    }
    
    @Override
    public boolean check() {
        //if(duration > 3min) duration = 3 min;
        return true;
    }

    @Override
    protected boolean insertIntoDB() {
        TestInfoEntity newTest = new TestInfoEntity(this);
        FormsTablesUtil.saveNewTest(newTest);
        return true;
    }
    
    //getters and setters
    
    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }
    
}

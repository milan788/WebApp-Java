package users.author.entities;

import java.io.Serializable;
import users.author.TestInfoBuilder;
import javax.persistence.Entity;

@Entity
public class TestInfoEntity extends FormInfoEntity implements Serializable {
    private int duration;
    
    public TestInfoEntity() {}

    public TestInfoEntity(TestInfoBuilder builder) {
        super(builder);
        this.duration = builder.getDuration();
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public int getDuration() {
        return duration;
    }
    
    public double getMaxPoints() {
        if(getQuestions()==null) return 100; 
        double ret = 0;
        for(QuestionEntity q : getQuestions()) {
            ret += ((TestAnswerEntity)q.getAnswer()).getPoints();
        }
        return ret;
    }
    
}

package users.author.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import users.author.QuestionBuilder;

@Entity
public class SurveyAnswerEntity extends AnswerEntity implements Serializable {
    private String labels;
    
    public SurveyAnswerEntity() {}
    
    public SurveyAnswerEntity(QuestionBuilder builder) {
        super(builder);
        this.labels = convert(builder.getLabels());
    }

    public String getLabels() {
        return labels;
    }

    public void setLabels(String labels) {
        this.labels = labels;
    }
    
    public List<String> getLabelsParsed() {
        return parse(labels);
    }

    
    
}

package users.examinee.entities;

import java.util.List;
import javax.persistence.Entity;
import users.examinee.AnsweredQuestionBuilder;

@Entity
public class AnsweredSurveyQuestionEntity extends AnsweredQuestionEntity {
    private String strAnswer;
    private String strAnswers;

    public AnsweredSurveyQuestionEntity() {}
    
    @Override
    public void update(AnsweredQuestionBuilder builder) {
        super.update(builder);
        this.strAnswer = builder.getStrAnswer();
        this.strAnswers = convert(builder.getStrAnswers());
    }

    public String getStrAnswer() {
        return strAnswer;
    }

    public void setStrAnswer(String strAnswer) {
        this.strAnswer = strAnswer;
    }

    public String getStrAnswers() {
        return strAnswers;
    }
    
    public List<String> getStrAnswersParsed() {
        return parse(this.strAnswers);
    }

    public void setStrAnswers(String strAnswers) {
        this.strAnswers = strAnswers;
    }
    
}

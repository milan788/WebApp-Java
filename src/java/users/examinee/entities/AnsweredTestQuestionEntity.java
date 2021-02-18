package users.examinee.entities;

import java.util.List;
import javax.persistence.Entity;
import users.examinee.AnsweredQuestionBuilder;

@Entity
public class AnsweredTestQuestionEntity extends AnsweredQuestionEntity {
    //mozda treba jos neka polja
    private String chosenAnswer;
    private String chosenAnswers;
    private double score;

    public AnsweredTestQuestionEntity() {}
    
    @Override
    public void update(AnsweredQuestionBuilder builder) {
        super.update(builder);
        this.chosenAnswer = builder.getChosenAnswer();
        this.chosenAnswers = convert(builder.getChosenAnswers());
        this.score = builder.getScore();
    }

    public String getChosenAnswer() {
        return chosenAnswer;
    }

    public void setChosenAnswer(String chosenAnswer) {
        this.chosenAnswer = chosenAnswer;
    }

    public String getChosenAnswers() {
        return chosenAnswers;
    }
    
    public List<String> getChosenAnswersParsed() {
        return parse(this.chosenAnswers);
    }

    public void setChosenAnswers(String chosenAnswers) {
        this.chosenAnswers = chosenAnswers;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    
}

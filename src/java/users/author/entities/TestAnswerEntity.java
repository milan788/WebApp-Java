package users.author.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import users.author.QuestionBuilder;

@Entity
public class TestAnswerEntity extends AnswerEntity implements Serializable {

    private double points;
    private String incorrectAnswers;
    private String correctAnswers;
    private String correctAnswer;

    public TestAnswerEntity() {
    }

    public TestAnswerEntity(QuestionBuilder builder) {
        super(builder);
        correctAnswer = builder.getCorrectAnswer();
        correctAnswers = convert(builder.getCorrectAnswers());
        incorrectAnswers = convert(builder.getIncorrectAnswers());
        this.points = builder.getPoints();
    }

    public List<String> getIncorrectAnswersParsed() {
        return parse(incorrectAnswers);
    }

    public List<String> getCorrectAnswersParsed() {
        return parse(correctAnswers);
    }

    public double getPoints() {
        return points;
    }

    public void setPoints(double points) {
        this.points = points;
    }

    public String getIncorrectAnswers() {
        return incorrectAnswers;
    }

    public void setIncorrectAnswers(String incorrectAnswers) {
        this.incorrectAnswers = incorrectAnswers;
    }

    public String getCorrectAnswers() {
        return correctAnswers;
    }

    public void setCorrectAnswers(String correctAnswers) {
        this.correctAnswers = correctAnswers;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    public void setCorrectAnswer(String correctAnswer) {
        this.correctAnswer = correctAnswer;
    }

}

package users.author;

import java.util.ArrayList;
import users.author.entities.QuestionEntity;
import users.author.entities.AnswerEntity;
import java.util.List;

public class QuestionBuilder {

    private final FormInfoBuilder formInfoBuilder;
    private QuestionEntity.QuestionType questionType;
    private String text;
    private double points;
    private boolean required;
    private AnswerEntity.AnswerType answerType;
    private List<String> incorrectAnswers;
    private List<String> correctAnswers;
    private String correctAnswer;

    private List<String> labels;

    public QuestionBuilder(FormInfoBuilder formInfoBuilder) {
        this.questionType = formInfoBuilder.getQuestionType();
        this.formInfoBuilder = formInfoBuilder;
        this.text = formInfoBuilder.getNewQuestionText();
        this.points = formInfoBuilder.getNewQuestionPoints();
        this.required = formInfoBuilder.isNewQuestionRequired();
        this.answerType = AnswerEntity.AnswerType.valueOf(formInfoBuilder.getNewAnswerType());
        if (this.questionType == QuestionEntity.QuestionType.SURVEY_Q) {
            if(answerType != AnswerEntity.AnswerType.TEXT_AREA) this.labels = new ArrayList<>();
        } else {
            this.incorrectAnswers = new ArrayList<>();
            this.correctAnswers = new ArrayList<>();
        }
    }

    public boolean build() {
        //provere
        //ubacivanje u bazu
        this.formInfoBuilder.addQuestion(new QuestionEntity(this));
        return true;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public double getPoints() {
        return points;
    }

    public void setPoints(double points) {
        this.points = points;
    }

    public boolean isRequired() {
        return required;
    }

    public void setRequired(boolean required) {
        this.required = required;
    }

    public AnswerEntity.AnswerType getAnswerType() {
        return answerType;
    }

    public void setAnswerType(AnswerEntity.AnswerType answerType) {
        this.answerType = answerType;
    }

    public List<String> getIncorrectAnswers() {
        return incorrectAnswers;
    }

    public void setIncorrectAnswers(List<String> incorrectAnswers) {
        this.incorrectAnswers = incorrectAnswers;
    }

    public List<String> getCorrectAnswers() {
        return correctAnswers;
    }

    public void setCorrectAnswers(List<String> correctAnswers) {
        this.correctAnswers = correctAnswers;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    public void setCorrectAnswer(String correctAnswer) {
        this.correctAnswer = correctAnswer;
    }

    public List<String> getLabels() {
        return labels;
    }

    public void setLabels(List<String> labels) {
        this.labels = labels;
    }

    public QuestionEntity.QuestionType getQuestionType() {
        return questionType;
    }

    public void setQuestionType(QuestionEntity.QuestionType questionType) {
        this.questionType = questionType;
    }
    
    

}

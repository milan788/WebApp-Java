package users.examinee;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import users.author.entities.AnswerEntity;
import users.author.entities.QuestionEntity;
import users.author.entities.SurveyAnswerEntity;
import users.author.entities.TestAnswerEntity;
import users.examinee.entities.AnsweredQuestionEntity;
import users.examinee.entities.AnsweredSurveyQuestionEntity;
import users.examinee.entities.AnsweredTestQuestionEntity;

public class AnsweredQuestionBuilder {
    private FormFiller formFiller;
    private AnsweredQuestionEntity answeredQuestionToBuild;
    
    private QuestionEntity q;
    
    private List<String> labels;
    
    private String chosenAnswer;
    private List<String> chosenAnswers;
    private double score;

    private String strAnswer;
    private List<String> strAnswers;

    public AnsweredQuestionBuilder(QuestionEntity q, FormFiller formFiller) {
        this.q = q;
        this.formFiller = formFiller;
        if (q.getType() == QuestionEntity.QuestionType.TEST_Q) {
            this.answeredQuestionToBuild = new AnsweredTestQuestionEntity();
            this.labels = setTestLabels();
            if (q.getAnswer().getType() == AnswerEntity.AnswerType.CHOOSE_MANY
                    || q.getAnswer().getType() == AnswerEntity.AnswerType.CHOOSE_ONE) {
                this.chosenAnswers = new ArrayList<>();
            } 
        } else {
            this.answeredQuestionToBuild = new AnsweredSurveyQuestionEntity();
            this.labels = ((SurveyAnswerEntity)q.getAnswer()).getLabelsParsed();
            if(q.getAnswer().getType() != AnswerEntity.AnswerType.TEXT_AREA)
                this.strAnswers = new ArrayList<>();
        }

    }

    public AnsweredQuestionBuilder(AnsweredQuestionEntity answeredQuestionToBuild, FormFiller formFiller) {
        this.q = answeredQuestionToBuild.getQuestion();
        this.formFiller = formFiller;
        this.answeredQuestionToBuild = answeredQuestionToBuild;
        if(answeredQuestionToBuild.getQuestion().getType() == QuestionEntity.QuestionType.TEST_Q) {
            AnsweredTestQuestionEntity answeredTestQuestion = (AnsweredTestQuestionEntity)answeredQuestionToBuild;
            this.labels = setTestLabels();
            this.chosenAnswer = answeredTestQuestion.getChosenAnswer();
            this.chosenAnswers = answeredTestQuestion.getChosenAnswersParsed();
            this.score = answeredTestQuestion.getScore();
        } 
        else {
            AnsweredSurveyQuestionEntity answeredSurveyQuestion = (AnsweredSurveyQuestionEntity)answeredQuestionToBuild;
            this.labels = ((SurveyAnswerEntity)q.getAnswer()).getLabelsParsed();
            this.strAnswer = answeredSurveyQuestion.getStrAnswer();
            this.strAnswers = answeredSurveyQuestion.getStrAnswersParsed();
        }
    }
    
    public void update() {
        if(q.getType() == QuestionEntity.QuestionType.TEST_Q) calculateScore();
        answeredQuestionToBuild.update(this);
    }
    
    void build() {
        update();
        formFiller.getAnsweredQuestions().add(answeredQuestionToBuild);
    }
    
    private List<String> setTestLabels() {
        List<String> retStringsList = new ArrayList<>();
        
        TestAnswerEntity answer = (TestAnswerEntity)q.getAnswer();
        List<String> incorrectAnswers = answer.getIncorrectAnswersParsed();
        List<String> correctAnswers;
        if(answer.getType() == AnswerEntity.AnswerType.CHOOSE_MANY) {
            correctAnswers = answer.getCorrectAnswersParsed();
        } 
        else {
            correctAnswers = new ArrayList<>();
            correctAnswers.add(answer.getCorrectAnswer());
        }                             
        
        if(correctAnswers == null || incorrectAnswers == null) return null;
        
        retStringsList.addAll(incorrectAnswers);
        retStringsList.addAll(correctAnswers);
        Collections.shuffle(retStringsList);
        
        return retStringsList;
    }
    
    private void calculateScore() {
        TestAnswerEntity answer = (TestAnswerEntity)q.getAnswer();
        double maxPoints = answer.getPoints();
        switch(answer.getType()) {
            case NUMBER:
            case SHORT_TEXT:
            case CHOOSE_ONE:
                if(chosenAnswer == null) score = 0;
                if(chosenAnswer.equals(answer.getCorrectAnswer())) score = maxPoints;
                break;
            case CHOOSE_MANY:
                int numCorrectChosen = 0;
                List<String> correctAnswers = answer.getCorrectAnswersParsed();
                for(String chosen : chosenAnswers) {
                    boolean found = false;
                    for(String correct : correctAnswers)
                        if(chosen.equals(correct)) found = true;
                    if(found) numCorrectChosen++;
                    else numCorrectChosen--;
                }
                if(numCorrectChosen < 0) numCorrectChosen = 0;
                score = (numCorrectChosen / (double)correctAnswers.size()) * maxPoints;
        }
    }
    
    public double getMaxPoints() {
        if(this.q.getType() == QuestionEntity.QuestionType.TEST_Q) 
            return ((TestAnswerEntity)this.q.getAnswer()).getPoints();
        return 0;
    }

    public FormFiller getFormFiller() {
        return formFiller;
    }

    public void setFormFiller(FormFiller formFiller) {
        this.formFiller = formFiller;
    }

    public AnsweredQuestionEntity getAnsweredQuestionToBuild() {
        return answeredQuestionToBuild;
    }

    public void setAnsweredQuestionToBuild(AnsweredQuestionEntity answeredQuestionToBuild) {
        this.answeredQuestionToBuild = answeredQuestionToBuild;
    }

    public QuestionEntity getQ() {
        return q;
    }

    public void setQ(QuestionEntity q) {
        this.q = q;
    }

    public List<String> getLabels() {
        return labels;
    }

    public void setLabels(List<String> labels) {
        this.labels = labels;
    }

    public String getChosenAnswer() {
        return chosenAnswer;
    }

    public void setChosenAnswer(String chosenAnswer) {
        this.chosenAnswer = chosenAnswer;
    }

    public List<String> getChosenAnswers() {
        return chosenAnswers;
    }

    public void setChosenAnswers(ArrayList<String> chosenAnswers) {
        this.chosenAnswers = chosenAnswers;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getStrAnswer() {
        return strAnswer;
    }

    public void setStrAnswer(String strAnswer) {
        this.strAnswer = strAnswer;
    }

    public List<String> getStrAnswers() {
        return strAnswers;
    }

    public void setStrAnswers(List<String> strAnswers) {
        this.strAnswers = strAnswers;
    }

    
    
}

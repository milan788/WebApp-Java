package users.author.entities;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import org.hibernate.annotations.Any;
import org.hibernate.annotations.AnyMetaDef;
import org.hibernate.annotations.MetaValue;
import users.author.QuestionBuilder;

@Entity
public class QuestionEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    private int id;    
    public enum QuestionType {TEST_Q, SURVEY_Q};
    private QuestionType type = QuestionType.SURVEY_Q;
    private String text;        
    private boolean required;
    
    /*@Any(
        metaDef = "answer_entity_descr",
        metaColumn = @Column(name = "entity_type"))
    @JoinColumn(name = "answer_id")
    @AnyMetaDef(
            name = "answer_entity_descr",
            idType = "int", 
            metaType = "string", 
            metaValues = { 
             @MetaValue(targetEntity = SurveyAnswerEntity.class, value = "S"),
             @MetaValue(targetEntity = TestAnswerEntity.class, value = "T"),
       })*/
    @OneToOne(
            cascade = CascadeType.ALL,
            fetch = FetchType.EAGER
    )
    private AnswerEntity answer;
    
    public QuestionEntity() {}
    
    public QuestionEntity(QuestionBuilder builder) {
        this.type = builder.getQuestionType();
        this.text = builder.getText();
        this.required = builder.isRequired();
        if(this.type == QuestionType.SURVEY_Q) this.answer = new SurveyAnswerEntity(builder);
        else this.answer = new TestAnswerEntity(builder);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public boolean isRequired() {
        return required;
    }

    public void setRequired(boolean required) {
        this.required = required;
    }

    public AnswerEntity getAnswer() {
        return answer;
    }

    public void setAnswer(AnswerEntity answer) {
        this.answer = answer;
    }

    public QuestionType getType() {
        return type;
    }

    public void setType(QuestionType type) {
        this.type = type;
    }
    
    
    
}

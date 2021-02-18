package users.examinee.entities;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import users.author.entities.QuestionEntity;
import users.examinee.AnsweredQuestionBuilder;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class AnsweredQuestionEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private int id;
    @ManyToOne(
            fetch = FetchType.LAZY
    )
    private QuestionEntity question;
    
    public AnsweredQuestionEntity() {}
    
    public void update(AnsweredQuestionBuilder builder) {
        this.question = builder.getQ();
    }
    
    protected String convert(List<String> list) {
        if(list == null) return null;
        StringBuilder sb = new StringBuilder();
        list.forEach((s) -> {
            sb.append(s).append("#");
        });
        
        return sb.toString();
    }
    
    protected List<String> parse(String strToParse) {
        if(strToParse == null) return null;
        return Arrays.asList(strToParse.split("#"));
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public QuestionEntity getQuestion() {
        return question;
    }

    public void setQuestion(QuestionEntity question) {
        this.question = question;
    }
    
}

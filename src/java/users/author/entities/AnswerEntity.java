package users.author.entities;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import users.author.QuestionBuilder;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class AnswerEntity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private int id;
    public enum AnswerType { NUMBER, SHORT_TEXT, TEXT_AREA, CHOOSE_ONE, CHOOSE_MANY }    
    private AnswerType type;    
    
    public AnswerEntity() {}

    public AnswerEntity(QuestionBuilder builder) {
        this.type = builder.getAnswerType();
    }
    
    protected String convert(List<String> answers) {
        if(answers == null) return null;
        StringBuilder ret = new StringBuilder();
        answers.forEach((a) -> {
            ret.append(a).append("#");
        });
        return ret.toString();
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

    public AnswerType getType() {
        return type;
    }

    public void setType(AnswerType type) {
        this.type = type;
    }
    
}

package users.author.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import users.author.SurveyInfoBuilder;

@Entity
public class SurveyInfoEntity extends FormInfoEntity  implements Serializable {
    private int numOfPages;
    private boolean personalized;
    
    public SurveyInfoEntity() {}

    public SurveyInfoEntity(SurveyInfoBuilder builder) {
        super(builder);
        this.numOfPages = builder.getNumOfPages();
        this.personalized = builder.isPersonalized();
    }

    public void setNumOfPages(int numOfPages) {
        this.numOfPages = numOfPages;
    }

    public int getNumOfPages() {
        return numOfPages;
    }

    public boolean isPersonalized() {
        return personalized;
    }

    public void setPersonalized(boolean personalized) {
        this.personalized = personalized;
    }
    
    
    
}

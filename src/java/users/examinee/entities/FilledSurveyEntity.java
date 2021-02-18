package users.examinee.entities;

import javax.persistence.Entity;
import users.examinee.FormFiller;

@Entity
public class FilledSurveyEntity extends FilledFormEntity {

    public FilledSurveyEntity() {}

    @Override
    public void update(FormFiller formFiller) {
        super.update(formFiller);
    }
    
    
    
}

package users.examinee.entities;

import javax.persistence.Entity;
import users.examinee.FormFiller;

@Entity
public class FilledTestEntity extends FilledFormEntity {
    
    public FilledTestEntity() {}    
    
    @Override
    public void update(FormFiller formFiller) {
        super.update(formFiller);
    }
}

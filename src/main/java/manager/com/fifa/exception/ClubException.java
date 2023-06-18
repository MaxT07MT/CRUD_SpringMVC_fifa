package manager.com.fifa.exception;

import net.sf.oval.ConstraintViolation;

import java.util.List;

public class ClubException extends RuntimeException{
    public List<ConstraintViolation> violations ;
    public ClubException(String s) {
        super(s);
    }


    public ClubException(List<ConstraintViolation> violations) {
        this.violations = violations;
    }
}

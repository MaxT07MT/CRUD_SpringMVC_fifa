package manager.com.fifa.exception;

import net.sf.oval.ConstraintViolation;

import java.util.List;

public class PlayerException extends RuntimeException {
    public List<ConstraintViolation> violations ;
    public PlayerException(String s) {
        super(s);
    }

    public PlayerException(List<ConstraintViolation> violations) {
        this.violations = violations;
    }
}


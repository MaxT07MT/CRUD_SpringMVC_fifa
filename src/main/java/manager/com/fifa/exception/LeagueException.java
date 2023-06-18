package manager.com.fifa.exception;

import net.sf.oval.ConstraintViolation;

import java.util.List;

public class LeagueException extends RuntimeException{
    public List<ConstraintViolation> violations ;
    public LeagueException(String s) {
        super(s);
    }

    public LeagueException(List<ConstraintViolation> violations) {
    this.violations = violations;
    }
}

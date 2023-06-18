package manager.com.fifa.service;


import manager.com.fifa.dao.LeagueRepository;
import manager.com.fifa.exception.LeagueException;
import manager.com.fifa.model.League;
import net.sf.oval.ConstraintViolation;
import net.sf.oval.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class LeagueServiceImp implements LeagueService {

    @Autowired
    private LeagueRepository leagueRepository;



    @Transactional(readOnly = true)
    public List<League> getAll() {
        return leagueRepository.getAll();
    }

    @Transactional
    public League findById(int id) {
        return leagueRepository.findById(id);
    }

    @Transactional
    public void create(League league) {
        List<ConstraintViolation> violations = new Validator().validate(league);
        if (!violations.isEmpty()) {
            throw new LeagueException(violations);
        }
        leagueRepository.create(league);
    }

    @Transactional
    public void update(League league) {
        List<ConstraintViolation> violations = new Validator().validate(league);
        if (!violations.isEmpty()) {
            throw new LeagueException(violations);
        }
        leagueRepository.update(league);
    }
    @Transactional
    public void delete(League league) {
        leagueRepository.delete(league);

    }



}

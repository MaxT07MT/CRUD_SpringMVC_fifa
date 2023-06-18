package manager.com.fifa.service;


import manager.com.fifa.dao.ClubRepository;
import manager.com.fifa.exception.ClubException;
import manager.com.fifa.model.Club;
import net.sf.oval.ConstraintViolation;
import net.sf.oval.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class ClubServiceImpl implements ClubService {

    ClubRepository clubRepository;
    @Autowired
    public ClubServiceImpl(ClubRepository clubRepository) {
        this.clubRepository = clubRepository;
    }

    @Override
    @Transactional
    public List<Club> findAll() {
       return clubRepository.findAll();
    }

    @Override
    @Transactional
    public Club findById(int id) {
        return clubRepository.findById(id);
    }

    @Override
    @Transactional
    public List<Club> findByLeagueId(int leagueId) {
        return clubRepository.findByLeagueId(leagueId);
    }

    @Override
    @Transactional
    public int create(Club club) {
        List<ConstraintViolation> violations = new Validator().validate(club);
        if (!violations.isEmpty()) {
            throw new ClubException(violations);
        }
       return clubRepository.create(club);

    }

    @Override
    @Transactional
    public int update( Club club) {
        List<ConstraintViolation> violations = new Validator().validate(club);
        if (!violations.isEmpty()){
            throw new ClubException(violations);
        }
        return clubRepository.update(club);
    }


    @Override
    @Transactional
    public boolean exist(int id) {
        return false;
    }

    @Override
    @Transactional
    public int delete(Club club) {
//        if (!employeeRepository.exist(id)){
//            throw new EmployeeException("cannot find employee with id " + id);
//      }
        return clubRepository.delete(club);
    }

}

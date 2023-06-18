package manager.com.fifa.dao;



import manager.com.fifa.model.Club;

import java.util.List;

public interface ClubRepository {
        List<Club> findAll();
        Club findById(int id);
        List<Club> findByLeagueId(int leagueId);
        int create(Club club);
        int update( Club club);
        int delete(Club club);
        boolean exist(int id);
    }
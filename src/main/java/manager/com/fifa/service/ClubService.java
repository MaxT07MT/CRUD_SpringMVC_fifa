package manager.com.fifa.service;



import manager.com.fifa.model.Club;

import java.util.List;

public interface ClubService {
    List<Club> findAll();
    Club findById(int id);
    List<Club> findByLeagueId(int leagueId);
    int create(Club club);
    int update( Club club);
    int delete(Club club);
    boolean exist(int id);
}

package manager.com.fifa.service;



import manager.com.fifa.model.League;

import java.util.List;

public interface LeagueService {


    List<League> getAll();
    League findById(int id);

    void create(League league);

    void update(League league);

    void delete(League league);
}
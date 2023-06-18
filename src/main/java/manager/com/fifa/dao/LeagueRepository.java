package manager.com.fifa.dao;



import manager.com.fifa.model.League;

import java.util.List;

public interface LeagueRepository {

    List<League> getAll();

    League findById(int id);

    void create(League league);

    void update(League league);

    void delete(League league);

}
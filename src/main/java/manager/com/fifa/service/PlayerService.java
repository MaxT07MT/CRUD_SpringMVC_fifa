package manager.com.fifa.service;

import manager.com.fifa.model.Club;
import manager.com.fifa.model.Player;

import java.util.List;

public interface PlayerService {
    List<Player> findAllPlayer();
    Player findPlayerById(int id);
    List<Player> findByClubId(int clubId, int leagueId);
    int createPlayer(Player player);
    int updatePlayer(Player player);
    int deletePlayer(Player player);
    boolean exist(int id);
}


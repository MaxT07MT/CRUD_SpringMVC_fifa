package manager.com.fifa.service;

import manager.com.fifa.dao.PlayerRepository;
import manager.com.fifa.exception.ClubException;
import manager.com.fifa.exception.PlayerException;
import manager.com.fifa.model.Player;
import net.sf.oval.ConstraintViolation;
import net.sf.oval.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class PlayerServiceImpl implements PlayerService{
    PlayerRepository playerRepository;
    @Autowired
    public PlayerServiceImpl(PlayerRepository playerRepository) {
        this.playerRepository = playerRepository;
    }

    @Override
    @Transactional
    public List<Player> findAllPlayer() {
        return playerRepository.findAllPlayer();
    }

    @Override
    @Transactional
    public Player findPlayerById(int id) {
        return playerRepository.findPlayerById(id);
    }

    @Override
    @Transactional
    public List<Player> findByClubId(int clubId, int leagueId) {
        return playerRepository.findByClubId(clubId, leagueId);
    }

    @Override
    @Transactional
    public int createPlayer(Player player) {
        List<ConstraintViolation> violations = new Validator().validate(player);
        if (!violations.isEmpty()) {
            throw new PlayerException(violations);
        }
        return playerRepository.createPlayer(player);
    }

    @Override
    @Transactional
    public int updatePlayer(Player player) {
        List<ConstraintViolation> violations = new Validator().validate(player);
        if (!violations.isEmpty()) {
            throw new PlayerException(violations);
        }
        return playerRepository.updatePlayer(player);
    }

    @Override
    @Transactional
    public int deletePlayer(Player player) {
        return playerRepository.deletePlayer(player);
    }

    @Override
    @Transactional
    public boolean exist(int id) {
        return false;
    }
}

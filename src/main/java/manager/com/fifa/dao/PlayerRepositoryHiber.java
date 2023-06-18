package manager.com.fifa.dao;

import manager.com.fifa.model.Player;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class PlayerRepositoryHiber implements PlayerRepository {
    @Autowired
    SessionFactory sessionFactory;
    @Override
    @SuppressWarnings("unchecked")
    public List findAllPlayer() {
        Session session = sessionFactory.openSession();
        return session.createQuery("from Player ").list();
    }

    @Override
    public Player findPlayerById(int id) {
        return sessionFactory.getCurrentSession()
                .get(Player.class, id);
    }
    @Override
    @SuppressWarnings("unchecked")
    public List<Player> findByClubId(int clubId, int leagueId) {
        Session session = sessionFactory.openSession();
        return session.createQuery(" from  Player where clubId = :clubId and leagueId = :leagueId")
                .setParameter("clubId", clubId).setParameter("leagueId", leagueId)
                .list();
    }

    @Override
    public int createPlayer(Player player) {
        Session session = sessionFactory.getCurrentSession();
        session.save(player);
        return 0;
    }
    @Override
    public int deletePlayer(Player player) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(player);
        return 0;
    }

    @Override
    public boolean exist(int id) {
        return false;
    }

    @Override
    public int updatePlayer(Player player) {
        Session session = sessionFactory.getCurrentSession();
        session.update(player);
        return 0;
    }


}

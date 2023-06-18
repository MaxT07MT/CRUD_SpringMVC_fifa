package manager.com.fifa.dao;


import manager.com.fifa.model.League;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LeagueRepositoryHiber implements LeagueRepository {

    @Autowired
    private SessionFactory sessionFactory;
    @Autowired
    HibernateTransactionManager transactionManager;

    public LeagueRepositoryHiber(SessionFactory sessionFactory, HibernateTransactionManager transactionManager) {
        this.sessionFactory = sessionFactory;
        this.transactionManager = transactionManager;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<League> getAll() {
        Session session = sessionFactory.openSession();
        return session.createQuery("from League ").list();
    }
    @Override
    public League findById(int id) {
        return sessionFactory.getCurrentSession()
                .get(League.class, id);
    }

    @Override
    public void create(League league) {
        Session session = sessionFactory.getCurrentSession();
        session.save(league);

    }
    @Override
    public void update(League league) {
        Session session = sessionFactory.getCurrentSession();
        session.update(league);

    }
    @Override
    public void delete(League league) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(league);

    }
}
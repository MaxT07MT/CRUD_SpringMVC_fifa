package manager.com.fifa.dao;


import manager.com.fifa.model.Club;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class ClubRepositoryHiber implements ClubRepository {
    @Autowired
    SessionFactory sessionFactory;
    @Override
    @SuppressWarnings("unchecked")
    public List findAll() {
        Session session = sessionFactory.openSession();
        // return session.createQuery("SELECT Employee.id, Employee.firstname, Employee.lastname, Employee.age, Employee.phone, Employee.email, Employee.position, Employee.depId, Department.name FROM Employee INNER JOIN Department ON Department.id = Employee.depId").list();
        return session.createQuery("from Club ").list();
    }

    @Override
    public Club findById(int id) {
        return sessionFactory.getCurrentSession()
                .get(Club.class, id);
    }
    @Override
    @SuppressWarnings("unchecked")
    public List<Club> findByLeagueId(int leagueId) {
        Session session = sessionFactory.openSession();
        return session.createQuery(" from  Club  where leagueId = :leagueId")
                .setParameter("leagueId", leagueId)
                .list();
    }

    @Override
    public int create(Club club) {
        Session session = sessionFactory.getCurrentSession();
        session.save(club);
        return 0;
    }
    @Override
    public int delete(Club club) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(club);
        return 0;
    }

    @Override
    public boolean exist(int id) {
        return false;
    }

    @Override
    public int update(Club club) {
        Session session = sessionFactory.getCurrentSession();
        session.update(club);
        return 0;
    }


}

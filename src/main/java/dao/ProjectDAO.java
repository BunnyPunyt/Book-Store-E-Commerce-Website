package dao;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.List;
import controller.*;

public abstract class ProjectDAO<T> {
	private Class<T> entityClass;

    public ProjectDAO(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    public void save(T entity) {
        EntityManager em = jpaUtils.getEntityManager();
        EntityTransaction transaction = null;
        try {
            transaction = em.getTransaction();
            transaction.begin();
            em.persist(entity);
            transaction.commit();
        } catch (RuntimeException e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        } finally {
            em.close();
        }
    }

    public T getById(Object id) {
        EntityManager em = jpaUtils.getEntityManager();
        try {
            return em.find(entityClass, id);
        } finally {
            em.close();
        }
    }

    public List<T> getAll() {
        EntityManager em = jpaUtils.getEntityManager();
        try {
            return em.createQuery("from " + entityClass.getName(), entityClass).getResultList();
        } finally {
            em.close();
        }
    }

    public void update(T entity) {
        EntityManager em = jpaUtils.getEntityManager();
        EntityTransaction transaction = null;
        try {
            transaction = em.getTransaction();
            transaction.begin();
            em.merge(entity);
            transaction.commit();
        } catch (RuntimeException e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        } finally {
            em.close();
        }
    }

    public void delete(T entity) {
        EntityManager em = jpaUtils.getEntityManager();
        EntityTransaction transaction = null;
        try {
            transaction = em.getTransaction();
            transaction.begin();
            em.remove(em.contains(entity) ? entity : em.merge(entity));
            transaction.commit();
        } catch (RuntimeException e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        } finally {
            em.close();
        }
    }
}

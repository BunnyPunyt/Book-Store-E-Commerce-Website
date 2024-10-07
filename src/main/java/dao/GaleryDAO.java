package dao;

import java.util.List;

import javax.persistence.EntityManager;

import controller.jpaUtils;
import model.Galery;

public class GaleryDAO extends ProjectDAO<Galery> {
	public GaleryDAO() {
        super(Galery.class);
    }
	
	 public List<Galery> getByProductCode(String maSP) {
	        EntityManager em = jpaUtils.getEntityManager();
	        List<Galery> galeries = null;
	        try {
	            // JPQL query that joins the Galery and Book entities
	            galeries = em.createQuery(
	                "SELECT g FROM Galery g WHERE g.book.maSP = :maSP", Galery.class
	            ).setParameter("maSP", maSP).getResultList();
	        } finally {
	            em.close();
	        }
	        return galeries;
	    }
	
}

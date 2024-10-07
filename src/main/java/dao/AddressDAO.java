package dao;

import model.*;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class AddressDAO extends ProjectDAO<Address> {
	private static EntityManagerFactory factory;
	
	public AddressDAO() {
        super(Address.class);
    }
	
	static {
        try {
            factory = Persistence.createEntityManagerFactory("Asm_java4");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	
	public static List<Address> selectAll() {
		EntityManager em = factory.createEntityManager();
		List<Address> addressList = null;

		try {
			addressList = em.createQuery("SELECT a FROM Address a", Address.class).getResultList();
		} finally {
			em.close();
		}

		return addressList;
	}
	
	public List<Address> getByUser(User user) {
	    EntityManager em = factory.createEntityManager();
	    List<Address> addresses = null;

	    try {
	        String query = "SELECT a FROM Address a WHERE a.user = :user";
	        addresses = em.createQuery(query, Address.class)
	                .setParameter("user", user)
	                .getResultList();
	    } finally {
	        em.close();
	    }

	    return addresses;
	}
}

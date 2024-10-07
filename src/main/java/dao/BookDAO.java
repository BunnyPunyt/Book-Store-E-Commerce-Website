package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import controller.jpaUtils;
import model.Book;
import model.BookDetail;

public class BookDAO extends ProjectDAO<Book> {
	public BookDAO() {
        super(Book.class);
    }
	
	public List<Book> findTop4(){
		EntityManager em = jpaUtils.getEntityManager();
		TypedQuery<Book> query = em.createQuery("FROM Book b", Book.class);
        query.setMaxResults(4);
        return query.getResultList();
	}
	
	public Book selectBookByTenSP(String tenSP) {
		EntityManager em = jpaUtils.getEntityManager();
		String japl = "select b from Book b where b.tenSP = :tenSP";
		TypedQuery<Book> query = em.createQuery(japl, Book.class);
		query.setParameter("tenSP", tenSP);
		return query.getSingleResult();
	}
	
	public List<Book>  selectListBookByTenSP(String tenSP) {
		EntityManager em = jpaUtils.getEntityManager();
		String japl = "select b from Book b where b.tenSP like :tenSP";
		TypedQuery<Book> query = em.createQuery(japl, Book.class);
		query.setParameter("tenSP","%" + tenSP + "%");
		return query.getResultList();
	}
	
	public List<Book>  selectListBookByMaDM(String maDM) {
		EntityManager em = jpaUtils.getEntityManager();
		String japl = "select b from Book b where b.category.maDM = : maDM";
		TypedQuery<Book> query = em.createQuery(japl, Book.class);
		query.setParameter("maDM", maDM);
		return query.getResultList();
	}
	
}

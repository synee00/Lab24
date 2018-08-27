package com.grandcircus.coffeeShopPlus;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
//import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grandcircus.coffeeShopPlus.Items;

@Repository
@Transactional
public class ItemsDaoHibernate {
	/*
	 * Data Access Object is basically an object or an interface that provides access to an underlying database
	 */
	/*@Autowired
	private JdbcTemplate jdbcTemplate;
	*/
	@PersistenceContext
	EntityManager em;
	
	public List<Items> findAll()
	{
		//String sql = "SELECT * FROM items";
		return em.createQuery("FROM Items", Items.class).getResultList();
	}
	
	public Items findByName(String name)
	{
		//String sql = "SELECT * FROM items WHERE name = ?";
		return em.find(Items.class, name);
	}
	
	public void create(Items item)
	{
		em.persist(item); 

	}
	public void update(Items item)
	{
		em.merge(item);
		/*String sql = "UPDATE Items SET name=\'" + item.getName() 
						+ "\', description=\'" + item.getDescription() 
						+ "\', quantity=" + item.getQuantity()
						+ ", price=" + item.getPrice()
						+ "  WHERE id=" + item.getId();
		em.createQuery(sql).executeUpdate();*/

	}
	public void delete(Long id)
	{
		// Deleting with Hibernate entity manager requires fetching a reference first.
		Items item = em.getReference(Items.class, id);
		em.remove(item);
	}
	
}

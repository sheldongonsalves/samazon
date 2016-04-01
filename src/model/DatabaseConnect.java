
package model;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;


import model.DBUtil; 


public class DatabaseConnect {
	  
		public TypedQuery<Samazon> connection2()
		{
			
			EntityManager em=DBUtil.getEmFactory().createEntityManager();
			EntityTransaction trans = em.getTransaction();
		 
				TypedQuery query =em.createQuery(
						"Select sam from Samazon sam " ,Samazon.class);
					System.out.print(query);	
	
				return query;
				
		}
	
		
		public TypedQuery<Samazon> getProdDetails(String prod_id)
		{
			EntityManager em=DBUtil.getEmFactory().createEntityManager();
			EntityTransaction trans = em.getTransaction();
		 
				TypedQuery query =em.createQuery(
						"Select sam from Samazon sam where sam.productid like :product_id" ,Samazon.class)
						.setParameter("product_id", prod_id);
				
					System.out.print(query);	
	
				return query;
				
		}
		
	
}

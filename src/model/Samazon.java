package model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the SAMAZON database table.
 * 
 */
@Entity
@NamedQuery(name="Samazon.findAll", query="SELECT s FROM Samazon s")
public class Samazon implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String productid;

	private String productdescription;

	private String productimage;

	private String productname;

	private long productprice;

	public Samazon() {
	}

	public String getProductid() {
		return this.productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getProductdescription() {
		return this.productdescription;
	}

	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}

	public String getProductimage() {
		return this.productimage;
	}

	public void setProductimage(String productimage) {
		this.productimage = productimage;
	}

	public String getProductname() {
		return this.productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public long getProductprice() {
		return this.productprice;
	}

	public void setProductprice(long productprice) {
		this.productprice = productprice;
	}

}
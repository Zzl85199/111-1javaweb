package cgu;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;



public class GoodProducts {
	private List ProductsList;

	  public GoodProducts() {
		  ProductsList = new LinkedList();
	  }

	  public void addProduct(Product product) {
		  ProductsList.add(product);
	  }

	  public Iterator getProdList() {
	    return ProductsList.iterator();
	  }
}

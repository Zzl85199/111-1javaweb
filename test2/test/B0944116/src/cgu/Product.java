package cgu;

public class Product {
	private String ProdID;
	private String ProdName;
	private String ProdSpec;
	private String UnitPrice;
	private String ProdSource;
	public Product(String prodID,String prodName,String prodSpec,String unitPrice,String prodSource) { 
		this.ProdID=prodID;
		this.ProdName=prodName;
		this.ProdSpec=prodSpec;
		this.UnitPrice=unitPrice;
		this.ProdSource=prodSource;
	}
	public String getProdID() {
		return ProdID;
	}
	public void setProdID(String prodID) {
		ProdID = prodID;
	}
	public String getProdName() {
		return ProdName;
	}
	public void setProdName(String prodName) {
		ProdName = prodName;
	}
	public String getProdSpec() {
		return ProdSpec;
	}
	public void setProdSpec(String prodSpec) {
		ProdSpec = prodSpec;
	}
	public String getUnitPrice() {
		return UnitPrice;
	}
	public void setUnitPrice(String unitPrice) {
		UnitPrice = unitPrice;
	}
	public String getProdSource() {
		return ProdSource;
	}
	public void setProdSource(String prodSource) {
		ProdSource = prodSource;
	}
}

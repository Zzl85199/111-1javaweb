package scwcd.lab04; 

public class Book {
  private String name;
  private String author;
  private String publisher;
  private String isbn;
  private String price;

  public Book(String name, String author,String publisher,
                 String isbn, String price ) {
    this.name      = name;
    this.author    = author;
    this.publisher = publisher;
    this.isbn      = isbn;
    this.price     = price;
  }

  public String getName() {
    return name;
  }
  public String getAuthor() {
    return author;
  }
  public String getPublisher() {
    return publisher;
  }
  public String getIsbn() {
    return isbn;
  }
  public String getPrice() {
    return price;
  }
}

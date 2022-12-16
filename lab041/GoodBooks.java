package scwcd.lab04; 

import java.util.*;

public class GoodBooks {

  private List BooksList;

  public GoodBooks() {
    BooksList = new LinkedList();
  }

  public void addBook(Book book) {
    BooksList.add(book);
  }

  public Iterator getBookList() {
    return BooksList.iterator();
  }
}

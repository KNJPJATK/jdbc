package pl.knjpjatk.jdbc;

import pl.knjpjatk.jdbc.model.Book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Hello world!
 *
 */
public class App {

    private final static String CONNECTION_STRING = "jdbc:postgresql://localhost:5432/application?user=root&password=toor";

    public static void main( String[] args ) throws ClassNotFoundException {
        Class.forName(org.postgresql.Driver.class.getName());

        List<Book> books = new ArrayList<>();
        String whereCond = "Radek Kotarski";
        try (Connection connection = DriverManager.getConnection(CONNECTION_STRING)) {
            PreparedStatement statement = connection.prepareStatement("SELECT id, title, subtitle, author, description FROM book WHERE author = ?");
            statement.setString(1, whereCond);
            System.out.println(statement);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getLong("id"));
                book.setTitle(rs.getString("title"));
                book.setSubtitle(rs.getString("subtitle"));
                book.setAuthor(rs.getString("author"));
                book.setDescription(rs.getString("description"));
                books.add(book);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        System.out.println(books.size());
        System.out.println( "Hello World!" );
    }

}

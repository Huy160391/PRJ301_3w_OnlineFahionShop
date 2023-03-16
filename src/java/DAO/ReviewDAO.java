package DAO;

import DTO.ReviewDTO;
import mylib.DBTools;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO implements Serializable{

    private Connection connection;

    public ReviewDAO() throws ClassNotFoundException, SQLException {
        this.connection = DBTools.makeConnection();;
    }

    public List<ReviewDTO> getReviewsByPlaceID(int placeID) throws SQLException {
        List<ReviewDTO> reviews = new ArrayList<>();

        String query = "SELECT * FROM review WHERE placeID = ?";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1, placeID);

        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int reviewID = rs.getInt("reviewID");
            String reviewDetail = rs.getString("reviewDetail");
            int reviewLike = rs.getInt("reviewLike");
            int userID = rs.getInt("userID");

            ReviewDTO review = new ReviewDTO(reviewID, placeID, reviewDetail, reviewLike, userID);
            reviews.add(review);
        }

        return reviews;
    }

    public void addReview(ReviewDTO review) throws SQLException {
        String query = "INSERT INTO review (placeID, reviewDetail, reviewLike, userID) VALUES (?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1, review.getPlaceID());
        statement.setString(2, review.getReviewDetail());
        statement.setInt(3, review.getReviewLike());
        statement.setInt(4, review.getUserID());
        statement.executeUpdate();
    }
    
    public List<ReviewDTO> getReviewByUserID(int userID) throws SQLException {
    List<ReviewDTO> reviews = new ArrayList<>();

    String query = "SELECT * FROM review WHERE userID = ?";
    PreparedStatement statement = connection.prepareStatement(query);
    statement.setInt(1, userID);

    ResultSet rs = statement.executeQuery();
    while (rs.next()) {
        int reviewID = rs.getInt("reviewID");
        int placeID = rs.getInt("placeID");
        String reviewDetail = rs.getString("reviewDetail");
        int reviewLike = rs.getInt("reviewLike");

        ReviewDTO review = new ReviewDTO(reviewID, placeID, reviewDetail, reviewLike, userID);
        reviews.add(review);
    }

    return reviews;
}

    public void deleteReview(int reviewID) throws SQLException {
        String query = "DELETE FROM review WHERE reviewID = ?";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1, reviewID);

        statement.executeUpdate();
    }
}

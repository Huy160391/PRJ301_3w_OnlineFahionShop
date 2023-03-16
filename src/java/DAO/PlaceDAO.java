package DAO;

import DTO.ImageDTO;
import DTO.PlaceDTO;
import DTO.ReviewDTO;
import mylib.DBTools;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PlaceDAO {

    private Connection conn;

    public PlaceDAO() throws ClassNotFoundException, SQLException {
        this.conn = DBTools.makeConnection();
    }

    public void addPlace(PlaceDTO placeDTO) {
        String sql = "INSERT INTO place (placeName, district, placeDetail, placeLike, isAccept) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setString(1, placeDTO.getPlaceName());
            statement.setString(2, placeDTO.getDistrict());
            statement.setString(3, placeDTO.getPlaceDetail());
            statement.setInt(4, placeDTO.getPlaceLike());
            statement.setBoolean(5, placeDTO.getIsAccept());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updatePlace(PlaceDTO placeDTO) {
        String sql = "UPDATE place SET placeName = ?, district = ?, placeDetail = ?, placeLike = ? WHERE placeID = ?";
        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setString(1, placeDTO.getPlaceName());
            statement.setString(2, placeDTO.getDistrict());
            statement.setString(3, placeDTO.getPlaceDetail());
            statement.setInt(4, placeDTO.getPlaceLike());
            statement.setInt(5, placeDTO.getPlaceID());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deletePlace(int placeID) {
        String sql = "DELETE FROM place WHERE placeID = ?";
        String sql1 = "DELETE FROM image WHERE placeID = ?";

        try (PreparedStatement statement = conn.prepareStatement(sql);
             PreparedStatement statement1 = conn.prepareStatement(sql1)) {
            statement.setInt(1, placeID);
            statement.executeUpdate();
            statement1.setInt(1, placeID);
            statement1.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public PlaceDTO getPlaceByID(int placeID) {
        String sql = "SELECT * FROM place WHERE placeID = ?";
        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, placeID);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    PlaceDTO place = new PlaceDTO(
                            resultSet.getInt("placeID"),
                            resultSet.getString("placeName"),
                            resultSet.getString("district"),
                            resultSet.getString("placeDetail"),
                            resultSet.getInt("placeLike"),
                            null,
                            null
                    );
                    place.setListReview(getReviewsByPlaceID(placeID));
                    place.setListImage(getImagesByPlaceID(placeID));
                    return place;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<PlaceDTO> getAllPlaces() {
        List<PlaceDTO> places = new ArrayList<>();
        String sql = "SELECT * FROM place";
        try (Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery(sql)) {
            while (resultSet.next()) {
                PlaceDTO place = new PlaceDTO(
                        resultSet.getInt("placeID"),
                        resultSet.getString("placeName"),
                        resultSet.getString("district"),
                        resultSet.getString("placeDetail"),
                        resultSet.getInt("placeLike"),
                        null,
                        null,
                        resultSet.getBoolean("isAccept")
                );
                place.setListReview(getReviewsByPlaceID(place.getPlaceID()));
                place.setListImage(getImagesByPlaceID(place.getPlaceID()));
                places.add(place);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return places;
    }

    public List<ImageDTO> getImagesByPlaceID(int placeID) {
        List<ImageDTO> images = new ArrayList<>();
        String sql = "SELECT * FROM image WHERE placeID = ?";
        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, placeID);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    ImageDTO image = new ImageDTO(
                            resultSet.getInt("imageID"),
                            resultSet.getInt("placeID"),
                            resultSet.getString("url")
                    );
                    images.add(image);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return images;
    }

    public List<ReviewDTO> getReviewsByPlaceID(int placeID) {
        List<ReviewDTO> reviews = new ArrayList<>();
        String sql = "SELECT * FROM review WHERE placeID = ?";
        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, placeID);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    ReviewDTO review = new ReviewDTO(
                            resultSet.getInt("reviewID"),
                            resultSet.getInt("placeID"),
                            resultSet.getString("reviewDetail"),
                            resultSet.getInt("reviewLike"),
                            resultSet.getInt("userID")                           
                    );
                    reviews.add(review);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reviews;
    }

    public void addImage(ImageDTO imageDTO) {
        String sql = "INSERT INTO image (placeID, url) VALUES (?, ?)";
        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, imageDTO.getPlaceID());
            statement.setString(2, imageDTO.getUrl());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addReview(ReviewDTO reviewDTO) {
        String sql = "INSERT INTO review (placeID, reviewDetail, reviewLike, userID) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, reviewDTO.getPlaceID());
            statement.setString(2, reviewDTO.getReviewDetail());
            statement.setInt(3, reviewDTO.getReviewLike());
            statement.setInt(3, reviewDTO.getUserID());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<PlaceDTO> searchPlaces(String keyword) {
    List<PlaceDTO> places = new ArrayList<>();
    String sql = "SELECT * FROM place WHERE placeName LIKE ? OR placeDetail LIKE ?";
    try (PreparedStatement statement = conn.prepareStatement(sql)) {
        statement.setString(1, "%" + keyword + "%");
        statement.setString(2, "%" + keyword + "%");
        try (ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                PlaceDTO place = new PlaceDTO(
                        resultSet.getInt("placeID"),
                        resultSet.getString("placeName"),
                        resultSet.getString("district"),
                        resultSet.getString("placeDetail"),
                        resultSet.getInt("placeLike"),
                        null,
                        null,
                        resultSet.getBoolean("isAccept")
                );
                place.setListReview(getReviewsByPlaceID(place.getPlaceID()));
                place.setListImage(getImagesByPlaceID(place.getPlaceID()));
                places.add(place);
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return places;
}
}

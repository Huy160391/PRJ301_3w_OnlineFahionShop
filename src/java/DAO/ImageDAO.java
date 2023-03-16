/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.ImageDTO;
import mylib.DBTools;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ImageDAO {

    private Connection connection;

    public ImageDAO() throws ClassNotFoundException, SQLException {
        this.connection = DBTools.makeConnection();;
    }

    public List<ImageDTO> getImagesByPlaceID(int placeID) throws SQLException {
        List<ImageDTO> images = new ArrayList<>();

        String query = "SELECT * FROM image WHERE placeID = ?";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1, placeID);

        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int imageID = rs.getInt("imageID");
            String url = rs.getString("url");

            ImageDTO image = new ImageDTO(imageID, placeID, url);
            images.add(image);
        }

        return images;
    }

    public void addImage(ImageDTO image) throws SQLException {
        String query = "INSERT INTO image (placeID, url) VALUES (?, ?)";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1, image.getPlaceID());
        statement.setString(2, image.getUrl());

        statement.executeUpdate();
    }

    public void deleteImage(int imageID) throws SQLException {
        String query = "DELETE FROM image WHERE imageID = ?";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1, imageID);
        statement.executeUpdate();
    }
}

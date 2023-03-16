package DTO;

public class ImageDTO {

    private int imageID;
    private int placeID;
    private String url;

    public ImageDTO(int imageID, int placeID, String url) {
        this.imageID = imageID;
        this.placeID = placeID;
        this.url = url;
    }

    public ImageDTO(int placeID, String fileName) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getImageID() {
        return imageID;
    }

    public void setImageID(int imageID) {
        this.imageID = imageID;
    }

    public int getPlaceID() {
        return placeID;
    }

    public void setPlaceID(int placeID) {
        this.placeID = placeID;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}

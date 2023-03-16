package DTO;

import java.util.List;

public class PlaceDTO {

    private int placeID;
    private String placeName;
    private String district;
    private String placeDetail;
    private int placeLike;
    private List<ReviewDTO> listReview;
    private List<ImageDTO> listImage;
    private Boolean isAccept;

    public PlaceDTO(int placeID, String placeName, String district, String placeDetail, int placeLike, List<ReviewDTO> listReview, List<ImageDTO> listImage) {
        this.placeID = placeID;
        this.placeName = placeName;
        this.district = district;
        this.placeDetail = placeDetail;
        this.placeLike = placeLike;
        this.listReview = listReview;
        this.listImage = listImage;
        this.isAccept = false;
    }
    
    public PlaceDTO(int placeID, String placeName, String district, String placeDetail, int placeLike, List<ReviewDTO> listReview, List<ImageDTO> listImage, Boolean isAccept) {
        this.placeID = placeID;
        this.placeName = placeName;
        this.district = district;
        this.placeDetail = placeDetail;
        this.placeLike = placeLike;
        this.listReview = listReview;
        this.listImage = listImage;
        this.isAccept = isAccept;
    }
    
    public PlaceDTO(String placeName, String district, String placeDetail) {
        this.placeName = placeName;
        this.district = district;
        this.placeDetail = placeDetail;
        this.placeLike = 0;
    }

    public int getPlaceID() {
        return placeID;
    }

    public void setPlaceID(int placeID) {
        this.placeID = placeID;
    }

    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getPlaceDetail() {
        return placeDetail;
    }

    public void setPlaceDetail(String placeDetail) {
        this.placeDetail = placeDetail;
    }

    public int getPlaceLike() {
        return placeLike;
    }

    public void setPlaceLike(int placeLike) {
        this.placeLike = placeLike;
    }

    public List<ReviewDTO> getListReview() {
        return listReview;
    }

    public void setListReview(List<ReviewDTO> listReview) {
        this.listReview = listReview;
    }

    public List<ImageDTO> getListImage() {
        return listImage;
    }

    public void setListImage(List<ImageDTO> listImage) {
        this.listImage = listImage;
    }

    public Boolean getIsAccept() {
        return isAccept;
    }

    public void setIsAccept(Boolean isAccept) {
        this.isAccept = isAccept;
    }
    
    
}

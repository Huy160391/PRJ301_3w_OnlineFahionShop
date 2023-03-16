package DTO;

public class ReviewDTO {

    private int reviewID;
    private int placeID;
    private String reviewDetail;
    private int reviewLike;
    private int userID;

    public ReviewDTO(int reviewID, int placeID, String reviewDetail, int reviewLike,int userID) {
        this.reviewID = reviewID;
        this.placeID = placeID;
        this.reviewDetail = reviewDetail;
        this.reviewLike = reviewLike;
        this.userID = userID;
    }
    
    public int getUserID () {
        return userID;
    }

    public int getReviewID() {
        return reviewID;
    }

    public void setReviewID(int reviewID) {
        this.reviewID = reviewID;
    }

    public int getPlaceID() {
        return placeID;
    }

    public void setPlaceID(int placeID) {
        this.placeID = placeID;
    }

    public String getReviewDetail() {
        return reviewDetail;
    }

    public void setReviewDetail(String reviewDetail) {
        this.reviewDetail = reviewDetail;
    }

    public int getReviewLike() {
        return reviewLike;
    }

    public void setReviewLike(int reviewLike) {
        this.reviewLike = reviewLike;
    }
}

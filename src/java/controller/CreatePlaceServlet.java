package controller;

import DAO.PlaceDAO;
import DTO.ImageDTO;
import DTO.PlaceDTO;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


public class CreatePlaceServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            // Lấy thông tin về địa điểm từ người dùng
            String placeName = request.getParameter("placeName");
            String district = request.getParameter("district");
            String placeDetail = request.getParameter("placeDetail");
            int placeLike = Integer.parseInt(request.getParameter("placeLike"));

            // Tạo đối tượng PlaceDTO từ dữ liệu người dùng
            PlaceDTO place = new PlaceDTO(placeName, district, placeDetail);

            // Thêm đối tượng PlaceDTO vào cơ sở dữ liệu
            PlaceDAO placeDAO;
            placeDAO = new PlaceDAO();
            placeDAO.addPlace(place);

            // Lưu trữ các hình ảnh được tải lên bởi người dùng vào cơ sở dữ liệu
            List<Part> fileParts = request.getParts().stream().filter(part -> "file".equals(part.getName())).collect(Collectors.toList());
            for (Part filePart : fileParts) {
                String fileName = UUID.randomUUID().toString() + ".jpg"; // Tạo tên file độc đáo
                InputStream fileContent = filePart.getInputStream();
                File imageFile = new File("/path/to/image/" + fileName); // Thư mục lưu ảnh
                Files.copy(fileContent, imageFile.toPath(), StandardCopyOption.REPLACE_EXISTING); // Lưu ảnh vào thư mục
                String imageUrl = request.getContextPath() + "/image/" + fileName; // Trả về đường dẫn tới ảnh dưới dạng URL
                ImageDTO image = new ImageDTO(place.getPlaceID(), imageUrl);
                placeDAO.addImage(image);
            }

        } catch (Exception e) {
        } finally {
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

import DAO.PlaceDAO;
import DTO.PlaceDTO;
import DTO.ReviewDTO;
import DTO.ImageDTO;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "PlaceManagerServlet", urlPatterns = {"/place"})
public class PlaceManagerServlet extends HttpServlet {

    private final PlaceDAO placeDAO;

    public PlaceManagerServlet() throws ClassNotFoundException, SQLException {
        super();
        this.placeDAO = new PlaceDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int placeID = Integer.parseInt(request.getParameter("placeID"));
        PlaceDTO place = placeDAO.getPlaceByID(placeID);
        request.setAttribute("place", place);
        RequestDispatcher dispatcher = request.getRequestDispatcher("place.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        int placeID = Integer.parseInt(request.getParameter("placeID"));

        if (action.equals("update")) {
            String placeName = request.getParameter("placeName");
            String district = request.getParameter("district");
            String placeDetail = request.getParameter("placeDetail");
            int placeLike = Integer.parseInt(request.getParameter("placeLike"));
            PlaceDTO placeDTO = new PlaceDTO(placeID, placeName, district, placeDetail, placeLike, null, null);
            placeDAO.updatePlace(placeDTO);
            response.sendRedirect(request.getContextPath() + "/place?placeID=" + placeID);
        } else if (action.equals("delete")) {
            placeDAO.deletePlace(placeID);
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else if (action.equals("addImage")) {
            Part filePart = request.getPart("imageFile");
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            InputStream fileContent = filePart.getInputStream();
            ImageDTO imageDTO = new ImageDTO(0, placeID, fileName);
            placeDAO.addImage(imageDTO);
            response.sendRedirect(request.getContextPath() + "/place?placeID=" + placeID);
        }
    }
}

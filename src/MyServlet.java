import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import org.json.*;

public class MyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
//        resp.setContentType("text/html");
        String name=req.getParameter("name");
        System.out.println(name);
        resp.setContentType("application/json; charset=UTF-8");
        PrintWriter out=resp.getWriter();
//        out.print("fjdkfjdk");
//        out.println("<h1>abc</h1>");
        JSONObject jsonObject=new JSONObject();
        JSONArray jsonArray=new JSONArray();
        jsonArray.put(jsonObject);
        jsonArray.put(jsonObject);
        try{
            jsonObject.put("name","mafulong");
            jsonObject.put("age",18);
        }catch (Exception e){
            e.printStackTrace();
        }
//        out.print(jsonObject.toString());
        out.print(jsonArray.toString());

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
//        PrintWriter out=resp.getWriter();
//        out.print("fjdkfjdk");
        doGet(req,resp);
    }
}

package shixi.project;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "AddInputServlet",urlPatterns = "/aaa/bbb/AddInput")
public class AddInputServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String username1=request.getParameter("username");
        String password1=request.getParameter("password");
        String address1=request.getParameter("address");
        String sql="insert into [user](user_name,password,address,flag) values(?,?,?,?)";

        Connection conn = null;
        PreparedStatement st = null;

        String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String url = "jdbc:sqlserver://localhost:1433;DatabaseName=OnlineOrdering";
        String user = "sa";
        String password = "123456";

        try {
            try {
                Class.forName(driverClass).newInstance();
            } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
                e.printStackTrace();
            }
            conn = DriverManager.getConnection(url, user, password);
            conn.setAutoCommit(false);
            st = conn.prepareStatement(sql);
            st.setString(1,username1);
            st.setString(2,password1);
            st.setString(3,address1);
            st.setString(4,"0");
            int size=st.executeUpdate();
            conn.commit();
            if(size==0){
                throw new RuntimeException("未添加成功");
            }
        } catch (Exception var21) {
            var21.printStackTrace();
            if(conn!=null) {
                try {
                    conn.rollback();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException var20) {
                var20.printStackTrace();
            }
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/firstpage.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
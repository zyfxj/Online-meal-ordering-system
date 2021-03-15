package shixi.project;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.Objects;

@WebServlet(name = "JudgeServlet",urlPatterns = "/aaa/bbb/Judge")

public class JudgeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        int userid = Integer.parseInt(request.getParameter("username"));
        String password1 = request.getParameter("password");
        request.setAttribute("username", userid);
        String i = null;
        ServletConfig config=getServletConfig();
        ServletContext context=config.getServletContext();
        context.setAttribute("useridz", userid);

        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
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
            String sql = "select (password) from [user] where user_id=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, userid);
            rs = st.executeQuery();

            if (rs.next()) {
                String s = rs.getString(1);
                if (Objects.equals(s.trim(), password1)) {
                    i = "1";
                } else {
                    i = "0";
                }
            }
        } catch (Exception var21) {
            var21.printStackTrace();
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException var20) {
                var20.printStackTrace();
            }
        }
        if (!Objects.equals(i, "1")) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/System/Login_and_register/index.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/firstpage.jsp");
            dispatcher.forward(request, response);
        }
    }
}
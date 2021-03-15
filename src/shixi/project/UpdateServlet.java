package shixi.project;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name = "UpdateServlet",urlPatterns = "/aaa/bbb/Update")
public class UpdateServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context=getServletContext();
        int uid= (int) context.getAttribute("useridz");
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
                String sql = "select * from [user] where user_id=? ";
                st = conn.prepareStatement(sql);
                st.setInt(1,uid);
                //System.out.println(uid);
                rs = st.executeQuery();
                ArrayList<ArrayList<String>> table1 = new ArrayList<>();

                while(rs.next()) {
                    ArrayList<String> row = new ArrayList<>();
                    row.add(rs.getString(1));
                    row.add(rs.getString(2));
                    row.add(rs.getString(3));
                    row.add(rs.getString(4));
                    row.add(rs.getString(5));
                    row.add(rs.getString(6));
                    row.add(rs.getString(7));
                    table1.add(row);
                }
                request.setAttribute("table1",table1);
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
        RequestDispatcher dispatcher = request.getRequestDispatcher("/System/PersonalInfo/PersonalInfo.jsp");
        dispatcher.forward(request, response);
/*
        ServletContext context=getServletContext();
        int uid= (int) context.getAttribute("useridz");
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
            String sql = "select * from [user] where user_id=? ";
            st = conn.prepareStatement(sql);
            st.setInt(1,uid);
            rs = st.executeQuery();

            if (rs.next()) {
                useri useri = new useri(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                );
                request.setAttribute("i", useri);
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

        RequestDispatcher dispatcher = request.getRequestDispatcher("/System/PersonalInfo/PersonalInfo.jsp");
        dispatcher.forward(request, response);*/
    }
}

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

@WebServlet(name = "SelectServlet",urlPatterns = "/aaa/bbb/Select")
public class SelectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement st = null;
        PreparedStatement st1 = null;
        ResultSet rs = null;
        String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String url = "jdbc:sqlserver://localhost:1433;DatabaseName=OnlineOrdering";
        String user = "sa";
        String password = "123456";
        ServletContext context=getServletContext();
        int uid= (int) context.getAttribute("useridz");

        try {
            try {
                Class.forName(driverClass).newInstance();
            } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
                e.printStackTrace();
            }
            conn = DriverManager.getConnection(url, user, password);
            String sql = "select dish.dish_name,order_d.dish_price,number,price,order_d.order_id,flag from order_d,dish,order_u where dish.dish_id=order_d.dish_id and order_d.order_id=order_u.order_id and order_u.user_id=? and flag=0";
            String sql1 = "insert into [order_u](flag) values(?)";
            st = conn.prepareStatement(sql);
            st1 = conn.prepareStatement(sql1);
            st.setInt(1,uid);
            st1.setInt(1,1);
            rs = st.executeQuery();
            ArrayList<ArrayList<String>> table1 = new ArrayList<>();

            while(rs.next()) {
                ArrayList<String> row = new ArrayList<>();
                row.add(rs.getString(1));
                row.add(rs.getString(2));
                row.add(rs.getString(3));
                row.add(rs.getString(4));
                row.add(rs.getString(5));
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
        RequestDispatcher dispatcher = request.getRequestDispatcher("/System/order/Order.jsp");
        dispatcher.forward(request, response);
    }
}

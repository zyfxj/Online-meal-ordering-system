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

@WebServlet(name = "IndexServlet",urlPatterns = "/aaa/bbb/index")
public class IndexServlet extends HttpServlet {
    static int test = 3;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json; charset=utf-8");
        request.getSession().getServletContext().setAttribute("oid",test);
        ServletContext context=getServletContext();
        int uid= (int) context.getAttribute("useridz");
        String x = request.getParameter("checkedData");
        if (x==null){
            test=test+1;
            response.sendRedirect("Select");
        } else{
            String[] s = x.split(",");
            Connection conn = null;
            PreparedStatement st = null;
            PreparedStatement st1 = null;
            PreparedStatement st2 = null;
            ResultSet rs = null;
            String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
            String url = "jdbc:sqlserver://localhost:1433;DatabaseName=OnlineOrdering";
            String user = "sa";
            String password = "123456";
            int a =0;

            try {
                try {
                    Class.forName(driverClass).newInstance();
                } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
                    e.printStackTrace();
                }
                conn = DriverManager.getConnection(url, user, password);
                String sql = "insert into [order_d](order_id, dish_id, dish_price, number, price) values(?,?,?,?,?)";
                String sql1 = "insert into [order_u](order_id, user_id,flag) values(?,?,?)";
                String sql2 = "select order_d.dish_id, dish_name from dish,order_d where order_d.dish_id=dish.dish_id";
                conn.setAutoCommit(false);
                st = conn.prepareStatement(sql);
                st1 = conn.prepareStatement(sql1);
                st2 = conn.prepareStatement(sql2);
                rs = st2.executeQuery();

                while (rs.next()) {
                    if(rs.getString("dish_name").trim().equals(s[0].trim())){
                        a= rs.getInt("dish_id");
                        break;
                    }
                };
                st.setInt(1,test);
                st.setInt(2,a);
                st.setFloat(3,Float.parseFloat(s[1]));
                st.setInt(4,Integer.parseInt(s[2]));
                st.setFloat(5,Float.parseFloat(s[3]));
                st1.setInt(1,test);
                st1.setInt(2,uid);
                st1.setInt(3,0);
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
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package emp1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Emp
 */
@WebServlet("/Emp")
public class Emp extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Connection conn; // 데이터베이스에 들어가기위한 
    private PreparedStatement pstmt; //Statement만 쓰면 SQL인젝션에 공격받기 쉬움
    private ResultSet rs;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Emp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Emp_form.jsp"); //리퀘스트 디스패쳐로
		dispatcher.forward(request, response);
	

	      try{
	         String dbURL="jdbc:mariadb://localhost:3306/employees";
	         String dbID = "root";
	         String dbPassword="1234";
	         //드라이버 로딩 (메모리에)
	         Class.forName("org.mariadb.jdbc.Driver");
	         //DrierManager를 이용해서 conn객체를 불러온다.
	         conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
	         
	         Date birth = Date.valueOf("1983-08-16");
	         Date hire = Date.valueOf("2009-04-01");
	         String SQL = "INSERT INTO EMPLOYEES VALUES(?,?,?,?,?)";
	         
	         pstmt = conn.prepareStatement(SQL); //SQl문을 실행시키는 객체름 만듬
	         pstmt.setInt(1,1);
	         pstmt.setDate(2,birth);
	         pstmt.setString(3,"전나현");
	         pstmt.setString(4, "F");
	         pstmt.setDate(5,hire);
	         pstmt.executeUpdate();
	         System.out.println("데이터가 입력되었습니다.");
	         //RequestDispatcher dispatcher = request.getRequestDispatcher("Emp_form.jsp"); //리퀘스트 디스패쳐로
	   
	         }
	         catch (SQLException e) {
	            System.out.println("데이터 입력 오류.. 원인 ::" +e.getMessage());
	         } catch (ClassNotFoundException e) {
	            System.out.println("클래스를 찾을 수 없습니다."+e.getMessage());
	         } finally{
	            if(conn != null)
	               try { 
	                  conn.close();
	               } catch (SQLException e) {
	                  e.printStackTrace();
	               }
	            if(pstmt != null)
	               try {
	                  pstmt.close();
	               }catch (SQLException e){
	                  e.printStackTrace();
	               }
	            }
	}

}

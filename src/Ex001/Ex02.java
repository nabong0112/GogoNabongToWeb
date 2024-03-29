package Ex001;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex02
 */
@WebServlet("/Ex02")
public class Ex02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn; // 데이터베이스에 들어가기위한 
    private Statement pstmt; //Statement만 쓰면 SQL인젝션에 공격받기 쉬움
    private ResultSet rs;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ex02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try{
	         String dbURL="jdbc:mariadb://localhost:3306/employees";
	         String dbID = "root";
	         String dbPassword="1234";
	         String query = "select * from EMPLOYEES;";
	         //드라이버 로딩 (메모리에)
	         Class.forName("org.mariadb.jdbc.Driver");
	         //DrierManager를 이용해서 conn객체를 불러온다.
	         conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
	         
	         //쿼리문 실행 및 결과 받기
	         pstmt = conn.createStatement();
	         rs = pstmt.executeQuery(query);
	         
	         //String emp_name = rs.getString("emp_name");
	         
	         System.out.println("이름  성별            생일                   입사일");
	         while(rs.next()) {
	        	 System.out.println(rs.getString("emp_name") + " " + rs.getString("gender") +" " 
	        			 			+ rs.getString("birth_date") +" " + rs.getString("hire_date") + " " );
	        	 
	        	 
	        	 String emp_name = rs.getString("emp_name");
		         String gender = rs.getString("gender");
		         String birth_date = rs.getString("birth_date");
		         String hire_date = rs.getString("hire_date");
		        
		        request.setAttribute("emp_name", emp_name); //객체를 리퀘스특개체에 담는다 데이터가 문자열이 아니여도 가능함 data쪽은 오브젝트 형이라 어떤 형태든지 넣을 수 있음.
		 		request.setAttribute("gender", gender);
		 		request.setAttribute("birth_date", birth_date);
		 		request.setAttribute("hire_date", hire_date);
		 		
		 		RequestDispatcher dispatcher = request.getRequestDispatcher("Ex01_form.jsp"); //리퀘스트 디스패쳐로
		 		dispatcher.forward(request, response); //이거 주석 해제하면 Current position is before the last row이거뜸ㅋㅋ;; 이건 일단 while문 뒤나 ,,,안에 넣으면 되긴 
	         }
	         
	         
	 		//post방식은 insert로.......get은 select post방식에 select를 넣는거는 규약에 어긋남 
	         
	         
	         }
	         catch (SQLException e) {
	            System.out.println("데이터 입력 오류.. 원인 :: " +e.getMessage());
	         } catch (ClassNotFoundException e) {
	            System.out.println("클래스를 찾을 수 없습니다. "+e.getMessage());
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
	}

}

package ohh;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ohhh
 */
@WebServlet("/Ohhh")
public class Ohhh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ohhh() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String data = request.getParameter("data");
		String data2 = request.getParameter("data2");
				
		request.setAttribute("num1", data); //객체를 리퀘스특개체에 담는다 데이터가 문자열이 아니여도 가능함 data쪽은 오브젝트 형이라 어떤 형태든지 넣을 수 있음.
		request.setAttribute("num2", data2);
		
		
		System.out.println(data);
		System.out.println(data2);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("servletToJsp.jsp"); //리퀘스트 디스패쳐로
		dispatcher.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

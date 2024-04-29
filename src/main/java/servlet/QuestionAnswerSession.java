package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
public class QuestionAnswerSession extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		HttpSession session=request.getSession();
//		String totalQuestions = (String)session.getAttribute("numberOfQuestions");
		RequestDispatcher dispatch= request.getRequestDispatcher("QuizList.jsp");
		dispatch.forward(request,response);
		
	}

}

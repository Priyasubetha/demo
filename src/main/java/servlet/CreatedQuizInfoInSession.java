package servlet;

import java.io.*;
import javax.servlet.*;

import javax.servlet.http.*;

public class CreatedQuizInfoInSession extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session=request.getSession();
		String quizNumber,quizCategory,numberOfQuestions,quizTestTimeLimit,quizName;
		quizName = request.getParameter("quizName");
		
		session.setAttribute("quizNameSession", quizName);
		
		quizNumber = request.getParameter("quizNumber");
		session.setAttribute("quizNumberSession", quizNumber);
		
		quizCategory = request.getParameter("quizCategory");
		session.setAttribute("quizCategorySession", quizCategory);
		
		numberOfQuestions = request.getParameter("numberOfQuestions");
		session.setAttribute("numberOfQuestionsSession", numberOfQuestions);
		
		quizTestTimeLimit = request.getParameter("quizTestTimeLimit");
		session.setAttribute("quizTestTimeLimitSession", quizTestTimeLimit);

		RequestDispatcher dispatch= request.getRequestDispatcher("/QuestionAnswerSession");
		dispatch.include(request,response);

		
	}
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}
}

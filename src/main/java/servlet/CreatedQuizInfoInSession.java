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
		PrintWriter out=response.getWriter();
////		String n=(String)session.getAttribute("numberOfQuestionsSession");
////		System.out.println(n+"  hii" + session.getAttribute("numberOfQuestionsSession"));
////		out.print(n+" "+(String)session.getAttribute("numberOfQuestionsSession"));
		out.println("im ist page");
//		out.flush();
		RequestDispatcher dispatch= request.getRequestDispatcher("/QuestionAnswerSession");
		dispatch.forward(request,response);
		
	}
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		PrintWriter out=response.getWriter();
//		out.println("eee");
//		out.flush();
//	}
}

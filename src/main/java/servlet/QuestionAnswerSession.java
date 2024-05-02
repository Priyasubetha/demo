package servlet;

import java.awt.Button;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;
public class QuestionAnswerSession extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int totalNumberOfQuestions,i=1;		// i - represents iteration of total number of questions. 
		HttpSession session=request.getSession();
		String totalQuestions = (String)session.getAttribute("numberOfQuestions");
		PrintWriter out=response.getWriter();
		if(totalQuestions!=null)
			if(totalQuestions.matches("\\d+")){
				totalNumberOfQuestions = Integer.parseInt(totalQuestions);
				
				if(totalNumberOfQuestions>0) {	
					request.setAttribute("questionNumber", i);
					doPost(request,response);
					while(i<=totalNumberOfQuestions) {
						
						
//						if previous<-- button clicked then do backtracking . if next--> button clicked do forward iteration.
						
						String previousButtonClick,nextButtonClick;
						previousButtonClick=request.getParameter("previousButton");
						nextButtonClick=request.getParameter("nextButton");
						if(previousButtonClick!=null) {
							
							Button button=(Button)request.getAttribute("btnPrevious");
							if(i==1) {
								button.setEnabled(false);
								//	previous button disabled
							
								request.setAttribute("questionNumber", i);
								doPost(request,response);
							}
								
							else {
								button.setEnabled(true);
//								redirect previous page code---
								request.setAttribute("questionNumber", i);
								doPost(request,response); // here we will handles the session and it will redirect to JSP page design
							}
							i--;	
						}
						if(nextButtonClick!=null) {
							
							Button button=(Button)request.getAttribute("btnNext");
							if(i==15)	{
								button.setEnabled(false);
//								next button disabled
								request.setAttribute("questionNumber", i);
								doPost(request,response);
								
							}

							else {
								button.setEnabled(true);
//								redirect next page code---
								request.setAttribute("questionNumber", i);
								doPost(request,response); // here we will handles the session and it will redirect to JSP page design
							}
							i++;
						}
						
//						-- while end---		
					}
				}
				out.print("ERROR PAGE!!");
			}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		previousButtonClick(numberOfQuestions);
//		nextButtonClick(numberOfQuestions);
		submitRedirect(request,response);
		}
		

	protected void submitRedirect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatch= request.getRequestDispatcher("QuestionsAdd.jsp");
		dispatch.forward(request,response);
	}
	protected void loopQuestionAddPage(int totalNumberOfQuestions,HttpServletRequest request,HttpServletResponse response) {
		
	}
}

package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex08")
public class Ex08 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// MVC 할때는 Model 에서 한다. 
		// 파라미터 값 받기
		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		
		int su1 = Integer.parseInt(kor);
		int su2 = Integer.parseInt(eng);
		int su3 = Integer.parseInt(math);
		int sum = su1 + su2 + su3 ;
		/* int avg = (su1 + su2 + su3)/3 ; */
		double avg1= (int)(sum/3.0*10)/10.0;
		String hak = "";
		
		if (avg1 >= 90) {
			hak = "A";
		}else if (avg1 >= 80) {
			hak = "B";
		}else if (avg1 >= 70) {
			hak = "C";
		}else {
			hak = "F";
		}
		
		out.print("<h3>");
		out.print(name + "님");
		out.print("<p> 합계 : " + sum + "입니다.");
		out.print("<p> 평균 : " + avg1 + "입니다.");
		out.print("<p> 학점 : " + hak + "입니다.");
		out.print("</h3>");
		
	
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

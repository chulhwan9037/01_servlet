package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex08_1")
public class Ex08_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
	
		String uName = request.getParameter("uName");
		String s1 = request.getParameter("s1");
		String s2 = request.getParameter("s2");
		String s3 = request.getParameter("s3");
		
		int su1 = Integer.parseInt(s1);
		int su2 = Integer.parseInt(s2);
		int su3 = Integer.parseInt(s3);
		int sum = su1 + su2 + su3 ;
		/* int avg = (su1 + su2 + su3)/3 ; */
		double avg= (int)(sum/3.0*10)/10.0;
		String hak = "";
		
		if (avg >= 90) {
			hak = "A";
		}else if (avg >= 80) {
			hak = "B";
		}else if (avg >= 70) {
			hak = "C";
		}else {
			hak = "F";
		}
		
		out.print("<h3>");
		out.print(uName + "님");
		out.print("<p> 합계 : " + sum + "입니다.");
		out.print("<p> 평균 : " + avg + "입니다.");
		out.print("<p> 학점 : " + hak + "입니다.");
		out.print("</h3>");
		
	
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

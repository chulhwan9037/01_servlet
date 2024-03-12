package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex07")
public class Ex07 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
	
		String s1 = request.getParameter("s1");
		String s2 = request.getParameter("s2");
		String op = request.getParameter("op");
		
		int su1 = Integer.parseInt(s1);
		int su2 = Integer.parseInt(s2);
		int result = 0 ;
		
		switch (op) {
		case "+" : result = su1 + su2; break;
		case "-" : result = su1 - su2; break;
		case "*" : result = su1 * su2; break;
		case "/" : 
			if(su2 == 0) {
				out.print("0으로는 나눌수 없습니다.");
			}else {
				result = su1 / su2; 
				out.print("<h3>");
				out.print("<p> 결과 : " + su1 + op + su2 + " = " + result + "입니다.");
				out.print("</h3>");
			}
		}
		if ( ! op.equalsIgnoreCase("/")) {
			out.print("<h3>");
			out.print("<p> 결과 : " + su1 + op + su2 + " = " + result + "입니다.");
			out.print("</h3>");
		}
		
	
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

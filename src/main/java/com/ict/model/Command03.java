package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command03 implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 실제 일처리 
		String s1 = request.getParameter("s1");
		//int su1 = Integer.parseInt(request.getParameter("s1"));
		String s2 = request.getParameter("s2");
		//int su2 = Integer.parseInt(request.getParameter("s2"));
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
			}else {
				result = su1 / su2; 
			}
		}
		if ( ! op.equalsIgnoreCase("/")) {
		
		}
		
		request.setAttribute("result", result);
		// return "결과를 보여줄 jsp 파일 위치" 를 가지고 되돌아간다. 
		return "view/ex13_res03.jsp";
	}

}

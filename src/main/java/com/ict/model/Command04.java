package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command04 implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 일처리
		String uName = request.getParameter("uName");
		String s1 = request.getParameter("s1");
		/* int su1 = Integer.parseInt(request.getParameter("s1")); */
		String s2 = request.getParameter("s2");
		String s3 = request.getParameter("s3");
		
		int su1 = Integer.parseInt(s1);
		int su2 = Integer.parseInt(s2);
		int su3 = Integer.parseInt(s3);
		int sum = su1 + su2 + su3 ;
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
		
		request.setAttribute("name", uName);
		request.setAttribute("res", sum);
		request.setAttribute("res1", avg);
		request.setAttribute("res2", hak);
		
		
		return "view/ex14_res.jsp";
	}

}

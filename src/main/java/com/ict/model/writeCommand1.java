package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class writeCommand1 implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "guestbook/write.jsp";
	}

}

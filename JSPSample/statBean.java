package com.mlb.stats;

import javax.servlet.*;
import javax.servlet.http.*;

public class statBean {
    public String processRequest(HttpServletRequest req, 
				 HttpServletResponse resp) {

	String player = (String) req.getParameter("player");
	if ((player == null) || (player.length() == 0)) {
	    return("No Player Requested");
	} else {
	    if (player.equals("Nomar Garciapara")) {
		return("Nomar is batting .932");
	    } else {
		return(player + " is batting .234");
	    }
	}
    }
}

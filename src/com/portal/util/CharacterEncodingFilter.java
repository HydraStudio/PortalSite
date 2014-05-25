package com.portal.util;


import java.io.IOException; 

import javax.servlet.Filter; 

import javax.servlet.FilterChain; 

import javax.servlet.FilterConfig; 

import javax.servlet.ServletException; 

import javax.servlet.ServletRequest; 
import javax.servlet.ServletResponse; 

public class CharacterEncodingFilter implements Filter { 
	private FilterConfig config; 
	private String encoding = "UTF-8"; 

    public void destroy() { 
    	config = null; 
	 } 

 	@Override 
 	public void doFilter(ServletRequest request, ServletResponse response, 
 			FilterChain chain) throws IOException,ServletException {
 		
 		request.setCharacterEncoding(encoding);
 		response.setContentType("text/html;charset="+encoding);
 		chain.doFilter(request, response); 
 	}	 

 	public void init(FilterConfig config) throws ServletException { 
 		this.config = config; 
	    String s = config.getInitParameter("encoding"); 
	    if (s != null) { 
	    	encoding = s; 
	    } 
 	} 
} 

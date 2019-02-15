package com.StudyDamoyeo.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;
@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		List<String> roleNames = new ArrayList<String>();
		authentication.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/admin");
			return;
		}
		if(roleNames.contains("ROLE_USER")) {
			response.sendRedirect("/user/mainUser");
			return;
		}
		if(roleNames.contains("ROLE_COM")) {
			response.sendRedirect("/com/mainCom");
			return;
		}
	}
	
}

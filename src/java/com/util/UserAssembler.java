package com.util;

import com.model.User;
import javax.servlet.http.HttpServletRequest;

public class UserAssembler {
    
    public static User assembleUser(HttpServletRequest request) {
        User user = new User();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        
        return user;
    }
}

package com.servlet;

import com.model.User;
import com.service.Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

    private Service service = new Service();
    String pinFromUser = "1234";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        //Logger logger= Logger.getLogger("MyLogger");
        try{ 
            String action = request.getParameter("action");
            String url = "register.jsp";
            
            if("register".equals(action)) {
                String pin = request.getParameter("pin");
                   User user = service.assembleUserFromRequest(request);
                   service.insertUserfromService(user);
                   //logger.log(Level.INFO,"Usuario registrado");
                   if((!pinFromUser.equals(pin)) || (pin.equals(""))) {
                       url = "indexC.jsp";
                   }else {
                       url = "indexSA.jsp";
                   }
            }else {
                
            } 
            response.sendRedirect(url);
        }finally {
            out.close();
        }
    }
    
    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

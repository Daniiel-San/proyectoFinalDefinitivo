package com.servlet;

import com.service.Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

    private Service service = new Service();
    String pinFromUser = "1234";
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        //Logger logger= Logger.getLogger("MyLogger");
        
        try{
            String action= request.getParameter("action");
            String url="error.jsp";
                
            if("login".equals(action)){
                String username=request.getParameter("username");
                String password = request.getParameter("password");
                String pin = request.getParameter("pin");
                //logger.log(Level.INFO,"el valor de user es : "+username);
                if(service.checkUserfromService(username, password)){
                    if(pinFromUser.equals(pin)) { 
                        url="indexSA.jsp";
                        request.getSession().setAttribute("login", username);
                        //logger.log(Level.INFO,"funciona login");
                    }else if((!pinFromUser.equals(pin)) || (pin.equals(""))) {
                        url="indexC.jsp";
                        request.getSession().setAttribute("login", username);
                        //logger.log(Level.INFO,"pin incorrecto");
                    }
                }else{
                    url="error.jsp";
                    //logger.log(Level.INFO,"NO funciona login");
                }
                response.sendRedirect(url);
                }
                
            } catch (InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
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

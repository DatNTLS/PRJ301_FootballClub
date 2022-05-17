/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAO;
import email.Email;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "ChangeAccountControl", urlPatterns = {"/changeAccount"})
public class ChangeAccountControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        DAO dao = new DAO();
        ArrayList<Account> listAccount = dao.getAllAccounts();
        boolean check = false;
        for (Account a : listAccount) {
            if (email.equals(a.getEmail())) {
                check = true;
            }
        }
        if (check == false || email.equals(account.getEmail())) {
            dao.updateProfile(account.getUserId(), email, name);
            Account accountS = dao.loginAccount(email, account.getPassword());
            session.setAttribute("account", accountS);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else {
            String alert = "<div class=\"alert\">\n"
                    + "                            <span class=\"closebtn\" onclick=\"this.parentElement.style.display = 'none';\">&times;</span> \n"
                    + "                            <strong>Alert !</strong> Email already in use.\n"
                    + "                        </div>";
            request.setAttribute("alert", alert);
            request.getRequestDispatcher("ChangeAccount.jsp").forward(request, response);
        }
        

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

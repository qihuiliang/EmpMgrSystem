package com.cheer.empmgrsystem.web.servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "logoutServlet", urlPatterns =
{"/servlet/logoutServlet"})
public class LogoutServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    public LogoutServlet()
    {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException,
        IOException
    {
        // 防止创建session
        HttpSession session = request.getSession(false);
        if (session == null)
        {
            response.sendRedirect("hello.jsp");
            return;
        }
        session.removeAttribute("hello");
        response.sendRedirect("hello");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException,
        IOException
    {

        doGet(request, response);
    }

}

package com.cheer.empmgrsystem.web.filter;


import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.cheer.empmgrsystem.web.servlet.LoginServlet;


// @WebFilter(filterName = "firstFilter", urlPatterns = { "/servlet/*" })
public class FirstFilter implements Filter
{

    private static final Logger LOGGER = LogManager.getLogger(LoginServlet.class);

    public FirstFilter()
    {
        LOGGER.info("FirstFilter() is invoked...");
    }

    @Override
    public void destroy()
    {
        LOGGER.info("destory() is invoked...");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException,
        ServletException
    {

        LOGGER.info("Servlet响应前的处理，请求url为：{}", ((HttpServletRequest)request).getRequestURL());

        chain.doFilter(request, response);

        LOGGER.info("Servlet响应后的处理");
    }

    // 服务启动就被处理
    @Override
    public void init(FilterConfig fConfig)
        throws ServletException
    {

    }

}

/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
package Servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "UserFilter",urlPatterns = "*.jsp")
public class UserFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest httpRequest=(HttpServletRequest)req;
        HttpServletResponse httpResponse=(HttpServletResponse)resp;
        HttpSession session=httpRequest.getSession();
        String url = ((HttpServletRequest) req).getRequestURI().substring(((HttpServletRequest) req).getContextPath().length());
        if(session.getAttribute("UserID")!=null){
            if(url.contains("Login.jsp")|url.contains("Register.jsp")){
                httpResponse.sendRedirect(((HttpServletRequest) req).getContextPath()+"/index.jsp");
            }else{
                chain.doFilter(req, resp);
            }
        }else{
            if(url.contains("index.jsp")|url.contains("Register.jsp")|url.contains("Login.jsp")){
                chain.doFilter(req, resp);
            }else{
                httpResponse.sendRedirect(((HttpServletRequest) req).getContextPath()+"/index.jsp");
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}

package tr.obm.pokemon.webapp.configuration;

import org.springframework.beans.factory.config.CustomScopeConfigurer;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import tr.obm.pokemon.webapp.util.ViewScope;

import javax.faces.webapp.FacesServlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import java.util.HashMap;
import java.util.Map;

@Configuration
public class FacesInitializer implements ServletContextInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        System.err.println("------------------------------------");
        servletContext.setInitParameter("com.sun.faces.forceLoadConfiguration", "true");
        servletContext.setInitParameter("primefaces.CLIENT_SIDE_VALIDATION", "true");
        servletContext.setInitParameter("primefaces.THEME", "freya-#{guestPreferences.componentTheme}-#{guestPreferences.darkMode}");
        servletContext.setInitParameter("primefaces.FONT_AWESOME", "true");
        servletContext.setInitParameter("javax.faces.FACELETS_LIBRARIES", "/WEB-INF/primefaces-freya.taglib.xml");
        servletContext.setInitParameter("javax.faces.DATETIMECONVERTER_DEFAULT_TIMEZONE_IS_SYSTEM_TIMEZONE", "true");
        servletContext.setInitParameter("javax.faces.VALIDATE_EMPTY_FIELDS", "true");
        servletContext.setInitParameter("javax.faces.FACELETS_BUFFER_SIZE", "65535"); //for the redirection after exception
    }

    @Bean
    public ServletRegistrationBean servletRegistrationBean() {
        FacesServlet facesServlet = new FacesServlet();
        ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean(facesServlet, "*.xhtml");
        return servletRegistrationBean;
    }

    @Bean
    public static CustomScopeConfigurer viewScope() {
        CustomScopeConfigurer configurer = new CustomScopeConfigurer();
        Map<String, Object> viewScope = new HashMap<String, Object>();
        viewScope.put("view", new ViewScope());
        configurer.setScopes(viewScope);
        return configurer;
    }
}

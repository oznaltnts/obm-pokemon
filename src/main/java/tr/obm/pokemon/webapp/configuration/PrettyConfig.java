package tr.obm.pokemon.webapp.configuration;


import com.ocpsoft.pretty.PrettyFilter;
import com.ocpsoft.pretty.faces.annotation.URLMapping;
import com.ocpsoft.pretty.faces.annotation.URLMappings;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.DispatcherType;

@Configuration
@URLMappings(mappings = {
        @URLMapping(id = "init", pattern = "/", viewId = "landing.xhtml"),
        @URLMapping(id = "dashboard", pattern = "/dashboard", viewId = "dashboard.xhtml")
})

public class PrettyConfig {

    @Bean
    public FilterRegistrationBean prettyFilter() {
        FilterRegistrationBean rewriteFilter = new FilterRegistrationBean(new PrettyFilter());

        rewriteFilter.setDispatcherTypes(DispatcherType.FORWARD,
                DispatcherType.REQUEST,
                DispatcherType.ASYNC,
                DispatcherType.ERROR);

        rewriteFilter.addUrlPatterns("/*");

        return rewriteFilter;
    }
}

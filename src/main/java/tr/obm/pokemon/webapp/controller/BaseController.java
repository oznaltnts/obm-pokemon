package tr.obm.pokemon.webapp.controller;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import tr.obm.pokemon.service.util.context.SpringContextAccessor;
import tr.obm.pokemon.webapp.util.JSFUtils;

import javax.faces.context.FacesContext;
import java.io.Serializable;

@Component("baseController")
@Scope("view")
public class BaseController implements Serializable {

    private static final long serialVersionUID = 1777L;

    protected String getRequestParameter(String key) {
        return FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get(key);
    }

    public String getLocale() {
        return SpringContextAccessor.getBean(LocaleController.class).getLanguage();
    }

    public void setLocale(String selectedLocale) {
        SpringContextAccessor.getBean(LocaleController.class).setLanguage(selectedLocale);
    }

    public String getLocaleMessage(String key) {
        return JSFUtils.getLocaleMessage(key);
    }


    public String getPomVersion() {
        return getClass().getPackage().getImplementationVersion();
    }

}

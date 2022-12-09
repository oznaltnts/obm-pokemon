package tr.obm.pokemon.webapp.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import tr.obm.pokemon.service.util.context.SpringContextAccessor;
import tr.obm.pokemon.webapp.controller.LocaleController;
import tr.obm.pokemon.webapp.controller.NavigationController;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ResourceBundle;

@Component
public class JSFUtils {

    @Autowired
    private NavigationController navigationController;

    public static String getLocaleMessage(String key) {
        LocaleController localeController = SpringContextAccessor.getBean(LocaleController.class);
        return ResourceBundle.getBundle("messages", localeController.getLocale()).getString(key);
    }

    public static void addInfoMsg(String msg, String component) {
        addMsg(msg, FacesMessage.SEVERITY_INFO, component);
    }

    public static void addErrorMsg(String msg, String component) {
        addMsg(msg, FacesMessage.SEVERITY_ERROR, component);
    }

    public static void addWarnMsg(String msg, String component) {
        addMsg(msg, FacesMessage.SEVERITY_WARN, component);
    }

    private static void addMsg(String msg, FacesMessage.Severity severity, String component) {
        FacesContext.getCurrentInstance().addMessage(component, new FacesMessage(severity, msg, ""));
    }

    public static void putSessionMapParam(String key, Object value) {
        FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put(key, value);
    }

    public static void removeSessionMapParam(String key) {
        FacesContext.getCurrentInstance().getExternalContext().getSessionMap().remove(key);
    }

    public static Object getSessionMapParam(String key) {
        return FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get(key);
    }

    public static List<String> splitMultipleSelectionQuestionAnswers(String answerAsList) {
        if (answerAsList == null)
            return new ArrayList<>();
        else {
            String replace = answerAsList.replace("[", "");
            String replace1 = replace.replace("]", "");
            if (replace1.isEmpty())
                return new ArrayList<>();
            else
                return new ArrayList<>(Arrays.asList(replace1.split(", ")));
        }
    }
}

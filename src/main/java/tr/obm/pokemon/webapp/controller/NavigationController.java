package tr.obm.pokemon.webapp.controller;

import org.springframework.stereotype.Component;

import javax.faces.context.FacesContext;
import java.io.IOException;

@Component("navigationController")
public class NavigationController extends BaseController {

    public void logout() throws IOException {
        FacesContext.getCurrentInstance().getExternalContext().redirect("/logout");
    }

    public void redirectToError() throws IOException {
        FacesContext.getCurrentInstance().getExternalContext().redirect("/error.xhtml");
    }

    public void redirectToUrl(String url) throws IOException {
        FacesContext.getCurrentInstance().getExternalContext().redirect(url);
    }

    public void redirectToDashboard() throws IOException {
        FacesContext.getCurrentInstance().getExternalContext().redirect("/dashboard.xhtml");
    }

    public void backToPendingRequests() throws Exception {
        FacesContext.getCurrentInstance().getExternalContext().redirect("/approval/pending-dashboard.xhtml");
    }

}

package tr.obm.pokemon.webapp.util;

import org.springframework.core.env.Environment;
import tr.obm.pokemon.service.util.context.SpringContextAccessor;
import tr.obm.pokemon.webapp.controller.NavigationController;

import javax.faces.FacesException;
import javax.faces.context.ExceptionHandler;
import javax.faces.context.ExceptionHandlerWrapper;
import javax.faces.context.FacesContext;
import javax.faces.event.ExceptionQueuedEvent;
import javax.faces.event.ExceptionQueuedEventContext;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;

public class CustomExceptionHandler extends ExceptionHandlerWrapper {
    private final ExceptionHandler wrapped;

    Environment env = SpringContextAccessor.getBean(Environment.class);
    NavigationController navigationController = SpringContextAccessor.getBean(NavigationController.class);
    //MailService mailService = SpringContextAccessor.getBean(MailService.class);

    CustomExceptionHandler(ExceptionHandler exception) {
        wrapped = exception;
    }

    @Override
    public ExceptionHandler getWrapped() {
        return wrapped;
    }

    @Override
    public void handle() throws FacesException {

        final Iterator<ExceptionQueuedEvent> i = getUnhandledExceptionQueuedEvents().iterator();
        while (i.hasNext()) {

            ExceptionQueuedEvent event = i.next();
            ExceptionQueuedEventContext context = (ExceptionQueuedEventContext) event.getSource();
            Throwable t = context.getException();

            final FacesContext fc = FacesContext.getCurrentInstance();

            try {
                if ("prod".equals(env.getActiveProfiles()[0])) {
                    //mailService.sendExceptionMail(BaseService.getCurrentUser().getUser().getEmail(), t.getMessage(), convertStackTraceToString((Exception) t) ,"PROD");
                } else if ("test".equals(env.getActiveProfiles()[0])) {
                    //mailService.sendExceptionMail(BaseService.getCurrentUser().getUser().getEmail(), t.getMessage(), convertStackTraceToString((Exception) t) ,"TEST");
                }
                navigationController.redirectToError();
                fc.responseComplete();

            } catch (Exception e) {
                //e.printStackTrace();
            } finally {
                i.remove();
            }
        }
        getWrapped().handle();
    }

    private String convertStackTraceToString(Exception e) {
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        e.printStackTrace(pw);
        return sw.toString(); // stack trace as a string
    }
}

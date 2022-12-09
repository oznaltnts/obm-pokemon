package tr.obm.pokemon.webapp.util;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import javax.faces.context.ExceptionHandler;
import javax.faces.context.ExceptionHandlerFactory;

@NoArgsConstructor
@AllArgsConstructor
public class CustomExceptionHandlerFactory extends ExceptionHandlerFactory {

    private ExceptionHandlerFactory exceptionHandlerFactory;

    @Override
    public ExceptionHandler getExceptionHandler() {
        return new CustomExceptionHandler(exceptionHandlerFactory.getExceptionHandler());
    }
}

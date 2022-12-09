package tr.obm.pokemon.webapp.util;

import org.primefaces.PrimeFaces;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import tr.obm.pokemon.webapp.controller.BaseController;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Component("guestPreferences")
@Scope("view")
public class GuestPreferences extends BaseController {
    private String menuMode = "layout-horizontal";

    private String darkMode = "light";

    private String componentTheme = "purple";

    private String topbarTheme = "light";

    private String menuTheme = "light";

    private String inputStyle = "outlined";

    private boolean lightLogo = false;


    private final List<ComponentTheme> componentThemes = new ArrayList<ComponentTheme>();

    @PostConstruct
    public void init() {
        componentThemes.add(new ComponentTheme("Blue", "blue", "#2c84d8"));
        componentThemes.add(new ComponentTheme("Green", "green", "#34B56F"));
        componentThemes.add(new ComponentTheme("Orange", "orange", "#FF810E"));
        componentThemes.add(new ComponentTheme("Turquoise", "turquoise", "#58AED3"));
        componentThemes.add(new ComponentTheme("Avocado", "avocado", "#AEC523"));
        componentThemes.add(new ComponentTheme("Purple", "purple", "#464DF2"));
        componentThemes.add(new ComponentTheme("Red", "red", "#FF9B7B"));
        componentThemes.add(new ComponentTheme("Yellow", "yellow", "#FFB340"));
    }

    public String getDarkMode() {
        return darkMode;
    }

    public boolean isLightLogo() {
        return lightLogo;
    }

    public void setDarkMode(String darkMode) {
        this.darkMode = darkMode;
        this.menuTheme = darkMode;
        this.topbarTheme = darkMode;
        this.lightLogo = !this.topbarTheme.equals("light");
    }

    public String getLayout() {
        return "layout-" + this.darkMode;
    }

    public String getTheme() {
        return this.componentTheme + '-' + this.darkMode;
    }

    public String getComponentTheme() {
        return componentTheme;
    }

    public void setComponentTheme(String componentTheme) {
        this.componentTheme = componentTheme;

    }

    public String getMenuTheme() {
        return menuTheme;
    }

    public void setMenuTheme(String menuTheme) {
        this.menuTheme = menuTheme;
    }

    public String getTopbarTheme() {
        return topbarTheme;
    }

    public void setTopbarTheme(String topbarTheme) {
        this.topbarTheme = topbarTheme;
        this.lightLogo = !this.topbarTheme.equals("light");
    }

    public String getMenuMode() {
        return this.menuMode;
    }

    public void setMenuMode(String menuMode) {
        this.menuMode = menuMode;
    }

    public String getInputStyle() {
        return inputStyle;
    }

    public void setInputStyle(String inputStyle) {
        this.inputStyle = inputStyle;
    }

    public String getInputStyleClass() {
        return this.inputStyle.equals("filled") ? "ui-input-filled" : "";
    }

    public List<ComponentTheme> getComponentThemes() {
        return componentThemes;
    }

    public void onMenuTypeChange() {
        if ("layout-horizontal".equals(menuMode)) {
            menuTheme = topbarTheme;
            PrimeFaces.current().executeScript("PrimeFaces.FreyaConfigurator.changeSectionTheme('" + menuTheme + "' , 'layout-menu')");
        }
    }

    public class ComponentTheme {
        String name;
        String file;
        String color;

        public ComponentTheme(String name, String file, String color) {
            this.name = name;
            this.file = file;
            this.color = color;
        }

        public String getName() {
            return this.name;
        }

        public String getFile() {
            return this.file;
        }

        public String getColor() {
            return this.color;
        }
    }
}

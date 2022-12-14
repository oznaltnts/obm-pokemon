package tr.obm.pokemon.service.domain;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;


@Getter
@Setter
@Entity
@Table(name = "sys_user_preference")
@EntityListeners(AuditingEntityListener.class)
@NoArgsConstructor
@AllArgsConstructor
public class UserPreference extends AbstractEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "sys_user_id", nullable = false)
    private User user;

    @Column(name = "menu_mode", nullable = false)
    private String menuMode;

    @Column(name = "dark_mode", nullable = false)
    private String darkMode;

    @Column(name = "component_theme", nullable = false)
    private String componentTheme;

    @Column(name = "topbar_theme", nullable = false)
    private String topbarTheme;

    @Column(name = "menu_theme", nullable = false)
    private String menuTheme;

    public UserPreference(User user, String menuMode, String darkMode, String componentTheme, String topbarTheme, String menuTheme) {
        this.user = user;
        this.menuMode = menuMode;
        this.darkMode = darkMode;
        this.componentTheme = componentTheme;
        this.topbarTheme = topbarTheme;
        this.menuTheme = menuTheme;
    }

    public static UserPreference createWithTemplateData(User user) {
        return new UserPreference(user, "layout-horizontal", "light", "purple", "light", "light");
    }
}

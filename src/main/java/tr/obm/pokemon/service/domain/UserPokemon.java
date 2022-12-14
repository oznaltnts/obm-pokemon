package tr.obm.pokemon.service.domain;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;


@Getter
@Setter
@Entity
@Table(name = "sys_user_ref_pokemon")
@EntityListeners(AuditingEntityListener.class)
@NoArgsConstructor
@AllArgsConstructor
public class UserPokemon extends AbstractEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "sys_user_ref_family_id", referencedColumnName = "id", nullable = false)
    private UserFamily userFamily;

    @Column(name = "weight", nullable = false)
    private Double weight;

    @Column(name = "height", nullable = false)
    private Double height;

    @Column(name = "iv_attack", nullable = false)
    private Integer ivAttack;

    @Column(name = "iv_defense", nullable = false)
    private Integer ivDefense;

    @Column(name = "iv_stamina", nullable = false)
    private Integer ivStamina;
}

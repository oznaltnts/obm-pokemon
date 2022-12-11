package tr.obm.pokemon.service.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "ref_type")
public class Type implements Serializable {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "enum_type", nullable = false)
    @Enumerated(EnumType.STRING)
    private tr.obm.pokemon.service.enumtype.EnumType typeName;

    @Column(name = "bug", nullable = false)
    private Integer bug;

    @Column(name = "dark", nullable = false)
    private Integer dark;

    @Column(name = "dragon", nullable = false)
    private Integer dragon;

    @Column(name = "electric", nullable = false)
    private Integer electric;

    @Column(name = "fairy", nullable = false)
    private Integer fairy;

    @Column(name = "fighting", nullable = false)
    private Integer fighting;

    @Column(name = "fire", nullable = false)
    private Integer fire;

    @Column(name = "flying", nullable = false)
    private Integer flying;

    @Column(name = "ghost", nullable = false)
    private Integer ghost;

    @Column(name = "grass", nullable = false)
    private Integer grass;

    @Column(name = "ground", nullable = false)
    private Integer ground;

    @Column(name = "ice", nullable = false)
    private Integer ice;

    @Column(name = "normal", nullable = false)
    private Integer normal;

    @Column(name = "poison", nullable = false)
    private Integer poison;

    @Column(name = "psychic", nullable = false)
    private Integer psychic;

    @Column(name = "rock", nullable = false)
    private Integer rock;

    @Column(name = "steel", nullable = false)
    private Integer steel;

    @Column(name = "water", nullable = false)
    private Integer water;
}

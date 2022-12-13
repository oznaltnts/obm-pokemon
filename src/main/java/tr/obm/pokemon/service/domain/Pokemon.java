package tr.obm.pokemon.service.domain;

import lombok.Getter;
import lombok.Setter;
import tr.obm.pokemon.service.enumtype.EnumGeneration;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "ref_pokemon")
public class Pokemon extends AbstractEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "pokedex", nullable = false)
    private Integer pokedex;

    @Column(name = "name", nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(name = "ref_family_id", referencedColumnName = "id")
    private Family family;

    @ManyToOne
    @JoinColumn(name = "primary_type_id", referencedColumnName = "id", nullable = false)
    private Type primaryType;

    @ManyToOne
    @JoinColumn(name = "secondary_type_id", referencedColumnName = "id")
    private Type secondaryType;

    @Column(name = "attack", nullable = false)
    private Integer attack;

    @Column(name = "defense", nullable = false)
    private Integer defense;

    @Column(name = "stamina", nullable = false)
    private Integer stamina;

    @Column(name = "generation", nullable = false)
    @Enumerated(EnumType.STRING)
    private EnumGeneration generation;

    @Column(name = "charge_move_stardust", nullable = false)
    private Integer chargeMoveStardust;

    @Column(name = "charge_move_candy", nullable = false)
    private Integer chargeMoveCandy;

    @OneToMany(mappedBy = "moveFast", fetch = FetchType.LAZY)
    private List<PokemonMoveFast> fastList;

    @OneToMany(mappedBy = "moveCharge", fetch = FetchType.LAZY)
    private List<PokemonMoveCharge> chargeList;

    @OneToMany(mappedBy = "evolution", fetch = FetchType.LAZY)
    private List<PokemonEvolution> evolutionList;

}
